if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Extended Magazine"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Extended capacity for regular ammo", TFA.AttachmentColors["-"], "-1% mobility", TFA.AttachmentColors["-"], "-2% mobility" }
ATTACHMENT.Icon = "entities/cmg_ex.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "EXTND"

ATTACHMENT.WeaponTable = {
	["EX"] = true,
	["Bodygroups_V"] = {
		[1] = 1
	},
	["Bodygroups_W"] = {
		[1] = 1
	},
	["Primary"] = {
		["ClipSize"] = function(wep,stat) return stat + 100 end
	},
	["MoveSpeed"] = function(wep,stat) return stat - 0.02 end
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