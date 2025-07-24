if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "The Vagos"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Knuckle Dusters are given a Vagos themed livery along with flat ends"}
ATTACHMENT.Icon = "entities/vagos.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "VAGOS"

ATTACHMENT.WeaponTable = {
	["Bodygroups_V"] = {
		[0] = 9
	},
	["Bodygroups_W"] = {
		[0] = 9
	}
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
