if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "The Lover"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Knuckle Dusters are given a the letters ''L O V E'' at their ends"}
ATTACHMENT.Icon = "entities/lover.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "LOVE"

ATTACHMENT.WeaponTable = {
	["Bodygroups_V"] = {
		[0] = 6
	},
	["Bodygroups_W"] = {
		[0] = 6
	}
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
