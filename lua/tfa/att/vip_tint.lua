if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "VIP Variant"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Golden, luxurious finish for the Very Important People" }
ATTACHMENT.Icon = "entities/luxe_7.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "LUXE"

ATTACHMENT.WeaponTable = {
	["Skin"] = 8
}
