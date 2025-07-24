AddCSLuaFile()
ENT.Type = "anim"

ENT.Author			= ""
ENT.Contact			= ""
ENT.PrintName		= "Flare Countermeasure"
ENT.Purpose			= ""
ENT.Instructions			= ""
ENT.Spawnable = false
ENT.AdminSpawnable = false
ENT.Model = "models/krazy/gtav/magazines/flareshell.mdl"
ENT.DeployDelay = 25

function ENT:Initialize()

	self:SetModel( self.Model)
	self:PhysicsInit( SOLID_VPHYSICS )
	self:SetMoveType( MOVETYPE_VPHYSICS )	
	self:SetSolid( SOLID_VPHYSICS )
	self.Owner = self.Owner or self:GetOwner()
	if IsValid(self.Owner) then
		self:SetOwner(self.Owner)
	end
	
	-- if( CLIENT ) then 
		
		-- self:CreateParticleEffect("microplane_explosion", 0 )
	
	-- end 
	self:Fire("Kill","",20 )
	
end

function ENT:Think()
	for k, v in pairs ( ents.FindInSphere( self.Entity:GetPos(), 40 ) ) do	
		if v:IsPlayer() || v:IsNPC() || v:IsVehicle()then
		local trace = {}						// Make sure there's not a wall in between
		trace.start = self.Entity:GetPos()
		trace.endpos = v:GetPos()			// Trace to the torso
		trace.filter = self.Entity
		local tr = util.TraceLine( trace )				// If the trace hits a living thing then
		if tr.Entity:IsPlayer() || tr.Entity:IsNPC() then v:Ignite(10) end 
		end
	end
	local flare = self:GetPos()
	for k,v in pairs( ents.FindInSphere( self:GetPos(), 4096 ) ) do 
		
		if( IsValid( v ) && IsValid( v.Target ) ) then 
			
			v.Target = self 
			
		end 
		
	end
	self:NextThink( CurTime() + .25 )
	
end

if CLIENT then 
local emitter = ParticleEmitter(Vector(0, 0, 0))
function ENT:Initialize()
	self.lifetime = RealTime()
	self.cooltime = CurTime()
end

function ENT:Draw()
	self:DrawModel()
end

function ENT:Think()
	
	local color = 255 
	local SCALE = .5
	local dlight = DynamicLight( self:EntIndex() )
	if ( dlight ) then

		--local c = Color( 200+math.random(-5,5), 30+math.random(-5,5), 0, 255 )

		dlight.Pos = self:GetPos()
		dlight.r = 255
		dlight.g = 255
		dlight.b = 255
		dlight.Brightness = math.Rand(0.1,2.9)
		dlight.Decay = 0.1
		dlight.Size = 1024*SCALE
		dlight.DieTime = CurTime() + 0.15

	end
	

	local dist = 0
	if (self.lifetime > RealTime()) then
		if (self.cooltime < CurTime()) then
		local smoke = emitter:Add("effects/smoke_a", self:GetPos() + self:GetForward()*-dist)
		smoke:SetVelocity(self:GetForward()*-66)
		smoke:SetDieTime(3)
		smoke:SetStartAlpha(100)
		smoke:SetEndAlpha(0)
		smoke:SetStartSize(40)
		smoke:SetEndSize(50)
		smoke:SetRoll(math.Rand(180,480))
		smoke:SetRollDelta(math.Rand(-4,2))
		smoke:SetGravity( Vector( 0, math.random(1,90), math.random(151,355) ) )
		smoke:SetColor( 0, 102, 0 )
		smoke:SetAirResistance(60)

		local fire = emitter:Add("effects/yellowflare", self:GetPos() + self:GetForward()*-dist)
		fire:SetVelocity(self:GetForward()*-10)
		fire:SetDieTime(math.Rand(.03,.05))
		fire:SetStartAlpha(5)
		fire:SetEndAlpha(200)
		fire:SetStartSize(350)
		fire:SetEndSize(350)
		fire:SetAirResistance(150)
		fire:SetRoll(math.Rand(180,480))
		fire:SetRollDelta(math.Rand(-3,3))
		fire:SetColor(255,255,255)

		self.cooltime = CurTime() + .02
		end
	else
		self.lifetime = RealTime() + 1
	end
	
end

end

function ENT:OnRemove()
end

function ENT:PhysicsUpdate()
end

function ENT:PhysicsCollide()
end