if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Luxurious Suppressor"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Less firing noise", TFA.AttachmentColors["+"], "10% less spread", TFA.AttachmentColors["+"], "10% less vertical recoil", TFA.AttachmentColors["+"], "Elegant golden etched patterns", TFA.AttachmentColors["-"], "5% less damage" }
ATTACHMENT.Icon = "entities/supp_luxe_3.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "SUPP"

ATTACHMENT.WeaponTable = {
	["VElements"] = {
		["supp_luxe_3"] = {
			["active"] = true
		}
	},
	["WElements"] = {
		["supp_luxe_3"] = {
			["active"] = true
		}
	},
	["Primary"] = {
		["Damage"] = function(wep,stat) return stat * 0.95 end,
		["KickUp"] = function(wep,stat) return stat * 0.9 end,
		["KickDown"] = function(wep,stat) return stat * 0.9 end,
		["Spread"] = function(wep,stat) return stat * 0.9 end,
		["IronAccuracy"] = function(wep,stat) return stat * 0.9 end,
		["Sound"] = function(wep,stat) return wep.Primary.SilencedSound or stat end
	},
	["MuzzleFlashEffect"] = "tfa_muzzleflash_silenced",
	["MuzzleAttachmentMod"] = function(wep,stat) return wep.MuzzleAttachmentSilenced or stat end
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
