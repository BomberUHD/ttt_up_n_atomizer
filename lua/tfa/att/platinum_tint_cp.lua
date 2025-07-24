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