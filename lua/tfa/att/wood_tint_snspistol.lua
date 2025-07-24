if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Etched Wood Grip Finish"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Metallic engravings with a luxurious wooden grip" }
ATTACHMENT.Icon = "entities/luxe_2.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "LUXE"

ATTACHMENT.WeaponTable = {
	["Skin"] = 1,
	["Luxe"] = true
}

function ATTACHMENT:Attach( wep )
end

function ATTACHMENT:Detach( wep )
end

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
