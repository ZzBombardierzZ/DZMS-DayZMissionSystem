/*
	EpochExtConfig.sqf
	This config file is loaded in DZMSInit.sqf if the Epoch mod is detected.
	It contains specific AI, Crate, and Vehicle configurations for DayZ Epoch.
*/

// Generates keys for mission vehicles and places it in the gear. Only works if DZMSSaveVehicles is set to true and Epoch is detected.
DZMSMakeVehKey = true;

//If you have ZSC installed then you can set this to true to place money in ai wallets.
DZMSAICheckWallet = false;

// Do you want AI to use RPG7V's?
// Odd numbered AI will spawn with one if enabled.
DZMSUseRPG = false;

// Do you want static M2 heavy machine gunners at the missions? (Some of the easier missions don't have them).
DZMSM2Static = false;

///////////////////////////////////////////////
// Arrays of skin classnames for the AI to use
DZMSBanditSkins = ["Bandit1_DZ","BanditW1_DZ","TK_INS_Warlord_EP1_DZ","GUE_Commander_DZ"];
DZMSHeroSkins = ["Soldier_Sniper_PMC_DZ","Survivor2_DZ","SurvivorW2_DZ","Soldier1_DZ","Camo1_DZ","UN_CDF_Soldier_EP1_DZ"];

////////////////////////
// Array of AI Skills
DZMSSkills0 = [
	["aimingAccuracy",0.10],
	["aimingShake",0.45],
	["aimingSpeed",0.45],
	["endurance",0.40],
	["spotDistance",0.30],
	["spotTime",0.30],
	["courage",0.40],
	["reloadSpeed",0.50],
	["commanding",0.40],
	["general",0.40]
];

DZMSSkills1 = [
	["aimingAccuracy",0.125],
	["aimingShake",0.60],
	["aimingSpeed",0.60],
	["endurance",0.55],
	["spotDistance",0.45],
	["spotTime",0.45],
	["courage",0.55],
	["reloadSpeed",0.60],
	["commanding",0.55],
	["general",0.55]
];

DZMSSkills2 = [
	["aimingAccuracy",0.15],
	["aimingShake",0.75],
	["aimingSpeed",0.70],
	["endurance",0.70],
	["spotDistance",0.60],
	["spotTime",0.60],
	["courage",0.70],
	["reloadSpeed",0.70],
	["commanding",0.70],
	["general",0.70]
];

DZMSSkills3 = [	
	["aimingAccuracy",0.20],
	["aimingShake",0.85],
	["aimingSpeed",0.80],
	["endurance",0.80],
	["spotDistance",0.70],
	["spotTime",0.70],
	["courage",0.80],
	["reloadSpeed",0.80],
	["commanding",0.80],
	["general",0.80]
];

// Set the bloodbag type
local _bloodbag = ["bloodBagONEG","ItemBloodbag"] select dayz_classicBloodBagSystem;

/////////////////////////////////////////////////////////////
// These are gear sets that will be randomly given to the AI
DZMSGear0 = [
	["ItemBandage","ItemBandage","ItemAntibiotic","ItemPainkiller","ItemSodaGrapeDrink","FoodBaconCooked"],
	["ItemKnife","ItemFlashlight"]
];

DZMSGear1 = [
	["ItemBandage","ItemBandage","ItemPainkiller","ItemMorphine","ItemSodaRocketFuel","FoodGoatCooked"],
	["ItemToolbox","ItemEtool"]
];

DZMSGear2 = [
	["ItemBandage","ItemAntibacterialWipe",_bloodbag,"ItemPainkiller","ItemSodaSacrite","FishCookedTrout"],
	["ItemMatchbox","ItemHatchet"]
];

DZMSGear3 = [
	["ItemBandage","ItemBandage","ItemMorphine","ItemHeatPack","ItemSodaRabbit","FoodMRE"],
	["ItemCrowbar","ItemMachete"]
];

DZMSGear4 = [
	["ItemBandage","ItemAntibacterialWipe","ItemEpinephrine",_bloodbag,"ItemSodaMtngreen","FoodRabbitCooked"],
	["ItemGPS","Binocular_Vector"]
];

/////////////////////////////////////////////////////////////////////////////////////////////
// These are arrays of vehicle classnames for the missions.
// Adjust to your liking.

