if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Sessanta Nove"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Livery with a pattern of diamonds, knuckle dusters, and more"}
ATTACHMENT.Icon = "entities/camo_5.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "CAMO"

ATTACHMENT.WeaponTable = {
	["Bodygroups_V"] = {
		[1] = 5
	},
		["Bodygroups_W"] = {
		[2] = 5
	}
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
