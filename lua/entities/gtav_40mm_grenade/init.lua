AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )

include('shared.lua')

function ENT:Initialize()
	self.Entity:SetModel("models/krazy/gtav/weapons/40mmgrenade_w.mdl")
	self.Entity:PhysicsInit( SOLID_VPHYSICS )
	self.Entity:SetMoveType( MOVETYPE_VPHYSICS )
	self.Entity:SetSolid( SOLID_VPHYSICS )
	self.Entity:DrawShadow( false )
	
	local phys = self.Entity:GetPhysicsObject()
	
	if (phys:IsValid()) then
		phys:Wake()
	end
	
end

local exp

function ENT:PhysicsCollide(data, physobj)

	if data.Speed > 75 and data.DeltaTime > 0.3 then
	
			local LastSpeed = data.OurOldVelocity:Length()
			local NewVelocity = physobj:GetVelocity()
			
			local TargetVelocity = NewVelocity + (LastSpeed*0.2)*NewVelocity:GetNormalized()
			physobj:SetVelocity(TargetVelocity)

			self:Explosion()
			self.Entity:Remove()
	end
end

function ENT:HitEffect()
	for k, v in pairs ( ents.FindInSphere( self.Entity:GetPos(), 600 ) ) do
		if v:IsValid() && v:IsPlayer() then
		end	
	end
end

function ENT:Explosion()
	--local effect = EffectData()
	local SelfPos=self:GetPos()
	local Boom=EffectData()
	Boom:SetOrigin(SelfPos)
	Boom:SetScale(1)
	util.BlastDamage(self.Entity,self.GrenadeOwner,SelfPos,275,200)
	self:GTAV_ClientPlayExplSoundSmall()
	--effect:SetMagnitude(20)
	--effect:SetOrigin(self:GetPos())
	util.Effect("effect_gta_explosion", Boom)
end

function ENT:GTAV_ClientPlayExplSoundSmall()
	net.Start("GTAVH_ClientPlayExplSound")
		net.WriteVector(self:GetPos())
	net.Broadcast()
end

function ENT:OnTakeDamage( dmginfo )
end

function ENT:Use( activator, caller, type, value )
end

function ENT:StartTouch( entity )
end

function ENT:EndTouch( entity )
end

function ENT:Touch( entity )
end