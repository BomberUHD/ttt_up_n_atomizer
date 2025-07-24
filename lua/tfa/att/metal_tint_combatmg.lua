if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Etched Gun Metal Finish"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Golden, extensively detailed finish with a hint of black" }
ATTACHMENT.Icon = "entities/luxe_3.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "LUXE"

ATTACHMENT.WeaponTable = {
	["Skin"] = 1,
	["Luxe"] = true
}

function ATTACHMENT:Attach( wep )
	wep.VElements["scope_3"].skin_old = wep.VElements["scope_3"].skin_old or wep.VElements["scope_3"].skin
	wep.VElements["scope_3"].skin = self.WeaponTable.Skin
	wep.WElements["scope_3"].skin_old = wep.VElements["scope_3"].skin_old or wep.VElements["scope_3"].skin
	wep.WElements["scope_3"].skin = self.WeaponTable.Skin
	wep.VElements["grip_1"].skin_old = wep.VElements["grip_1"].skin_old or wep.VElements["grip_1"].skin
	wep.VElements["grip_1"].skin = self.WeaponTable.Skin
	wep.WElements["grip_1"].skin_old = wep.VElements["grip_1"].skin_old or wep.VElements["grip_1"].skin
	wep.WElements["grip_1"].skin = self.WeaponTable.Skin
end

function ATTACHMENT:Detach( wep )
	wep.VElements["scope_3"].skin = wep.VElements["scope_3"].skin_old
	wep.WElements["scope_3"].skin = wep.VElements["scope_3"].skin_old
	wep.VElements["grip_1"].skin = wep.VElements["grip_1"].skin_old
	wep.WElements["grip_1"].skin = wep.VElements["grip_1"].skin_old
end

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
