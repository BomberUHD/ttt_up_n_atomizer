AddCSLuaFile()

-- Sound configurations
sound.Add({
    name = "upnatomizer.fire",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 80,
    pitch = {95, 105},
    sound = "up_n_atomizer/fire.wav"
})

sound.Add({
    name = "upnatomizer.charge",
    channel = CHAN_STATIC,
    volume = 1.0,
    level = 75,
    pitch = {98, 102},
    sound = "up_n_atomizer/charge.wav"
})

sound.Add({
    name = "upnatomizer.hum",
    channel = CHAN_STATIC,
    volume = 0.7,
    level = 60,
    pitch = {98, 102},
    sound = "up_n_atomizer/hum_loop.wav"
})

if CLIENT then
    SWEP.PrintName = "Up-n-Atomizer"
    SWEP.Slot = 7
    SWEP.DrawAmmo = true
    SWEP.DrawCrosshair = true
    SWEP.Icon = "vgui/ttt/up_n_atomizer"

    SWEP.EquipMenuData = {
        type = "Weapon",
        desc = "GTA Up-n-Atomizer that launches energy projectiles\nthat send players flying!"
    }
end

SWEP.Base = "weapon_tttbase"
SWEP.HoldType = "pistol"
SWEP.UseHands = true
SWEP.Kind = WEAPON_EQUIP1
SWEP.CanBuy = { ROLE_TRAITOR, ROLE_JACKAL }
SWEP.LimitedStock = true
SWEP.AutoSpawnable = false
SWEP.AllowDrop = true
SWEP.RoleSpecific = true

-- Primary fire settings
SWEP.Primary.Delay = 2.0
SWEP.Primary.Recoil = 4
SWEP.Primary.Cone = 0.025
SWEP.Primary.Damage = 80
SWEP.Primary.ClipSize = 10
SWEP.Primary.DefaultClip = 10
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "UpnAtomizerCharge"
SWEP.Primary.Sound = Sound("upnatomizer.fire")

-- Model settings
SWEP.ViewModel = "models/krazy/gtav/weapons/upnatomizer_v.mdl"
SWEP.WorldModel = "models/krazy/gtav/weapons/upnatomizer_w.mdl"
SWEP.ViewModelFOV = 56

SWEP.IronSightsPos = Vector(-5.665, -2.789, 1.549)
SWEP.IronSightsAng = Vector(-1.826, -0.098, -0.158)

SWEP.MaxCharges = 10
SWEP.Charged = true

function SWEP:Initialize()
    self:SetHoldType(self.HoldType)
    if CLIENT then
        self.HumSound = CreateSound(self, "upnatomizer.hum")
    end
    self:SetClip1(self.MaxCharges)
end

function SWEP:Deploy()
    self:SetHoldType(self.HoldType)
    self.Charged = true
    if CLIENT and IsValid(self:GetOwner()) then
        self.HumSound:Play()
    end
    return true
end

function SWEP:PrimaryAttack()
    if not self:CanPrimaryAttack() or self:Clip1() <= 0 then return end

    self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
    self:EmitSound("upnatomizer.fire")

    self:SetClip1(self:Clip1() - 1)

    if SERVER then
        self:FireShot()
        self.Charged = false
        timer.Simple(2, function()
            if IsValid(self) then
                self.Charged = true
                self:SetClip1(self.MaxCharges)
                if IsValid(self:GetOwner()) then
                    self:GetOwner():EmitSound("upnatomizer.charge")
                end
            end
        end)
    end
end

function SWEP:FireShot()
    if not SERVER then return end

    local owner = self:GetOwner()
    if not IsValid(owner) then return end

    -- To ensure the projectile ALWAYS fires straight, we will use the player's
    -- direct line of sight for both position and direction. This avoids any
    -- rotational errors from the weapon model's muzzle attachment.
    local shootPos = owner:GetShootPos()
    local aimAngle = owner:EyeAngles()

    local ent = ents.Create("ent_atomizer_charge_blue")
    if not IsValid(ent) then
        print("[ERROR] ent_atomizer_charge_blue is missing!")
        return
    end

    ent:SetPos(shootPos)
    ent:SetAngles(aimAngle)
    ent:SetOwner(owner)
    ent:Spawn()
    ent:Activate()
    
    local phys = ent:GetPhysicsObject()
    if IsValid(phys) then
        -- The velocity is calculated from the player's aim angle to ensure it goes straight.
        -- Using SetVelocityInstantaneous for a more reliable immediate effect.
        phys:SetVelocityInstantaneous(aimAngle:Forward() * 1500)
    end
end

function SWEP:Think()
    if CLIENT and IsValid(self:GetOwner()) and self.Charged and self.HumSound then
        if not self.HumSound:IsPlaying() then
            self.HumSound:Play()
        end
    elseif CLIENT and self.HumSound and self.HumSound:IsPlaying() then
        self.HumSound:Stop()
    end
end

function SWEP:Holster()
    if CLIENT and self.HumSound then
        self.HumSound:Stop()
    end
    return true
end

function SWEP:OnRemove()
    if CLIENT and IsValid(self.HumSound) then
        self.HumSound:Stop()
        self.HumSound:Release()
    end
    if SERVER then
        timer.Remove("ChargeWeapon_" .. self:EntIndex())
    end
end

function SWEP:OnDrop()
    if CLIENT and self.HumSound then
        self.HumSound:Stop()
    end
end

function SWEP:WasBought(buyer)
end

if SERVER then
    resource.AddFile("models/krazy/gtav/weapons/upnatomizer_v.mdl")
    resource.AddFile("models/krazy/gtav/weapons/upnatomizer_v.vvd")
    resource.AddFile("models/krazy/gtav/weapons/upnatomizer_v.dx80.vtx")
    resource.AddFile("models/krazy/gtav/weapons/upnatomizer_v.dx90.vtx")
    resource.AddFile("models/krazy/gtav/weapons/upnatomizer_v.sw.vtx")
    resource.AddFile("models/krazy/gtav/weapons/upnatomizer_w.mdl")
    resource.AddFile("models/krazy/gtav/weapons/upnatomizer_w.phy")
    resource.AddFile("models/krazy/gtav/weapons/upnatomizer_w.vvd")
    resource.AddFile("models/krazy/gtav/weapons/upnatomizer_w.dx80.vtx")
    resource.AddFile("models/krazy/gtav/weapons/upnatomizer_w.dx90.vtx")
    resource.AddFile("models/krazy/gtav/weapons/upnatomizer_w.sw.vtx")
    
    -- ADD THESE LINES FOR THE PROJECTILE MODEL:
    resource.AddFile("models/krazy/gtav/missiles/upnatomizer_charge_w.mdl")
    resource.AddFile("models/krazy/gtav/missiles/upnatomizer_charge_w.phy")
    resource.AddFile("models/krazy/gtav/missiles/upnatomizer_charge_w.vvd")
    resource.AddFile("models/krazy/gtav/missiles/upnatomizer_charge_w.dx80.vtx")
    resource.AddFile("models/krazy/gtav/missiles/upnatomizer_charge_w.dx90.vtx")
    resource.AddFile("models/krazy/gtav/missiles/upnatomizer_charge_w.sw.vtx")
end
