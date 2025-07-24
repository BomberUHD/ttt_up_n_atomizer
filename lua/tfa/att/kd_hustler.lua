if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "The Hustler"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Knuckle Dusters are given dollar signs at their ends"}
ATTACHMENT.Icon = "entities/hustler.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "HSTLR"

ATTACHMENT.WeaponTable = {
	["Bodygroups_V"] = {
		[0] = 3
	},
	["Bodygroups_W"] = {
		[0] = 3
	}
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
