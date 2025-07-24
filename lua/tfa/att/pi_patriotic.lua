if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Patriotic"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Painted Capitalism"}
ATTACHMENT.Icon = "entities/camo_11.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "CAMO"

ATTACHMENT.WeaponTable = {
	["Bodygroups_V"] = {
		[1] = 11,
		[2] = 11
	},
		["Bodygroups_W"] = {
		[2] = 11,
		[3] = 11
	}
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
