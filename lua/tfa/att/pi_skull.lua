if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Skull"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Livery with a pattern of white skulls"}
ATTACHMENT.Icon = "entities/camo_4.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "CAMO"

ATTACHMENT.WeaponTable = {
	["Bodygroups_V"] = {
		[1] = 4,
		[2] = 4
	},
		["Bodygroups_W"] = {
		[2] = 4,
		[3] = 4
	}
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
