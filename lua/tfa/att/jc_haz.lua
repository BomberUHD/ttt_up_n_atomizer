if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Hazardous Jerry Can"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Jerry Can contains hazardous chemicals"}
ATTACHMENT.Icon = "entities/jc_haz.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "HAZARD"

ATTACHMENT.WeaponTable = {
	["Hazard"] = true,
	["Bodygroups_V"] = {
		[0] = 1
	},
	["Bodygroups_W"] = {
		[0] = 1
	}
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
