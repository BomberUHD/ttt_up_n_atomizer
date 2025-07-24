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

function ATTACHMENT:Attach( wep )
	wep.VElements["front_sights"].skin_old = wep.VElements["front_sights"].skin_old or wep.VElements["front_sights"].skin
	wep.VElements["front_sights"].skin = self.WeaponTable.Skin
	wep.VElements["rear_sights"].skin_old = wep.VElements["rear_sights"].skin_old or wep.VElements["rear_sights"].skin
	wep.VElements["rear_sights"].skin = self.WeaponTable.Skin
	wep.VElements["front_sights_folded"].skin_old = wep.VElements["front_sights_folded"].skin_old or wep.VElements["front_sights_folded"].skin
	wep.VElements["front_sights_folded"].skin = self.WeaponTable.Skin
	wep.VElements["rear_sights_folded"].skin_old = wep.VElements["rear_sights_folded"].skin_old or wep.VElements["rear_sights_folded"].skin
	wep.VElements["rear_sights_folded"].skin = self.WeaponTable.Skin
end

function ATTACHMENT:Detach( wep )
	wep.VElements["front_sights"].skin = wep.VElements["front_sights"].skin_old
	wep.VElements["rear_sights"].skin = wep.VElements["rear_sights"].skin_old
	wep.VElements["front_sights_folded"].skin = wep.VElements["front_sights_folded"].skin_old
	wep.VElements["rear_sights_folded"].skin = wep.VElements["rear_sights_folded"].skin_old
end

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end