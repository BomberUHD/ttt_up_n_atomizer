if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Army tint"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Desert themed tint" }
ATTACHMENT.Icon = "entities/army.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "ARMY"

ATTACHMENT.WeaponTable = {
	["Skin"] = 2
}
