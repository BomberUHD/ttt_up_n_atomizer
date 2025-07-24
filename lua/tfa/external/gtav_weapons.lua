local misc_path = "misc/"
local pi_path = "pistol/"
local hpi_path = "heavy_pistol/"
local ar_path = "assault_rifle/"
local sc_path = "special_carbine/"
local psg_path = "pump_shotgun/"
local asg_path = "assault_shotgun/"
local mg_path = "mg/"
local smg_path = "smg/"
local sr_path = "sniper_rifle/"
local mmr_path = "marksman_rifle/"
local cp_path = "combat_pistol/"
local fg_path = "flare_gun/"
local gl_path = "grenade_launcher/"
local ssg_path = "sweeper_shotgun/"
local hsg_path = "heavy_shotgun/"
local cr_path = "carbine_rifle/"
local bpr_path = "bullpup_rifle/"
local asmg_path = "assault_smg/"
local cmg_path = "combat_mg/"
local app_path = "ap_pistol/"
local p50_path = "pistol50/"
local hr_path = "heavy_revolver/"
local dbs_path = "doublebarrel_shotgun/"
local hs_path = "heavy_sniper/"
local pdw_path = "combat_pdw/"
local aar_path = "advanced_rifle/"
local gs_path = "gusenberg_sweeper/"
local mkt_path = "musket/"
local mismg_path = "micro_smg/"
local cgl_path = "compact_grenade_launcher/"
local snsp_path = "sns_pistol/"
local comr_path = "compact_rifle/"
local mpi_path = "machine_pistol/"
local msmg_path = "mini_smg/"
local mksmp_path = "marksman_pistol/"
local bpsg_path = "bullpup_shotgun/"
local vp_path = "vintage_pistol/"
local sb_path = "switchblade/"
local dar_path = "doubleactionrevolver/"
local cerp_path = "ceramicpistol/"

