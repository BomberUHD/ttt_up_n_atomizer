if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Perseus"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Livery with a pattern of unique Ps with a feather design"}
ATTACHMENT.Icon = "entities/camo_6.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "CAMO"

ATTACHMENT.WeaponTable = {
	["Bodygroups_V"] = {
		[1] = 6,
		[2] = 6
	},
		["Bodygroups_W"] = {
		[2] = 6,
		[3] = 6
	}
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
