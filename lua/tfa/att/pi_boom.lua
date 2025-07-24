if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Boom"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Livery with a pattern of boom"}
ATTACHMENT.Icon = "entities/camo_10.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "CAMO"

ATTACHMENT.WeaponTable = {
	["Bodygroups_V"] = {
		[1] = 10,
		[2] = 10
	},
		["Bodygroups_W"] = {
		[2] = 10,
		[3] = 10
	}
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
