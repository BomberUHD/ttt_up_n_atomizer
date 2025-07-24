if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Grip"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "10% less vertical recoil", "10% less horizontal recoil", "5% less spread", TFA.AttachmentColors["-"], "-1% mobility" }
ATTACHMENT.Icon = "entities/grip_1.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "GRIP"

ATTACHMENT.WeaponTable = {
	["VElements"] = {
		["basegrip"] = {
			["active"] = false
		},
		["grip_1"] = {
			["active"] = true
		}
	},
	["WElements"] = {
		["basegrip"] = {
			["active"] = false
		},
		["grip_1"] = {
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
	["Primary"] = {
		["KickUp"] = function(wep,stat) return stat * 0.9 end,
		["KickDown"] = function(wep,stat) return stat * 0.9 end,
		["KickHorizontal"] = function(wep,stat) return stat * 0.9 end,
		["Spread"] = function(wep,stat) return stat * 0.95 end,
		["IronAccuracy"] = function(wep,stat) return stat * 0.95 end
	},
	["MoveSpeed"] = function(wep,stat) return stat - 0.01 end,
	["IronSightsMoveSpeed"] = function(wep,stat) return stat * 0.975 end,
	--["HoldType"] = function(wep,stat)
		--return "ar2", true
	--end,
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
	},
	["PumpAction"] = function(wep,val)
		val = table.Copy(val) or {}
		val["type"] = TFA.Enum.ANIMATION_ACT --Sequence or act
		if val.value then
			val["value"] = ACT_VM_PULLBACK_LOW
		end
		if val.value_is then
			val["value_is"] = ACT_VM_PULLBACK_HIGH
		end
		return val, true, true
	end
}

function ATTACHMENT:Attach( wep )
end

function ATTACHMENT:Detach( wep )
end

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end