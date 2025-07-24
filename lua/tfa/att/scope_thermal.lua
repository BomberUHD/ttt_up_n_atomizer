if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Thermal Vision Scope"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Long-range zoom with thermal vision", "10% less spread", TFA.AttachmentColors["="], "5x zoom", TFA.AttachmentColors["-"], "Obstructed field of view", "Non-human targets are harder to see" }
ATTACHMENT.Icon = "entities/scope_thermalvision.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "SCOPE"

ATTACHMENT.WeaponTable = {
	["Thermal"] = true,
	["VElements"] = {
		["scope_thermalvision"] = {
			["active"] = true
		}
	},
	["WElements"] = {
		["scope_thermalvision"] = {
			["active"] = true
		}
	},
	["IronSightsPos"] = function( wep, val ) return wep.IronSightsPos_ScopeThermal or val end,
	["IronSightsAng"] = function( wep, val ) return wep.IronSightsAng_ScopeThermal or val end,
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
