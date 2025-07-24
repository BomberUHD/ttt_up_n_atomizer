if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Flashlight"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Provides greater illumination and range than the default flashlight", TFA.AttachmentColors["="], "Flashlight is now a part of the weapon and not fixed to the eyes" }
ATTACHMENT.Icon = "entities/flsh_1.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "FLSH"

ATTACHMENT.WeaponTable = {
	["FlashlightAttachment"] = 3,
	["FlashlightDistance"] = 100 * 50,
	["FlashlightBrightness"] = 2,
	["FlashlightFOV"] = 65,
	["VElements"] = {
		["flsh_1"] = {
			["active"] = true
		}
	},
	["WElements"] = {
		["flsh_1"] = {
			["active"] = true
		}
	},
	["Animations"] = {
		["draw"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "grip_draw"
		},
		["draw_empty"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "grip_draw_empty"
		},
		["shoot1"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "grip_fire"
		},
		["shoot1_last"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "grip_fire_empty"
		},
		["shoot1_empty"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "grip_dryfire"
		},
		["reload"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "grip_reload"
		},
		["reload_empty"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "grip_reload_empty"
		},
		["reload_shotgun_start"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ,
			["value"] = "grip_reload_start"
		},
		["reload_shotgun_finish"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ,
			["value"] = "grip_reload_end"
		},
		["idle"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "grip_idle"
		},
		["idle_empty"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "grip_empty_idle"
		},
		["holster"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "grip_holster"
		},
		["holster_empty"] = {
			["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
			["value"] = "grip_holster_empty"
		},
		},
		["SprintAnimation"] = {
		["loop"] = function(wep,val)
			if not wep.SprintAnimation.loop then return end
			val = table.Copy(val) or {}
			val["type"] = TFA.Enum.ANIMATION_SEQ --Sequence or act
			if val.value then
				val["value"] = "grip_sprint"
			end
			if val.value_empty then
				val["value_empty"] = "grip_sprint"
			end
			return val, true, true
		end
	},
	["IronAnimation"] = {
		["shoot"] = function(wep,val)
			if not wep.IronAnimation.shoot then return end
			val = table.Copy(val) or {}
			val["type"] = TFA.Enum.ANIMATION_ACT --Sequence or act
			if val.value then
				val["value"] = ACT_VM_PRIMARYATTACK_DEPLOYED_1
			end
			if val.value_last then
				val["value_last"] = ACT_VM_PRIMARYATTACK_DEPLOYED_2
			end
			if val.value_empty then
				val["value_empty"] = ACT_VM_PRIMARYATTACK_DEPLOYED_3
			end
			return val, true, true
		end
	}
}

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
