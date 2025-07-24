if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "The Rock"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Knuckle Dusters are given a silver finish with diamond studs"}
ATTACHMENT.Icon = "entities/rock.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "ROCK"

ATTACHMENT.WeaponTable = {
	["Bodygroups_V"] = {
		[0] = 4
	},
	["Bodygroups_W"] = {
		[0] = 4
	}
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
