if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Festive tint"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "A holiday themed tint to bring christmas joy to all" }
ATTACHMENT.Icon = "entities/festive.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "FSTVE"

ATTACHMENT.WeaponTable = {
	["Skin"] = 1,
	["Festive"] = true,
	["Blue"] = false
}
