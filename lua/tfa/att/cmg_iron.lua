if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Alternate Iron Sights"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Switches to the weapon's alternate iron sights" }
ATTACHMENT.Icon = "entities/cmg_iron.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "IRON"

ATTACHMENT.WeaponTable = {
	["Bodygroups_V"] = {
		[4] = 1
	},
	["Bodygroups_W"] = {
		[4] = 1
	},
	["IronSightsPos"] = function( wep, val ) return wep.IronSightsPos_Alternate or val end,
	["IronSightsAng"] = function( wep, val ) return wep.IronSightsAng_Alternate or val end,
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end