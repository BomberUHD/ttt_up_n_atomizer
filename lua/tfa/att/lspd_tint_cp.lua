if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "LSPD tint"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Los Santos Police Department themed tint" }
ATTACHMENT.Icon = "entities/lspd.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "LSPD"

ATTACHMENT.WeaponTable = {
	["Skin"] = 4
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