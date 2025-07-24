if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "LSPD tint"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Los Santos Police Department themed tint" }
ATTACHMENT.Icon = "entities/lspd.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "LSPD"

ATTACHMENT.WeaponTable = {
	["Skin"] = 5
}
