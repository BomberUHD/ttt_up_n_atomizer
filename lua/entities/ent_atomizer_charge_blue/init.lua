-- By Jackarunda - modified by Bomber (only blue works for TTT)
-- This file should be located at: lua/entities/ent_atomizer_charge_blue/init.lua

AddCSLuaFile('cl_init.lua')
AddCSLuaFile('shared.lua')
include('shared.lua')

-- Sound for the explosion effect.
sound.Add( {
    name = "energyboom",
    channel = CHAN_STATIC,
    volume = 1.0, -- Volume is usually 0-1, 10.0 is extremely loud. Adjusted to 1.0
    level = 100,
    pitch = { 100 },
    sound = "up_n_atomizer/energy_blast.wav"
} )


function ENT:Initialize()
    -- Set how long the projectile will live before disappearing. Increased to 5 seconds.
    self.DieTime = CurTime() + 5
    self.DirectHitPlayer = nil -- Keep track of a player hit directly

    self.Entity:SetModel("models/krazy/gtav/missiles/upnatomizer_charge_w.mdl")
    
    -- *** MODEL ROTATION FIX ***
    -- Get the initial angle set by the weapon and apply an offset to correct the model.
    -- This makes the model point forward during flight.
    local currentAng = self:GetAngles()
    currentAng.y = currentAng.y + 90 -- Add 90 degrees to the Yaw (left/right axis)
    self:SetAngles(currentAng)

    self.Entity:PhysicsInit(SOLID_VPHYSICS)
    self.Entity:SetMoveType(MOVETYPE_VPHYSICS)   
    self.Entity:SetSolid(SOLID_VPHYSICS)
    
    -- This makes it not collide with the player who fired it for a short time.
    self.Entity:SetCollisionGroup(COLLISION_GROUP_PASSABLE_DOOR)
    timer.Simple(0.2, function() 
        if IsValid(self) then
            self.Entity:SetCollisionGroup(COLLISION_GROUP_NONE) 
        end
    end)

    local phys = self.Entity:GetPhysicsObject()
    if phys:IsValid() then
        phys:Wake()
        phys:SetMass(1)
        phys:EnableGravity(false)
        phys:EnableDrag(false)
    end

    self.Exploded = false
end

-- Called when the projectile hits something.
function ENT:PhysicsCollide(data, physobj)
    if self.Exploded then return end

    -- If we hit a player directly, mark them for the Detonate function.
    if IsValid(data.HitEntity) and data.HitEntity:IsPlayer() then
        self.DirectHitPlayer = data.HitEntity
    end

    -- Detonate if we hit anything with enough force.
    if (data.Speed > 80) and (data.DeltaTime > 0.2) then
        self:Detonate()
    end
end

function ENT:OnTakeDamage(dmginfo)
    -- Explode if shot.
    self:Detonate()
end

function ENT:Think()
    if self.Exploded then return end

    -- If the projectile has existed for too long, detonate it.
    if self.DieTime < CurTime() then
        self:Detonate()
        return
    end

    self:NextThink(CurTime())
    return true
end

function ENT:Detonate()
    if self.Exploded then return end
    self.Exploded = true

    local pos = self:GetPos()
    local owner = self:GetOwner()
    if not IsValid(self) then return end

    -- Explosion Effects
    util.ScreenShake(pos, 5, 150, 1, 750)
    
    local boomEffect = EffectData()
    boomEffect:SetOrigin(pos)
    boomEffect:SetScale(2)
    
    util.Effect("cball_explode", boomEffect)

    -- Play the explosion sound.
    self.Entity:EmitSound("energyboom")

    -- *** GTA V KNOCKBACK & CUSTOM DAMAGE EFFECT ***
    -- Find all players and NPCs in a radius and launch them.
    local radius = 250
    local force = 750
    for _, ent in ipairs(ents.FindInSphere(pos, radius)) do
        if ent:IsPlayer() then
            -- Apply knockback to all players in the radius
            local dir = (ent:GetPos() - pos):GetNormal()
            dir.z = dir.z + 0.75
            dir:Normalize()
            ent:SetVelocity(ent:GetVelocity() + dir * force)

            local dmgInfo = DamageInfo()
            dmgInfo:SetAttacker(owner)
            dmgInfo:SetInflictor(self)
            dmgInfo:SetDamageType(DMG_BLAST)
            dmgInfo:SetDamagePosition(pos)

            -- Check if this is the player who was directly hit
            if ent == self.DirectHitPlayer then
                -- Apply 30 direct hit damage
                dmgInfo:SetDamage(30)
            else
                -- Apply 5 splash damage to other players in the radius
                dmgInfo:SetDamage(5)
            end
            ent:TakeDamageInfo(dmgInfo)

        elseif ent:IsNPC() then
            -- Apply knockback to NPCs (no damage)
            local dir = (ent:GetPos() - pos):GetNormal()
            dir.z = dir.z + 0.75
            dir:Normalize()
            ent:SetVelocity(ent:GetVelocity() + dir * force)
        end
    end

    -- Remove the projectile entity.
    self:Remove()
end
