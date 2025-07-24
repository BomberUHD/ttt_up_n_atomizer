if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Airstrike"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Request an Airstrike at a selected position." }
ATTACHMENT.Icon = "entities/airstrike.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "AIR"

ATTACHMENT.WeaponTable = {
	["Airstrike"] = true,
	["Default"] = false
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end