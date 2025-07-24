if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Explosive Slugs"
ATTACHMENT.ShortName = "AP" --Abbreviation, 5 chars or less please
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Projectiles which explode on impact", "10x damage", "Slugs provide 4x better accuracy", TFA.AttachmentColors["="], "Buckshot ammo replaced with single slugs" }
ATTACHMENT.Icon = "entities/sg_ex.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"

ATTACHMENT.WeaponTable = {
	["Skin"] = 4,
	["Primary"] = {
		["DamageType"] = function(wep,stat) return bit.bor( stat or 0, DMG_BLAST ) end,
		["Damage"] = function(wep,stat) return stat * 10 end,
		["NumShots"] = function(wep,stat) return stat / 8 end,
		["Spread"] = function(wep,stat) return stat / 4 end,
		["IronAccuracy"] = function(wep,stat) return stat / 4 end,
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
