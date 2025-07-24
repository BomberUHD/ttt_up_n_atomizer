if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Heavy Barrel"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Extra damage", TFA.AttachmentColors["+"], "5% more range", TFA.AttachmentColors["+"], "25% less spread", TFA.AttachmentColors["-"], "-1% mobility" }
ATTACHMENT.Icon = "entities/cr_heavybarrel.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "BARREL"

ATTACHMENT.WeaponTable = {
	["Bodygroups_V"] = {
		[2] = 1
	},
		["Bodygroups_W"] = {
		[3] = 1
	},
	["Primary"] = {
		["Damage"] = function(wep,stat) return stat + 1 end,
		["Range"] = function(wep,stat) return stat *1.05 end,
		["Spread"] = function(wep,stat) return stat * 0.75 end,
	},
	["MoveSpeed"] = function(wep,stat) return stat - 0.01 end,
	["IronSightsMoveSpeed"] = function(wep,stat) return stat * 0.925 end,
	--["HoldType"] = function(wep,stat)
		--return "ar2", true
	--end,


}

function ATTACHMENT:Attach( wep )
end

function ATTACHMENT:Detach( wep )
end

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end