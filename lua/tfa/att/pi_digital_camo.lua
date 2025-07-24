if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Digital Camoflage"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Livery with a pattern of squares"}
ATTACHMENT.Icon = "entities/camo_1.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "CAMO"

ATTACHMENT.WeaponTable = {
	["Bodygroups_V"] = {
		[1] = 1,
		[2] = 1
	},
	["Bodygroups_W"] = {
		[2] = 1,
		[3] = 1
	}
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
