if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Box Magazine"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Significant capacity upgrade", TFA.AttachmentColors["-"], "Slower reload", TFA.AttachmentColors["-"], "-3% mobility" }
ATTACHMENT.Icon = "entities/cr_box.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "BOX"

ATTACHMENT.WeaponTable = {
	["BOX"] = true,
	["Bodygroups_V"] = {
		[1] = 2
	},
	["Bodygroups_W"] = {
		[1] = 2
	},
	["Primary"] = {
		["ClipSize"] = function(wep,stat) return stat + 70 end
	},
	["Animations"] = {
		["reload"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "grip_reload"
		},
		["reload_empty"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "grip_reload_empty"
		}
	},
	["MoveSpeed"] = function(wep,stat) return stat - 0.03 end
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