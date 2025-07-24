if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Gilded Gun Metal Finish"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Golden, extensively detailed finish with a chinese-themed engravings" }
ATTACHMENT.Icon = "entities/luxe_4.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "LUXE"

ATTACHMENT.WeaponTable = {
	["Skin"] = 1,
	["Luxe"] = true
}

function ATTACHMENT:Attach( wep )
	wep.VElements["supp_3"].skin_old = wep.VElements["supp_3"].skin_old or wep.VElements["supp_3"].skin
	wep.VElements["supp_3"].skin = self.WeaponTable.Skin
	wep.WElements["supp_3"].skin_old = wep.VElements["supp_3"].skin_old or wep.VElements["supp_3"].skin
	wep.WElements["supp_3"].skin = self.WeaponTable.Skin
	wep.VElements["scope_2"].skin_old = wep.VElements["scope_2"].skin_old or wep.VElements["scope_2"].skin
	wep.VElements["scope_2"].skin = self.WeaponTable.Skin
	wep.WElements["scope_2"].skin_old = wep.VElements["scope_2"].skin_old or wep.VElements["scope_2"].skin
	wep.WElements["scope_2"].skin = self.WeaponTable.Skin
	wep.VElements["flsh_2"].skin_old = wep.VElements["flsh_2"].skin_old or wep.VElements["flsh_2"].skin
	wep.VElements["flsh_2"].skin = self.WeaponTable.Skin
	wep.WElements["flsh_2"].skin_old = wep.VElements["flsh_2"].skin_old or wep.VElements["flsh_2"].skin
	wep.WElements["flsh_2"].skin = self.WeaponTable.Skin
end

function ATTACHMENT:Detach( wep )
	wep.VElements["supp_3"].skin = wep.VElements["supp_3"].skin_old
	wep.WElements["supp_3"].skin = wep.VElements["supp_3"].skin_old
	wep.VElements["scope_2"].skin = wep.VElements["scope_2"].skin_old
	wep.WElements["scope_2"].skin = wep.VElements["scope_2"].skin_old
	wep.VElements["flsh_2"].skin = wep.VElements["flsh_2"].skin_old
	wep.WElements["flsh_2"].skin = wep.VElements["flsh_2"].skin_old
end

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
