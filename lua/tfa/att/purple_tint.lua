if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Purple tint"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Futuristic alien purple tint" }
ATTACHMENT.Icon = "entities/purple.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "PRPLE"

ATTACHMENT.WeaponTable = {
	["Skin"] = 2,
	["Purple"] = true,
	["Blue"] = false
}