TFA.AddFireSound("Pistol.1", pi_path .. "pistol_shot.wav", CHAN_STATIC )
TFA.AddFireSound("Pistol.2", pi_path .. "silenced_shot.wav", CHAN_STATIC)
TFA.AddFireSound("Pistol.3", pi_path .. "fire_mk2.wav", CHAN_STATIC)
TFA.AddFireSound("Heavy_Pistol.1", hpi_path .. "heavypistol_shot.wav", CHAN_STATIC)
TFA.AddFireSound("Heavy_Pistol.2", hpi_path .. "silenced_shot.wav", CHAN_STATIC)
TFA.AddFireSound("Assault_Rifle.1", ar_path .. "assault_rifle_fire.wav", CHAN_STATIC)
TFA.AddFireSound("Assault_Rifle.2", ar_path .. "suppressed_shot.wav", CHAN_STATIC)
TFA.AddFireSound("Assault_Rifle.3", ar_path .. "fire_mk2.wav", CHAN_STATIC)
TFA.AddFireSound("Special_Carbine.1", sc_path .. "special_carbine_fire.wav", CHAN_STATIC)
TFA.AddFireSound("Special_Carbine.2", sc_path .. "suppressed_shot.wav", CHAN_STATIC)
TFA.AddFireSound("Special_Carbine.3", sc_path .. "fire_mk2.wav", CHAN_STATIC)
TFA.AddFireSound("Pump_Shotgun.1", psg_path .. "shotgun_shot.wav", CHAN_STATIC)
TFA.AddFireSound("Pump_Shotgun.2", psg_path .. "shotgun_suppressed.wav", CHAN_STATIC)
TFA.AddFireSound("Pump_Shotgun.3", psg_path .. "fire_mk2.wav", CHAN_STATIC)
TFA.AddFireSound("Assault_Shotgun.1", asg_path .. "fire.wav", CHAN_STATIC)
TFA.AddFireSound("Assault_Shotgun.2", asg_path .. "shotgun_suppressed.wav", CHAN_STATIC)
TFA.AddFireSound("MG.1", mg_path .. "mg_fire.wav", CHAN_STATIC)
TFA.AddFireSound("SMG.1", smg_path .. "smg_fire.wav", CHAN_STATIC)
TFA.AddFireSound("SMG.2", smg_path .. "suppressed_fire.wav", CHAN_STATIC)
TFA.AddFireSound("SMG.3", smg_path .. "fire_mk2.wav", CHAN_STATIC)
TFA.AddFireSound("Sniper_Rifle.1", sr_path .. "sniper_shot.wav", CHAN_STATIC)
TFA.AddFireSound("Sniper_Rifle.2", sr_path .. "suppressed_shot.wav", CHAN_STATIC)
TFA.AddFireSound("Marksman_Rifle.1", mmr_path .. "fire.wav", CHAN_STATIC)
TFA.AddFireSound("Marksman_Rifle.2", mmr_path .. "suppressed_shot.wav", CHAN_STATIC)
TFA.AddFireSound("Marksman_Rifle.3", mmr_path .. "fire_mk2.wav", CHAN_STATIC)
TFA.AddFireSound("Combat_Pistol.1", cp_path .. "combatpistol_fire.wav", CHAN_STATIC)
TFA.AddFireSound("Flare_Gun.1", fg_path .. "flare_shot.wav", CHAN_STATIC)
TFA.AddFireSound("Grenade_Launcher.1", gl_path .. "grenade_launch.wav", CHAN_STATIC)
TFA.AddFireSound("Sweeper_Shotgun.1", ssg_path .. "sweepershotgun_fire.wav", CHAN_STATIC)
TFA.AddFireSound("Heavy_Shotgun.1", hsg_path .. "heavyshotgun_fire.wav", CHAN_STATIC)
TFA.AddFireSound("Carbine_Rifle.1", cr_path .. "carbine_rifle_fire.wav", CHAN_STATIC)
TFA.AddFireSound("Carbine_Rifle.3", cr_path .. "fire_mk2.wav", CHAN_STATIC)
TFA.AddFireSound("Bullpup_Rifle.1", bpr_path .. "bullpuprifle_shot.wav", CHAN_STATIC)
TFA.AddFireSound("Bullpup_Rifle.2", bpr_path .. "suppressed_shot.wav", CHAN_STATIC)
TFA.AddFireSound("Bullpup_Rifle.3", bpr_path .. "fire_mk2.wav", CHAN_STATIC)
TFA.AddFireSound("Assault_SMG.1", asmg_path .. "smg_fire.wav", CHAN_STATIC)
TFA.AddFireSound("Combat_MG.1", cmg_path .. "fire.wav")
TFA.AddFireSound("Combat_MG.3", cmg_path .. "fire_mk2.wav")
TFA.AddFireSound("AP_Pistol.1", app_path .. "fire.wav", CHAN_STATIC)
TFA.AddFireSound("AP_Pistol.2", app_path .. "suppressed_shot.wav", CHAN_STATIC)
TFA.AddFireSound("Pistol.50.1", p50_path .. "fire.wav", CHAN_STATIC)
TFA.AddFireSound("Revolver.1", hr_path .. "fire.wav", CHAN_STATIC)
TFA.AddFireSound("Revolver.2", hr_path .. "fire_mk2.wav", CHAN_STATIC)
TFA.AddFireSound("Heavy_Sniper.1", hs_path .. "fire.wav", CHAN_STATIC)
TFA.AddFireSound("Heavy_Sniper.2", hs_path .. "fire_silenced.wav", CHAN_STATIC)
TFA.AddFireSound("Heavy_Sniper.3", hs_path .. "fire_mk2.wav", CHAN_STATIC)
TFA.AddFireSound("Combat_PDW.1", pdw_path .. "suppressed_shot.wav", CHAN_STATIC)
TFA.AddFireSound("Advanced_Rifle.1", aar_path .. "fire.wav", CHAN_STATIC)
TFA.AddFireSound("Gusenberg_Sweeper.1", gs_path .. "fire.wav", CHAN_STATIC)
TFA.AddFireSound("Musket.1", mkt_path .. "fire.wav", CHAN_STATIC)
TFA.AddFireSound("Micro_SMG.1", mismg_path .. "fire.wav")
TFA.AddFireSound("Micro_SMG.2", mismg_path .. "suppressed_shot.wav")
TFA.AddFireSound("Compact_Grenade_Launcher.1", cgl_path .. "fire.wav", CHAN_STATIC)
TFA.AddFireSound("SNS_Pistol.1", snsp_path .. "fire.wav", CHAN_STATIC)
TFA.AddFireSound("SNS_Pistol.3", snsp_path .. "fire_mk2.wav", CHAN_STATIC)
TFA.AddFireSound("Compact_Rifle.1", comr_path .. "fire.wav", CHAN_STATIC)
TFA.AddFireSound("Machine_Pistol.1", mpi_path .. "fire.wav", CHAN_STATIC )
TFA.AddFireSound("Machine_Pistol.2", mpi_path .. "suppressed_fire.wav", CHAN_STATIC )
TFA.AddFireSound("Mini_SMG.1", msmg_path .. "fire.wav", CHAN_STATIC )
TFA.AddFireSound("Marksman_Pistol.1", mksmp_path .. "fire.wav", CHAN_STATIC)
TFA.AddFireSound("Bullpup_Shotgun.1", bpsg_path .. "fire.wav", CHAN_STATIC)
TFA.AddFireSound("Bullpup_Shotgun.2", bpsg_path .. "fire_suppressed.wav", CHAN_STATIC)
TFA.AddFireSound("Vintage_Pistol.1", vp_path .. "fire.wav", CHAN_STATIC)
TFA.AddFireSound("Double_Barrel.1", dbs_path .. "shotgun_shot.wav", CHAN_STATIC )
TFA.AddFireSound("DRevolver.1", dar_path .. "fire.wav", CHAN_STATIC)
TFA.AddFireSound("CeramicPistol.1", cerp_path .. "fire.wav", CHAN_STATIC)
TFA.AddFireSound("NavyRevolver.1", "navy_revolver/fire.wav", CHAN_STATIC)

