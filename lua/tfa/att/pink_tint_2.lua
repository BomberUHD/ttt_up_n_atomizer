if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Pink tint"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Tint with multiple hues of pink to give a toy-like feel" }
ATTACHMENT.Icon = "entities/pink.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "PINK"

ATTACHMENT.WeaponTable = {
	["Skin"] = 6
}