//Armed Choppers
DZMSChoppers = ["BAF_Merlin_DZE","UH60M_MEV_EP1_DZ","CH_47F_EP1_DZE","UH1H_DZE","Mi17_DZE","UH60M_EP1_DZE","UH1Y_DZE","MH60S_DZE","UH1H_CDF_DZE","UH1H_WD_DZE","UH1H_2_DZE","UH1H_DES_DZE","UH1H_GREY_DZE","UH1H_BLACK_DZE","UH1H_SAR_DZE","Mi17_DZE","Mi17_TK_EP1_DZE","Mi17_UN_CDF_EP1_DZE","Mi17_CDF_DZE","Mi17_DES_DZE","Mi17_GREEN_DZE","Mi17_BLUE_DZE","Mi17_BLACK_DZE","Mi171Sh_CZ_EP1_DZE","MH60S_DZE","Ka60_GL_PMC_DZE","AW159_Lynx_BAF_DZE","UH60M_EP1_DZE","UH1Y_DZE","CH_47F_EP1_DZE","CH_47F_EP1_Black_DZE","CH_47F_EP1_GREY_DZE","CH_47F_EP1_DES_DZE","pook_transport_DZE","pook_transport_CDF_DZE","pook_gunship_DZE","pook_gunship_CDF_DZE"];

//Small Vehicles
DZMSSmallVic = ["hilux1_civil_3_open_DZE","SUV_TK_CIV_EP1_DZE","HMMWV_DZ","UAZ_Unarmed_UN_EP1_DZE","HMMWV_Ambulance_CZ_DES_EP1_DZE","LandRover_TK_CIV_EP1_DZE","SUV_Camo","Nissan_Orange_DZE","BTR40_TK_INS_EP1_DZE","Jeep_DZE","ScrapAPC_DZE","Tractor_Armored_DZE"];

//Large Vehicles
DZMSLargeVic = ["Kamaz_DZE","MTVR_DES_EP1_DZE","Ural_INS_DZE","Ural_CDF_DZE","Ural_TK_CIV_EP1_DZE","Ural_UN_EP1_DZE","V3S_Open_TK_CIV_EP1_DZE","V3S_Open_TK_EP1_DZE","T810A_ACR_DZE","T810A_ACR_DES_DZE","T810A_ACR_OPEN_DZE","T810A_ACR_DES_OPEN_DZE","MTVR_Open_DZE","MTVR_DZE"];

