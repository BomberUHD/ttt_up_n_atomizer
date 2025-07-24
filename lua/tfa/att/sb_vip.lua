if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "VIP Variant"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "A golden finish with a curved edge for Very Important People"}
ATTACHMENT.Icon = "entities/sb_vip.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "LUXE"

ATTACHMENT.WeaponTable = {
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
