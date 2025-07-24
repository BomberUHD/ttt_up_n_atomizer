if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Zoom Scope"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "10% less spread", TFA.AttachmentColors["="], "5x zoom", TFA.AttachmentColors["-"], "Obstructed field of view" }
ATTACHMENT.Icon = "entities/scope_large.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "SCOPE"

ATTACHMENT.WeaponTable = {
	["VElements"] = {
		["scope_large"] = {
			["active"] = true
		},
	},
	["WElements"] = {
		["scope_large"] = {
			["active"] = true
		},
		["sights_folded"] = {
			["active"] = false
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