////////////////////////////////////////////////////////////////
// Weapons Arrays -  These can be adjusted as desired or make your own custom arrays
DZMSPistol = ["Revolver_DZ","Colt_Revolver_DZ","Colt_Anaconda_DZ","Colt_Bull_DZ","Colt_Python_DZ","DesertEagle_DZ","M1911_DZ","M1911_2_DZ","Kimber_M1911_DZ","Kimber_M1911_SD_DZ","USP_DZ","USP_SD_DZ","PPK_DZ","Tokarew_TT33_DZ","Makarov_DZ","Makarov_SD_DZ","APS_DZ","APS_SD_DZ","P38_DZ","BrowningHP_DZ","MK22_DZ","MK22_SD_DZ","MK22_2_DZ","MK22_2_SD_DZ","P226_DZ","P226_Silver_DZ","M9_DZ","M9_SD_DZ","M9_Camo_DZ","M9_Camo_SD_DZ","M93R_DZ","CZ75P_DZ","CZ75D_DZ","CZ75SP_DZ","CZ75SP_SD_DZ","G17_DZ","G18_DZ","P99_Black_DZ","P99_Black_SD_DZ","P99_Green_DZ","P99_Green_SD_DZ","P99_Silver_DZ","P99_Silver_SD_DZ"];
DZMSAssault = ["M16A2_DZ","M4A1_DZ","M4A1_SD_DZ","SA58_RIS_DZ","L85A2_DZ","L85A2_SD_DZ","AKM_DZ","G36C_DZ","G36C_SD_DZ","G36A_Camo_DZ","G36K_Camo_DZ","G36K_Camo_SD_DZ","CTAR21_DZ","ACR_WDL_DZ","ACR_WDL_SD_DZ","ACR_BL_DZ","ACR_BL_SD_DZ","ACR_DES_DZ","ACR_DES_SD_DZ","ACR_SNOW_DZ","ACR_SNOW_SD_DZ","AK74_DZ","AK74_SD_DZ","AK107_DZ","CZ805_A1_DZ","CZ805_A1_GL_DZ","CZ805_A2_DZ","CZ805_A2_SD_DZ","CZ805_B_GL_DZ","Famas_DZ","Famas_SD_DZ","G3_DZ","HK53A3_DZ","HK416_DZ","HK416_SD_DZ","HK417_DZ","HK417_SD_DZ","HK417C_DZ","M1A_SC16_BL_DZ","M1A_SC16_TAN_DZ","M1A_SC2_BL_DZ","Masada_DZ","Masada_SD_DZ","Masada_BL_DZ","Masada_BL_SD_DZ","MK14_DZ","MK14_SD_DZ","MK16_DZ","MK16_CCO_SD_DZ","MK16_BL_CCO_DZ","MK16_BL_Holo_SD_DZ","MK17_DZ","MK17_CCO_SD_DZ","MK17_ACOG_SD_DZ","MK17_BL_Holo_DZ","MK17_BL_GL_ACOG_DZ","MR43_DZ","PDR_DZ","RK95_DZ","RK95_SD_DZ","SCAR_H_AK_DZ","SteyrAug_A3_Green_DZ","SteyrAug_A3_Black_DZ","SteyrAug_A3_Blue_DZ","XM8_DZ","XM8_DES_DZ","XM8_GREY_DZ","XM8_GREY_2_DZ","XM8_GL_DZ","XM8_DES_GL_DZ","XM8_GREY_GL_DZ","XM8_Compact_DZ","XM8_DES_Compact_DZ","XM8_GREY_Compact_DZ","XM8_GREY_2_Compact_DZ","XM8_SD_DZ"];
DZMSLMG = ["L110A1_DZ","M249_DZ","M240_DZ","Mk48_DZ","RPK_DZ","UK59_DZ","PKM_DZ","Mk43_DZ","MK43_M145_DZ","RPK74_DZ","XM8_SAW_DZ","XM8_DES_SAW_DZ","XM8_GREY_SAW_DZ"];
DZMSSMG = ["Bizon_DZ","Bizon_SD_DZ","MP5_DZ","MP5_SD_DZ","Scorpion_Evo3_DZ","Scorpion_Evo3_CCO_SD_DZ","Groza9_DZ","Groza1_DZ","KAC_PDW_DZ","Kriss_DZ","Kriss_SD_DZ","M31_DZ","MAT49_DZ","MP7_DZ","MP7_SD_DZ","P90_DZ","P90_SD_DZ","Sten_MK_DZ","TMP_DZ","TMP_SD_DZ","UMP_DZ","UMP_SD_DZ","VAL_DZ"];
DZMSSniper = ["Mosin_PU_DZ","M4SPR_DZE","M14_DZ","M24_DZ","M24_DES_DZ","M40A3_DZ","SVD_DZ","SVD_PSO1_Gh_DES_DZ","FNFAL_DZ","DMR_DZ","L115A3_DZ","L115A3_2_DZ","Barrett_MRAD_Sniper_DZ","CZ750_DZ","Groza9_Sniper_DZ","Groza1_Sniper_DZ","HK417_Sniper_DZ","HK417_Sniper_SD_DZ","M1A_SC16_TAN_Sniper_DZ","M1A_SC16_BL_Sniper_DZ","M1A_SC2_BL_Sniper_DZ","M21_DZ","M21A5_DZ","M21A5_SD_DZ","M200_CheyTac_DZ","M200_CheyTac_SD_DZ","MK14_Sniper_DZ","MK14_Sniper_SD_DZ","MK17_Sniper_DZ","MK17_Sniper_SD_DZ","MSR_DZ","MSR_SD_DZ","MSR_NV_DZ","MSR_NV_SD_DZ","RSASS_DZ","RSASS_SD_DZ","SVU_PSO1_DZ","WA2000_DZ","XM8_Sharpsh_DZ","XM8_DES_Sharpsh_DZ","XM8_GREY_Sharpsh_DZ","XM2010_DZ","XM2010_SD_DZ","XM2010_NV_DZ","XM2010_NV_SD_DZ"];
DZMSSingleShot = ["Remington870_DZ","M1014_DZ","Winchester1866_DZ","LeeEnfield_DZ","CZ550_DZ","USAS12_DZ"];

// Weapon arrays that can spawn on the AI
DZMSAIWeps = [DZMSAssault,DZMSSMG,DZMSSingleShot,DZMSLMG,DZMSSniper];

// Weapon arrays that can spawn in the crates - Pistols spawn separately
DZMSCrateWeps = [DZMSAssault,DZMSLMG,DZMSSniper];

