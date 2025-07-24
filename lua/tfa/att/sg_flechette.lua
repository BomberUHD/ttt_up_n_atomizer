if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Flechette Shells"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "3+ Extra damage per pellet" }
ATTACHMENT.Icon = "entities/sg_flcht.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "FLCHT"

ATTACHMENT.WeaponTable = {
	["Skin"] = 2,
	["Primary"] = {
		["Damage"] = function(wep,stat) return stat + 3 end,
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