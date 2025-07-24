if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Armor Piercing Ammunition"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "2+ Extra damage", TFA.AttachmentColors["+"], "Increased penetration of Armor", TFA.AttachmentColors["-"], "Reduced capacity" }
ATTACHMENT.Icon = "entities/cr_ap.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "AP"

ATTACHMENT.WeaponTable = {
	["Skin"] = 3,
	["AP"] = true,
	["Primary"] = {
		["DamageType"] = function(wep,stat) return bit.bor( stat or 0, DMG_FALL ) end,
		["Damage"] = function(wep,stat) return stat + 2 end,
		["ClipSize"] = function(wep,stat) return stat - 10 end,
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