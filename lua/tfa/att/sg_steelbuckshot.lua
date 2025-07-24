if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Steel Buckshot Shells"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "1+ Extra damage per pellet", TFA.AttachmentColors["+"], "Increased penetration of armor" }
ATTACHMENT.Icon = "entities/sg_steel.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "STEEL"

ATTACHMENT.WeaponTable = {
	["Skin"] = 3,
	["Primary"] = {
		["DamageType"] = function(wep,stat) return bit.bor( stat or 0, DMG_FALL ) end,
		["Damage"] = function(wep,stat) return stat + 1 end,
	}
}

function ATTACHMENT:Attach(wep)
	wep:Unload()
end

function ATTACHMENT:Detach(wep)
	wep:Unload()
end

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end