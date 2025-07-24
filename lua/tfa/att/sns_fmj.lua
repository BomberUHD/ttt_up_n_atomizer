if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Full Metal Jacket Ammunition"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Bullets hit with a greater force", TFA.AttachmentColors["+"], "2+ Extra damage", TFA.AttachmentColors["+"], "Increased penetration" }
ATTACHMENT.Icon = "entities/sns_fmj.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "FMJ"

ATTACHMENT.WeaponTable = {
	["Skin"] = 4,
	["FMJ"] = true,
	["Primary"] = {
		["Damage"] = function(wep,stat) return stat + 3 end,
		["PenetrationMultiplier"] = function(wep,stat) return stat + 10 end
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