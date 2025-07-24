AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "init.lua" )

ENT.Type 			= "anim"

ENT.PrintName		= "40mm Shell"
ENT.Author			= ""
ENT.Contact			= ""

function ENT:OnRemove()
end

function ENT:PhysicsUpdate()
end

function ENT:PhysicsCollide(data,phys)
	if data.Speed < 75 then
		self.Entity:EmitSound(Sound("Grenade.hit"))
	end
	
	local impulse = -data.Speed * data.HitNormal * .4 + (data.OurOldVelocity * -.6)
	phys:ApplyForceCenter(impulse)
end
