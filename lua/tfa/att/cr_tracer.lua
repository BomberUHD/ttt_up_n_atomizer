if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Tracer Ammunition"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.AttachmentColors["+"], "Bullets with bright visible markers that match the color of your reticule" }
ATTACHMENT.Icon = "entities/cr_tracer.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "TRACER"

ATTACHMENT.WeaponTable = {
	["Skin"] = 1,
	["Tracer"] = true,
	["TracerName"] = "custom_tracer"
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