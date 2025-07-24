if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "The Ballas"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Knuckle Dusters are given spikes at their ends along with a ballas theme"}
ATTACHMENT.Icon = "entities/ballas.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "BALS"

ATTACHMENT.WeaponTable = {
	["Bodygroups_V"] = {
		[0] = 2
	},
	["Bodygroups_W"] = {
		[0] = 2
	}
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
