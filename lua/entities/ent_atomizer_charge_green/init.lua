--gernaaaayud
-- By Jackarunda - modified by Bomber (only blue works for TTT)
AddCSLuaFile('cl_init.lua')
AddCSLuaFile('shared.lua')
include('shared.lua')
sound.Add( {
	name = "energyboom",
	channel = CHAN_STATIC,
	volume = 10.0,
	level = 100,
	pitch = { 100 },
	sound = "up_n_atomizer/energy_blast.wav"
} )
sound.Add(soundData)

ENT.MotorPower=5000
function ENT:Initialize()
	self.missiletime = CurTime() + 1
	self.Entity:SetModel("models/krazy/gtav/missiles/upnatomizer_charge_w.mdl")
	self.Entity:SetMaterial("models/krazy/GTAV/Weapons/upnatomizer_coil_green")
	self.Entity:PhysicsInit(SOLID_VPHYSICS)
	self.Entity:SetMoveType(MOVETYPE_VPHYSICS)	
	self.Entity:SetSolid(SOLID_VPHYSICS)
	self.Entity:SetCollisionGroup(COLLISION_GROUP_PASSABLE_DOOR)
	self.Entity:SetUseType(SIMPLE_USE)
	local phys = self.Entity:GetPhysicsObject()
	if phys:IsValid() then
		phys:Wake()
		phys:SetMass(1)
		phys:EnableGravity(false)
		phys:EnableDrag(false)
	end
	self:Fire("enableshadow","",0)
	self.Exploded=false
	self.ExplosiveMul=0.5
	self.MotorFired=false
	self.Engaged=false
	self:SetModelScale(1,0)
	self:SetColor(Color(255,255,255))
	util.PrecacheSound("snd_jack_missilemotorfire.wav")
	self.InitialAng=self:GetAngles()
	timer.Simple(0,function()
		if(IsValid(self))then
			self:FireMotor()
		end
	end)
	if self.Exploding == false then
		timer.Create("unphase",0.45,0,function() self.Entity:SetCollisionGroup(COLLISION_GROUP_NONE) end)
	end
	--if not(self.InitialVel)then self.InitialVel=Vector(0,0,0) end
end
function ENT:FireMotor()
	if(self.MotorFired)then return end
	self.MotorFired=true
	--sound.Play("snd_jack_missilemotorfire.wav",self:GetPos(),85,110)
	--sound.Play("snd_jack_missilemotorfire.wav",self:GetPos()+Vector(0,0,1),88,110)
	self.Engaged=true
end
function ENT:PhysicsCollide(data,physobj)
	if((data.Speed>80)and(data.DeltaTime>.2))then
		self:Detonate()
	end
end
function ENT:OnTakeDamage(dmginfo)
	self.Entity:TakePhysicsDamage(dmginfo)
end
function ENT:Think()
	if(self.Exploded)then return end
	if not(self.Engaged)then
		self:GetPhysicsObject():EnableGravity(false)
		self:SetAngles(self.InitialAng)
		--self:GetPhysicsObject():SetVelocity(self.InitialVel)
	end
	if(self.MotorFired)then
		--local Flew=EffectData()
		--Flew:SetOrigin(self:GetPos()-self:GetRight()*20)
		--Flew:SetNormal(-self:GetRight())
		--Flew:SetScale(2)
		local SelfPos=self:GetPos()
		local Phys=self:GetPhysicsObject()
		Phys:EnableGravity(false)
		Phys:ApplyForceCenter(self:GetRight()*self.MotorPower)
		self.MotorPower=self.MotorPower+900
		if(self.MotorPower>=100)then self.MotorPower=100 end
	end
	if self.missiletime < CurTime() then
		self:Detonate()
	end
	if self.Exploding == true then
		timer.Remove("unphase")
	end
	self:NextThink(CurTime()+.025)
	return true
end
function ENT:OnRemove()
	--pff
end
function ENT:Detonate()
	if(self.Exploding)then return end
	timer.Remove("unphase")
	self.Exploding=true
	local SelfPos=self:GetPos()
	local Pos=SelfPos
	if(true)then
		/*-  EFFECTS  -*/
		util.ScreenShake(SelfPos,99999,99999,1,750)
		local Boom=EffectData()
		Boom:SetOrigin(SelfPos)
		Boom:SetScale(2)
		--ParticleEffect("pcf_jack_airsplode_medium",SelfPos,self:GetAngles())
		for key,thing in pairs(ents.FindInSphere(SelfPos,500))do
			if((thing:IsNPC())and(self:Visible(thing)))then
				if(table.HasValue({"npc_strider","npc_combinegunship","npc_helicopter","npc_turret_floor","npc_turret_ground","npc_turret_ceiling"},thing:GetClass()))then
					thing:SetHealth(1)
					thing:Fire("selfdestruct","",.5)
				end
			end
		end
		self.Entity:EmitSound("energyboom")
		local effect = EffectData()
		effect:SetMagnitude(20)
		effect:SetOrigin(self:GetPos())
		util.Effect("cball_bounce", effect)
		util.Effect("cball_explode", effect)
		util.Effect("TeslaZap", effect)
		sound.Play("energyboom", SelfPos, 100, 100, 1)
		util.BlastDamage(self.Entity,self.HLOwner,SelfPos,100,80)
		self.Entity:Remove()
	end
end
function ENT:Use(activator,caller)
	--lol dude
end