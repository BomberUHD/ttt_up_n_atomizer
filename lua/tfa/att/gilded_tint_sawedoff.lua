if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Gilded Gun Metal Finish"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Golden, extensively detailed finish with a few wooden engravings" }
ATTACHMENT.Icon = "entities/luxe_4.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "LUXE"

ATTACHMENT.WeaponTable = {
	["Skin"] = 1
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
