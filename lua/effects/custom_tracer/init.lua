local Tracer = Material( "effects/gtav_tracer_custom" )

function EFFECT:Init( data )

	self.Position = data:GetStart()
	self.EndPos = data:GetOrigin()
	self.WeaponEnt = data:GetEntity()
	self.Attachment = data:GetAttachment()
	self.StartPos = self:GetTracerShootPos( self.Position, self.WeaponEnt, self.Attachment )
	self:SetRenderBoundsWS( self.StartPos, self.EndPos )

	self.Dir = ( self.EndPos - self.StartPos ):GetNormalized()
	self.Dist = self.StartPos:Distance( self.EndPos )
	
	self.LifeTime = 0.01 - ( 1 / self.Dist )
	self.DieTime = CurTime() + self.LifeTime

end

function EFFECT:Think()

	if ( CurTime() > self.DieTime ) then return false end
	return true

end

function EFFECT:Render()
	
	local v1 = ( CurTime() - self.DieTime ) / self.LifeTime
	local v2 = ( self.DieTime - CurTime() ) / self.LifeTime
	local a = self.EndPos - self.Dir * math.min( 1 - ( v1 * self.Dist ), self.Dist )
	
	red = LocalPlayer():GetInfoNum("cl_tfa_reticule_color_r", 255)
	green = LocalPlayer():GetInfoNum("cl_tfa_reticule_color_g", 255)
	blue = LocalPlayer():GetInfoNum("cl_tfa_reticule_color_b", 255)

	render.SetMaterial( Tracer )
	render.DrawBeam( a, self.EndPos, v2 * 1, 0, self.Dist / 10, Color( red, green, blue, 255 ) )

end