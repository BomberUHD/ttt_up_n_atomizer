if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Dragon's Breath Shells"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Sets targets on fire when shot" }
ATTACHMENT.Icon = "entities/sg_inc.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "INC"

ATTACHMENT.WeaponTable = {
	["Skin"] = 1,
	["Primary"] = {
		["DamageType"] = function(wep,stat) return bit.bor( stat or 0, DMG_BURN ) end
	},
	["MuzzleFlashEffect"] = "tfa_muzzleflash_incendiary",
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