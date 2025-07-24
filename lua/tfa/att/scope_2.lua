if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Green Dot Scope"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "5% less spread", TFA.AttachmentColors["="], "15% higher zoom", TFA.AttachmentColors["-"], "5% higher zoom time" }
ATTACHMENT.Icon = "entities/scope_2.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "SCOPE"

ATTACHMENT.WeaponTable = {
	["VElements"] = {
		["scope_2"] = {
			["active"] = true
		},
		["sights_folded"] = {
			["active"] = false
		},
	},
	["WElements"] = {
		["scope_2"] = {
			["active"] = true
		},
		["sights_folded"] = {
			["active"] = false
		},
	},
	["IronSightsPos"] = function( wep, val ) return wep.IronSightsPos_ScopeGreen or val end,
	["IronSightsAng"] = function( wep, val ) return wep.IronSightsAng_ScopeGreen or val end,
	["IronSightTime"] = function( wep, val ) return val * 1.05 end,
	["IronAccuracy"] = function(wep,stat) return stat * 0.95 end,
	["Secondary"] = {
		["IronFOV"] = function( wep, val ) return val * 0.85 end
	},
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
