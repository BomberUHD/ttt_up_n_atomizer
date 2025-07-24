if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Suppressor"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Less firing noise", TFA.AttachmentColors["+"], "5% less spread", TFA.AttachmentColors["+"], "5% less vertical recoil", TFA.AttachmentColors["-"], "-1 damage", TFA.AttachmentColors["-"], "2% less range" }
ATTACHMENT.Icon = "entities/supp_4.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "SUPP"

ATTACHMENT.WeaponTable = {
	["VElements"] = {
		["supp_4"] = {
			["active"] = true
		}
	},
	["WElements"] = {
		["supp_4"] = {
			["active"] = true
		}
	},
	["Primary"] = {
		["Damage"] = function(wep,stat) return stat - 1 end,
		["KickUp"] = function(wep,stat) return stat * 0.95 end,
		["KickDown"] = function(wep,stat) return stat * 0.95 end,
		["Spread"] = function(wep,stat) return stat * 0.9 end,
		["IronAccuracy"] = function(wep,stat) return stat * 0.9 end,
		["Sound"] = function(wep,stat) return wep.Primary.SilencedSound or stat end,
		["Range"] = function(wep,stat) return stat * 0.98 end
	},
	["MuzzleFlashEffect"] = "tfa_muzzleflash_silenced",
	["MuzzleAttachmentMod"] = function(wep,stat) return wep.MuzzleAttachmentSilenced or stat end
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
