if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Green tint"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Black tint with a forest green touch added" }
ATTACHMENT.Icon = "entities/green.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "GREEN"

ATTACHMENT.WeaponTable = {
	["Skin"] = 2,
	["Green"] = true,
	["Default"] = false
}
