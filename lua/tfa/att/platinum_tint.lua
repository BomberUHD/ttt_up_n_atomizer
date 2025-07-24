if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Platinum tint"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "A metallic shiny platinum tint with hints of blue" }
ATTACHMENT.Icon = "entities/platinum.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "PLTNM"

ATTACHMENT.WeaponTable = {
	["Skin"] = 7
}
