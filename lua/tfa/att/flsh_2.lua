if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Flashlight"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Provides greater illumination and range than the default flashlight", TFA.AttachmentColors["="], "Flashlight is now a part of the weapon and not fixed to the eyes", TFA.AttachmentColors["-"], "-1% mobility" }
ATTACHMENT.Icon = "entities/flsh_2.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "FLSH"

ATTACHMENT.WeaponTable = {
["FlashlightAttachment"] = 3,
	["FlashlightDistance"] = 60 * 50,
	["FlashlightBrightness"] = 2,
	["FlashlightFOV"] = 50,
	["VElements"] = {
		["flsh_2"] = {
			["active"] = true
		}
	},
	["WElements"] = {
		["flsh_2"] = {
			["active"] = true
		}
	},
	["MoveSpeed"] = function(wep,stat) return stat - 0.01 end
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
