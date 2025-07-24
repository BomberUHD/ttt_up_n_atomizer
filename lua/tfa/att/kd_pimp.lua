if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "The Pimp"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Knuckle Dusters are given square ends with red and white gems"}
ATTACHMENT.Icon = "entities/pimp.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "PIMP"

ATTACHMENT.WeaponTable = {
	["Bodygroups_V"] = {
		[0] = 1
	},
	["Bodygroups_W"] = {
		[0] = 1
	}
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
