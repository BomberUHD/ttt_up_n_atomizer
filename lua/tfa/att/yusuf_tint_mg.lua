if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Yusuf Amir Luxury Finish"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Golden, extensively detailed finish with a few wooden engravings" }
ATTACHMENT.Icon = "entities/luxe_1.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "LUXE"

ATTACHMENT.WeaponTable = {
	["Skin"] = 1,
	["Luxe"] = true
}

function ATTACHMENT:Attach( wep )
	wep.VElements["scope_2"].skin_old = wep.VElements["scope_2"].skin_old or wep.VElements["scope_2"].skin
	wep.VElements["scope_2"].skin = self.WeaponTable.Skin
	wep.WElements["scope_2"].skin_old = wep.VElements["scope_2"].skin_old or wep.VElements["scope_2"].skin
	wep.WElements["scope_2"].skin = self.WeaponTable.Skin
end

function ATTACHMENT:Detach( wep )
	wep.VElements["scope_2"].skin = wep.VElements["scope_2"].skin_old
	wep.WElements["scope_2"].skin = wep.VElements["scope_2"].skin_old
end

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
