if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "The Player"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Knuckle Dusters are given spikey spades at their ends with gems"}
ATTACHMENT.Icon = "entities/player.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "PLAY"

ATTACHMENT.WeaponTable = {
	["Bodygroups_V"] = {
		[0] = 7
	},
	["Bodygroups_W"] = {
		[0] = 7
	}
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
