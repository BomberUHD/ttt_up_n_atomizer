if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "The Hater"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Knuckle Dusters are given a the letters ''H A T E'' at their ends"}
ATTACHMENT.Icon = "entities/hater.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "HATE"

ATTACHMENT.WeaponTable = {
	["Bodygroups_V"] = {
		[0] = 5
	},
	["Bodygroups_W"] = {
		[0] = 5
	}
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
