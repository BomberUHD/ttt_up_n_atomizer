if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Gold tint"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "A metallic shiny golden tint" }
ATTACHMENT.Icon = "entities/gold.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "GOLD"

ATTACHMENT.WeaponTable = {
	["Skin"] = 6
}

function ATTACHMENT:Attach( wep )
	wep.VElements["supp_6"].skin_old = wep.VElements["supp_6"].skin_old or wep.VElements["supp_6"].skin
	wep.VElements["supp_6"].skin = self.WeaponTable.Skin
	wep.WElements["supp_6"].skin_old = wep.VElements["supp_6"].skin_old or wep.VElements["supp_6"].skin
	wep.WElements["supp_6"].skin = self.WeaponTable.Skin
end

function ATTACHMENT:Detach( wep )
	wep.VElements["supp_6"].skin = wep.VElements["supp_6"].skin_old
	wep.WElements["supp_6"].skin = wep.VElements["supp_6"].skin_old
end

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end