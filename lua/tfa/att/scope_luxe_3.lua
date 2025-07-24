if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Luxurios Medium Red Dot Scope"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "5% less spread", TFA.AttachmentColors["="], "15% higher zoom", TFA.AttachmentColors["-"], "5% higher zoom time" }
ATTACHMENT.Icon = "entities/scope_luxe_3.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "SCOPE"

ATTACHMENT.WeaponTable = {
	["VElements"] = {
		["scope_luxe_3"] = {
			["active"] = true
		},
		["front_sights_folded_luxe"] = {
			["active"] = true
		},
		["rear_sights_folded_luxe"] = {
			["active"] = true
		},
		["front_sights"] = {
			["active"] = false
		},
		["rear_sights"] = {
			["active"] = false
		},
	},
	["WElements"] = {
		["scope_luxe_3"] = {
			["active"] = true
		},
		["sights_folded"] = {
			["active"] = false
		},
	},
	["IronSightsPos"] = function( wep, val ) return wep.IronSightsPos_ScopeArmy or val end,
	["IronSightsAng"] = function( wep, val ) return wep.IronSightsAng_ScopeArmy or val end,
	["IronSightTime"] = function( wep, val ) return val * 1.05 end,
	["IronAccuracy"] = function(wep,stat) return stat * 0.95 end,
	["Secondary"] = {
		["IronFOV"] = function( wep, val ) return val * 0.85 end
	},
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
