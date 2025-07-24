if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Woodland Camoflage"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Green forest camoflage"}
ATTACHMENT.Icon = "entities/camo_3.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "CAMO"

ATTACHMENT.WeaponTable = {
	["Bodygroups_V"] = {
		[1] = 3
	},
		["Bodygroups_W"] = {
		[2] = 3
	}
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