// Items and tools that can be added to crates
DZMSGeneralStore = ["forest_net_kit","ItemMixOil","ItemWaterBottleSafe","ItemSodaCoke","ItemSodaPepsi","ItemSodaMdew","ItemSodaMtngreen","ItemSodaR4z0r","ItemSodaClays","ItemSodaSmasht","ItemSodaDrwaste","ItemSodaFranka","ItemSodaLemonade","ItemSodaLirik","ItemSodaLvg","ItemSodaMzly","ItemSodaPeppsy","ItemSodaRabbit","ItemSodaSacrite","ItemSodaRocketFuel","ItemSodaGrapeDrink","ItemSherbet","FoodPistachio","FoodNutmix","FoodChipsSulahoops","FoodChipsMysticales","FoodChipsChocolate","FoodCandyChubby","FoodCandyAnders","FoodCandyLegacys","FoodCandyMintception","FoodCakeCremeCakeClean","FoodCanBeef","FoodCanPotatoes","FoodCanGriff","FoodCanBadguy","FoodCanBoneboy","FoodCanCorn","FoodCanCurgon","FoodCanDemon","FoodCanFraggleos","FoodCanHerpy","FoodCanDerpy","FoodCanOrlok","FoodCanPowell","FoodCanTylers","FoodCanUnlabeled","FoodCanBakedBeans","FoodCanSardines","FoodCanFrankBeans","FoodCanPasta","FoodCanRusUnlabeled","FoodCanRusStew","FoodCanRusPork","FoodCanRusPeas","FoodCanRusMilk","FoodCanRusCorn","ItemJerrycan"];
DZMSCrateTools = ["ItemToolbox","ItemFishingPole","ItemGPS","ItemMap","ItemMachete","ItemKnife","ItemFlashlight","ItemMatchbox","ItemHatchet","Binocular_Vector"];
DZMSMeds = [_bloodbag,"ItemBandage","ItemAntibiotic","ItemPainkiller","ItemMorphine","ItemAntibacterialWipe","ItemEpinephrine","FoodMRE","ItemWaterBottleSafe"];
DZMSPacks = ["Patrol_Pack_DZE1","Assault_Pack_DZE1","Czech_Vest_Pouch_DZE1","TerminalPack_DZE1","TinyPack_DZE1","ALICE_Pack_DZE1","TK_Assault_Pack_DZE1","CompactPack_DZE1","British_ACU_DZE1","GunBag_DZE1","NightPack_DZE1","SurvivorPack_DZE1","AirwavesPack_DZE1","CzechBackpack_DZE1","WandererBackpack_DZE1","LegendBackpack_DZE1","CoyoteBackpack_DZE1","LargeGunBag_DZE1"];

// Items and tools that are only added to crates
DZMSGrenades = ["HandGrenade_west","FlareGreen_M203","FlareWhite_M203"];
DZMSBuildSupply = [[3,"CinderBlocks"],[1,"MortarBucket"],[3,"ItemPole"],[3,"PartPlywoodPack"],[3,"PartPlankPack"],[3,"ItemSandbag"],[3,"ItemWire"],[1,"ItemFireBarrel_kit"],[1,"forest_large_net_kit"],[1,"ItemComboLock"],[1,"ItemLockbox"],[3,"ItemTankTrap"]]; // [Number to add to crate,Item]
DZMSBuildSupply2 = [[3,"CinderBlocks"],[1,"MortarBucket"],[3,"ItemPole"],[3,"PartPlywoodPack"],[3,"PartPlankPack"],[3,"ItemSandbag"],[3,"ItemWire"],[1,"ItemFireBarrel_kit"],[1,"forest_large_net_kit"],[1,"ItemComboLock"],[1,"ItemLockbox"],[3,"ItemTankTrap"]]; // [Number to add to crate,Item]
DZMSBuildTools = ["ItemCrowbar","ItemEtool","ItemToolbox","ItemSledgeHammer","ChainSaw"];
DZMSHighValue = ["ItemBriefcase100oz","ItemVault"];

DZMSAmmoRU = [
	"30Rnd_545x39_AK","30Rnd_545x39_AK","30Rnd_545x39_AKSD","75Rnd_545x39_RPK",
	"30Rnd_762x39_AK47","75Rnd_762x39_RPK",
	"10Rnd_762x54_SVD","100Rnd_762x54_PK",
	"30Rnd_762x39_SA58","50Rnd_762x54_UK59",
	"1Rnd_HE_GP25","FlareGreen_GP25","1Rnd_Smoke_GP25",
	"HandGrenade_East","SmokeShell","SmokeShellRed","SmokeShellGreen","PipeBomb"
];

DZMSAmmoUS = [
	"30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_StanagSD","200Rnd_556x45_M249",
	"20Rnd_762x51_DMR","100Rnd_762x51_M240",
	"30Rnd_556x45_G36","30Rnd_556x45_G36SD",
	"20Rnd_762x51_FNFAL","5Rnd_86x70_L115A1",
	"1Rnd_HE_M203","FlareGreen_M203","1Rnd_Smoke_M203",
	"HandGrenade_West"
];
