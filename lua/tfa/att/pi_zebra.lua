if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Zebra"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Livery with black and white stripes"}
ATTACHMENT.Icon = "entities/camo_8.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "CAMO"

ATTACHMENT.WeaponTable = {
	["Bodygroups_V"] = {
		[1] = 8,
		[2] = 8
	},
		["Bodygroups_W"] = {
		[2] = 8,
		[3] = 8
	}
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
