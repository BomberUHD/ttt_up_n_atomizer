if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Bodyguard Variant"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "A warm wooden theme for the most elite bodyguards"}
ATTACHMENT.Icon = "entities/sb_bg.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "LUXE"

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