TFA.AddWeaponSound("Pistol.slide_up", pi_path .. "slide_up.wav")
TFA.AddWeaponSound("Pistol.mag_in", pi_path .. "mag_in.wav")
TFA.AddWeaponSound("Pistol.mag_out", pi_path .. "mag_out.wav")
TFA.AddWeaponSound("Pistol.slide_back", pi_path .. "slide_back.wav")
TFA.AddWeaponSound("Pistol.slide_up", pi_path .. "slide_up.wav")
TFA.AddWeaponSound("Assault_Rifle.mag_in", ar_path .. "mag_in.wav")
TFA.AddWeaponSound("Assault_Rifle.mag_out", ar_path .. "mag_out.wav")
TFA.AddWeaponSound("Assault_Rifle.pullback", ar_path .. "pullback.wav")
TFA.AddWeaponSound("Pump_Shotgun.pump", psg_path .. "pump.wav")
TFA.AddWeaponSound("Pump_Shotgun.shell_in", psg_path .. "shell_in.wav")
TFA.AddWeaponSound("Assault_Shotgun.mag_out", asg_path .. "mag_out.wav")
TFA.AddWeaponSound("Assault_Shotgun.mag_in", asg_path .. "mag_in.wav")
TFA.AddWeaponSound("Assault_Shotgun.pullback", asg_path .. "pullback.wav")
TFA.AddWeaponSound("MG.mag_out", mg_path .. "mag_out.wav")
TFA.AddWeaponSound("MG.mag_in_and_open", mg_path .. "mag_in_and_open.wav")
TFA.AddWeaponSound("MG.pull_and_close", mg_path .. "pull_and_close.wav")
TFA.AddWeaponSound("MG.pullback", mg_path .. "pullback.wav")
TFA.AddWeaponSound("SMG.pullback", smg_path .. "pullback.wav")
TFA.AddWeaponSound("SMG.mag_out", smg_path .. "mag_out.wav")
TFA.AddWeaponSound("SMG.mag_in", smg_path .. "mag_in.wav")
TFA.AddWeaponSound("SMG.pullup", smg_path .. "pullup.wav")
TFA.AddWeaponSound("Sniper_Rifle.bolt_up", sr_path .. "bolt_up.wav")
TFA.AddWeaponSound("Sniper_Rifle.bolt_back", sr_path .. "bolt_back.wav")
TFA.AddWeaponSound("Sniper_Rifle.bolt_foward", sr_path .. "bolt_foward.wav")
TFA.AddWeaponSound("Sniper_Rifle.mag_in", sr_path .. "mag_in.wav")
TFA.AddWeaponSound("Sniper_Rifle.mag_out", sr_path .. "mag_out.wav")
TFA.AddWeaponSound("Sniper_Rifle.pullback", sr_path .. "pullback.wav")
TFA.AddWeaponSound("Sniper_Rifle.pushfoward", sr_path .. "pushfoward.wav")
TFA.AddWeaponSound("Marksman_Rifle.mag_in", mmr_path .. "mag_in.wav")
TFA.AddWeaponSound("Marksman_Rifle.mag_out", mmr_path .. "mag_out.wav")
TFA.AddWeaponSound("Marksman_Rifle.pullback", mmr_path .. "pullback.wav")
TFA.AddWeaponSound("Flare_Gun.open", fg_path .. "open.wav")
TFA.AddWeaponSound("Flare_Gun.insert", fg_path .. "insert.wav")
TFA.AddWeaponSound("Flare_Gun.close", fg_path .. "close.wav")
TFA.AddWeaponSound("Grenade_Launcher.rotate", gl_path .. "rotate.wav")
TFA.AddWeaponSound("Grenade_Launcher.open", gl_path .. "open.wav")
TFA.AddWeaponSound("Grenade_Launcher.remove", gl_path .. "remove.wav")
TFA.AddWeaponSound("Grenade_Launcher.insert_and_close", gl_path .. "insert_and_close.wav")
TFA.AddWeaponSound("Sweeper_Shotgun.insert", ssg_path .. "insert.wav")
TFA.AddWeaponSound("Sweeper_Shotgun.pullback", ssg_path .. "pullback.wav")
TFA.AddWeaponSound("Combat_MG.mag_out", cmg_path .. "mag_out.wav")
TFA.AddWeaponSound("Combat_MG.mag_in_and_open", cmg_path .. "mag_in_and_open.wav")
TFA.AddWeaponSound("Combat_MG.pull_bandolier", cmg_path .. "pull_bandolier.wav")
TFA.AddWeaponSound("Combat_MG.close", cmg_path .. "close.wav")
TFA.AddWeaponSound("Combat_MG.pullback", cmg_path .. "pullback.wav")
TFA.AddWeaponSound("Revolver.cock_back", hr_path .. "cock_back.wav")
TFA.AddWeaponSound("Revolver.push_out", hr_path .. "push_out.wav")
TFA.AddWeaponSound("Revolver.release", hr_path .. "release.wav")
TFA.AddWeaponSound("Revolver.mag_in", hr_path .. "mag_in.wav")
TFA.AddWeaponSound("Revolver.push_in", hr_path .. "push_in.wav")
TFA.AddWeaponSound("Double_Barrel.open", dbs_path .. "open.wav")
TFA.AddWeaponSound("Double_Barrel.shell_out", dbs_path .. "shell_out.wav")
TFA.AddWeaponSound("Double_Barrel.shell_in", dbs_path .. "shell_in.wav")
TFA.AddWeaponSound("Double_Barrel.close", dbs_path .. "close.wav")
TFA.AddWeaponSound("Heavy_Sniper.mag_in", hs_path .. "mag_in.wav")
TFA.AddWeaponSound("Heavy_Sniper.mag_out", hs_path .. "mag_out.wav")
TFA.AddWeaponSound("Heavy_Sniper.pullback", hs_path .. "pullback.wav")
TFA.AddWeaponSound("Musket.draw_back", mkt_path .. "draw_back.wav")
TFA.AddWeaponSound("Musket.charge_pullout", mkt_path .. "charge_pullout.wav")
TFA.AddWeaponSound("Musket.pour", mkt_path .. "pour.wav")
TFA.AddWeaponSound("Musket.holster_charge", mkt_path .. "holster_charge.wav")
TFA.AddWeaponSound("Musket.prime", mkt_path .. "prime.wav")
TFA.AddWeaponSound("Micro_SMG.mag_out", mismg_path .. "mag_out.wav")
TFA.AddWeaponSound("Micro_SMG.mag_in", mismg_path .. "mag_in.wav")
TFA.AddWeaponSound("Micro_SMG.pullback", mismg_path .. "pullback.wav")
TFA.AddWeaponSound("CGL.open", cgl_path .. "open.wav")
TFA.AddWeaponSound("CGL.insert", cgl_path .. "insert.wav")
TFA.AddWeaponSound("CGL.close", cgl_path .. "close.wav")
TFA.AddWeaponSound("Machine_Pistol.mag_out", mpi_path .. "magout.wav")
TFA.AddWeaponSound("Machine_Pistol.mag_in", mpi_path .. "magin.wav")
TFA.AddWeaponSound("Machine_Pistol.mag_out", mpi_path .. "magout.wav")
TFA.AddWeaponSound("Machine_Pistol.slideback", mpi_path .. "slideback.wav")
TFA.AddWeaponSound("Machine_Pistol.slidefoward", mpi_path .. "slidefoward.wav")
TFA.AddWeaponSound("Mini_SMG.mag_out", msmg_path .. "mag_out.wav")
TFA.AddWeaponSound("Mini_SMG.mag_in", msmg_path .. "mag_in.wav")
TFA.AddWeaponSound("Marksman_Pistol.open", mksmp_path .. "open.wav")
TFA.AddWeaponSound("Marksman_Pistol.insert", mksmp_path .. "insert.wav")
TFA.AddWeaponSound("Marksman_Pistol.open", mksmp_path .. "open.wav")
TFA.AddWeaponSound("Marksman_Pistol.close", mksmp_path .. "close.wav")
TFA.AddWeaponSound("Bullpup_Shotgun.shell_in", bpsg_path .. "shell_in.wav")
TFA.AddWeaponSound("Bullpup_Shotgun.pump", bpsg_path .. "pump.wav")
TFA.AddWeaponSound("switchblade.blade_out", sb_path .. "deploy.wav")
TFA.AddWeaponSound("DRevolver.push_out", dar_path .. "barrel_out.wav")
TFA.AddWeaponSound("DRevolver.release", dar_path .. "bullets_out.wav")
TFA.AddWeaponSound("DRevolver.mag_in", dar_path .. "bullets_in.wav")
TFA.AddWeaponSound("DRevolver.push_in", dar_path .. "barrel_in.wav")
TFA.AddWeaponSound("NavyRevolver.push_lever", "navy_revolver/push_lever.wav")
TFA.AddWeaponSound("NavyRevolver.slide_up", "navy_revolver/slide_up.wav")
TFA.AddWeaponSound("NavyRevolver.mag_out", "navy_revolver/mag_out.wav")
TFA.AddWeaponSound("NavyRevolver.mag_in", "navy_revolver/mag_in.wav")
TFA.AddWeaponSound("NavyRevolver.close", "navy_revolver/close.wav")
TFA.AddWeaponSound("Pistol.dry_fire", "misc/pistol_dry_fire.wav", CHAN_STATIC)
TFA.AddWeaponSound("Rifle.dry_fire", "misc/rifle_dry_fire.wav", CHAN_STATIC)
TFA.AddWeaponSound("Shotgun.dry_fire", "misc/shotgun_dry_fire.wav", CHAN_STATIC)
TFA.AddWeaponSound("Sniper.dry_fire", "misc/sniper_dry_fire.wav", CHAN_STATIC)
TFA.AddWeaponSound("MG.dry_fire", "misc/mg_dry_fire.wav", CHAN_STATIC)
TFA.AddWeaponSound("SMG.dry_fire", "misc/smg_dry_fire.wav", CHAN_STATIC)
TFA.AddWeaponSound("Revolver.dry_fire", "misc/revolver_dry_fire.wav", CHAN_STATIC)

TFA.AddAmmo( "gtav_flares", "Flares" )


TFA.AddAmmo( "gtav_machinegun", "Generic Light Machine Gun")




