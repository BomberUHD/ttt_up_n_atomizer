if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Squared Muzzle Brake"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "10% less vertical recoil", "10% less horizontal recoil", "5% less spread" }
ATTACHMENT.Icon = "entities/muzz_8.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "MUZZ"

ATTACHMENT.WeaponTable = {
	["VElements"] = {
		["muzz_8"] = {
			["active"] = true
		}
	},
	["WElements"] = {
		["muzz_8"] = {
			["active"] = true
		}
	},
	["Primary"] = {
		["KickUp"] = function(wep,stat) return stat * 0.9 end,
		["KickDown"] = function(wep,stat) return stat * 0.9 end,
		["KickHorizontal"] = function(wep,stat) return stat * 0.9 end,
		["Spread"] = function(wep,stat) return stat * 0.95 end,
		["IronAccuracy"] = function(wep,stat) return stat * 0.95 end
	},
	["IronSightsMoveSpeed"] = function(wep,stat) return stat * 0.975 end,

}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end