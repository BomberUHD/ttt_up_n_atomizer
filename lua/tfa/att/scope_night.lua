if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Night Vision Scope"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Long-range zoom with night vision", "10% less spread", TFA.AttachmentColors["="], "5x zoom", TFA.AttachmentColors["-"], "Obstructed field of view", "Limited to dark area use" }
ATTACHMENT.Icon = "entities/scope_nightvision.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "SCOPE"

ATTACHMENT.WeaponTable = {
	["Night"] = true,
	["VElements"] = {
		["scope_nightvision"] = {
			["active"] = true
		}
	},
	["WElements"] = {
		["scope_nightvision"] = {
			["active"] = true
		}
	},
	["IronSightsPos"] = function( wep, val ) return wep.IronSightsPos_ScopeLarge or val end,
	["IronSightsAng"] = function( wep, val ) return wep.IronSightsAng_ScopeLarge or val end,
	["Secondary"] = {
		["IronFOV"] = function( wep, val ) return wep.Secondary.IronFOV_Thermal or val end,
		["ScopeTable"] = { 	
			["ScopeOverlay"] = Material("models/krazy/gtav/weapons/sniper_default_reticule", "smooth"),
			["ScopeCrosshair"] = { ["r"] = 0, ["g"]  = 0, ["b"] = 0, ["a"] = 255, ["s"] = 0 } },
			["IronFOV"] = function( wep, val ) return val * 0.2 end,
	},
	["Scoped"] = true,
	["RTOpaque"] = true,
	["RTScopeAttachment"] = 1,
	["RTMaterialOverride"] = -1,
	["IronAccuracy"] = function(wep,stat) return stat * 0.9 end,
	["IronSightTime"] = function( wep, val ) return val end
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
