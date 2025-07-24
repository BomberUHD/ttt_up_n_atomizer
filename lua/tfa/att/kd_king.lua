if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "The King"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Knuckle Dusters are given a king themed livery along with flat ends"}
ATTACHMENT.Icon = "entities/king.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "KING"

ATTACHMENT.WeaponTable = {
	["Bodygroups_V"] = {
		[0] = 8
	},
	["Bodygroups_W"] = {
		[0] = 8
	}
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
