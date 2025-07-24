if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Leopard"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Livery with a spotted leopard pattern"}
ATTACHMENT.Icon = "entities/camo_7.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "CAMO"

ATTACHMENT.WeaponTable = {
	["Bodygroups_V"] = {
		[1] = 7,
		[2] = 7
	},
		["Bodygroups_W"] = {
		[2] = 7,
		[3] = 7
	}
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
