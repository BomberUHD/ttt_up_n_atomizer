if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Orange tint"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Black tint with a brilliant orange touch added" }
ATTACHMENT.Icon = "entities/orange.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "ORNG"

ATTACHMENT.WeaponTable = {
	["Skin"] = 3
}
