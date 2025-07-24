if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Hallow Point Ammunition"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "4+ Extra damage" }
ATTACHMENT.Icon = "entities/sns_hp.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "HALOW"

ATTACHMENT.WeaponTable = {
	["Skin"] = 3,
	["HP"] = true,
	["Primary"] = {
		["DamageType"] = function(wep,stat) return bit.bor( stat or 0, DMG_FALL ) end,
		["Damage"] = function(wep,stat) return stat + 4 end
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