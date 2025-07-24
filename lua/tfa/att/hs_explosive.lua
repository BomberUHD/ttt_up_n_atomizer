if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Explosive Ammunition"
ATTACHMENT.ShortName = "AP" --Abbreviation, 5 chars or less please
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "2x Damage", "Bullets which explode on impact",  TFA.AttachmentColors["-"], "Reduced Capacity" }
ATTACHMENT.Icon = "entities/hs_exp.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"

ATTACHMENT.WeaponTable = {
	["EXP"] = true,
	["Skin"] = 4,
	["Primary"] = {
		["DamageType"] = function(wep,stat) return bit.bor( stat or 0, DMG_BLAST ) end,
		["Damage"] = function(wep,stat) return stat * 2 end,
		["ClipSize"] = function(wep,stat) return stat - 2 end,
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
