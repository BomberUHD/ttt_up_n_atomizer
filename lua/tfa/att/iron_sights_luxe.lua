if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Luxurious Sights"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Sights with a golden finish" }
ATTACHMENT.Icon = "entities/iron_sights_luxe.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "SCOPE"

ATTACHMENT.WeaponTable = {
	["VElements"] = {
		["front_sights_luxe"] = {
			["active"] = true
		},
		["front_sights"] = {
			["active"] = false
		},
		["rear_sights_luxe"] = {
			["active"] = true
		},
		["rear_sights"] = {
			["active"] = false
		},
	},
	["WElements"] = {

	},
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
