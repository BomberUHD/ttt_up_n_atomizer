if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Incendiary Ammunition"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Sets targets on fire when shot", TFA.AttachmentColors["-"], "Reduced capacity" }
ATTACHMENT.Icon = "entities/smg_inc.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "INCEN"

ATTACHMENT.WeaponTable = {
	["INC"] = true,
	["Primary"] = {
		["DamageType"] = function(wep,stat) return bit.bor( stat or 0, DMG_BURN ) end,
		["ClipSize"] = function(wep,stat) return stat - 10 end,
	},
	["VElements"] = {
	["inc_mag"] = {
		["active"] = true
	}
	},
	["WElements"] = {
		["inc_mag"] = {
			["active"] = true
		}
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