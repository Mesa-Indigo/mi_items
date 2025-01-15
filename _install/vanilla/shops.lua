return {
	General = {
		name = 'General Store',
		blip = {
			id = 59, colour = 43, scale = 0.6
		}, inventory = {
			{ name = 'subsandwich', price = 5 },
			{ name = 'hotdog', price = 4 },
			{ name = 'taco_beef', price = 4 },
			{ name = 'taco_chicken', price = 3 },
			{ name = 'taco_pork', price = 4 },

			{ name = 'smk_brand69', price = 12 },
			{ name = 'smk_debonaire', price = 12 },
			{ name = 'smk_redwood', price = 12 },
			{ name = 'vpe_elect1', price = 23 },
			{ name = 'vpe_elect3', price = 23 },

			{ name = 'phone', price = 285 },
			{ name = 'bandage_basic', price = 25 },

		}, locations = {
			vec3(25.0, -1346.75, 29.5),
			vec3(-47.5, -1758.0, 29.5),
			vec3(-706.75, -914.25, 19.25),
			vec3(1164.25, -323.0, 69.25),
			vec3(373.5, 327.3, 103.9),
			
		}, targets = {
			-- Grove Street
			{ loc = vec3(25.0, -1346.75, 29.5), length = 1.0, width = 1.75, heading = 0.0, minZ = 29.5, maxZ = 29.9, distance = 2.0 },
			-- Olympic Freeway
			{ loc = vec3(-47.5, -1758.0, 29.5), length = 1.0, width = 2.0, heading = 320.0, minZ = 29.5, maxZ = 30.2, distance = 2.0 },
			-- Lindsay Circus
			{ loc = vec3(-706.75, -914.25, 19.25), length = 0.75, width = 1.25, heading = 0.0, minZ = 19.25, maxZ = 19.65, distance = 2.0 },
			-- Mirror Park Blvd
			{ loc = vec3(1164.25, -323.0, 69.25), length = 1.0, width = 1.75, heading = 10.0, minZ = 69.25, maxZ = 69.65, distance = 2.0 },
			-- Clinton Ave
			{ loc = vec3(373.5, 327.3, 103.9), length = 1.0, width = 1.75, heading = 10.0, minZ = 103.9, maxZ = 104.3, distance = 2.0 },
			-- Rockford Dr
			{ loc = vec3(-1819.95, 793.05, 138.15), length = 1.5, width = 1.0, heading = 312.5, minZ = 138.15, maxZ = 138.65, distance = 2.0 },

		}
	},

	Grocery = {
		name = 'Grocery',
		inventory = {
			{ name = 'ck_butter', price = 6 },
			{ name = 'ck_cheese', price = 3 },
			{ name = 'ck_tomatoes', price = 4 },
			{ name = 'ck_lettuce', price = 4 },
			{ name = 'ck_onions', price = 4 },

			{ name = 'ck_peppers', price = 6 },
			{ name = 'ck_potatoes', price = 3 },
			{ name = 'ck_eggs', price = 4 },
			{ name = 'ck_beef', price = 4 },
			{ name = 'ck_chkn', price = 4 },

			{ name = 'ck_pork', price = 6 },
			{ name = 'milk', price = 4 },

		}, locations = {
			vec3(32.4, -1342.5, 29.8),
			vec3(-50.15, -1748.2, 29.7),
			vec3(-715.0, -908.55, 19.55),
			vec3(1155.05, -319.25, 69.5),
			vec3(381.5, 329.25, 103.85),

		}, targets = {
			-- Grove Street
			{ loc = vec3(32.4, -1342.5, 29.8), length = 4.3, width = 1, heading = 0.0, minZ = 29.8, maxZ = 30.3, distance = 2.0 },
			-- Olympic Freeway
			{ loc = vec3(-50.15, -1748.2, 29.7), length = 3.0, width = 1, heading = 320.0, minZ = 29.7, maxZ = 30.3, distance = 2.0 },
			-- Lindsay Circus
			{ loc = vec3(-715.0, -908.55, 19.55), length = 2.8, width = 1, heading = 320.0, minZ = 19.55, maxZ = 20.3, distance = 2.0 },
			-- Mirror Park Blvd
			{ loc = vec3(381.5, 329.25, 103.85), length = 2.8, width = 1, heading = 10.0, minZ = 103.85, maxZ = 104.35, distance = 2.0 },
			-- Clinton Ave
			{ loc = vec3(381.5, 329.25, 103.85), length = 2.8, width = 1, heading = 10.0, minZ = 103.85, maxZ = 104.35, distance = 2.0 },
			-- Rockford Dr
			{ loc = vec3(-1830.25, 792.2, 138.55), length = 2.9, width = 1.15, heading = 42.5, minZ = 138.55, maxZ = 138.95, distance = 2.0 },

		}
	},

	Liquor = {
		name = 'Liquor Store',
		blip = {
			id = 59, colour = 50, scale = 0.6
		}, inventory = {
			{ name = 'patriot_beer', price = 8 },
			{ name = 'rancho_beer', price = 9 },
			{ name = 'dusche_beer', price = 10 },
			{ name = 'stronzo_beer', price = 10 },
			{ name = 'tkit_alch', price = 95 },

			{ name = 'bourgeoix_bottle', price = 46 },
			{ name = 'cariaque_bottle', price = 35 },
			{ name = 'bleuterd_bottle', price = 37 },
			{ name = 'ragga_bottle', price = 45 },
			{ name = 'tequilya_bottle', price = 35 },

			{ name = 'nogo_bottle', price = 62 },
			{ name = 'mount_bottle', price = 40 },
			{ name = 'richards_bottle', price = 42 },
			{ name = 'alc_cups', price = 2 },
			{ name = 'alc_shots', price = 1 },

			{ name = 'smk_brand69', price = 12 },
			{ name = 'smk_debonaire', price = 12 },
			{ name = 'smk_redwood', price = 12 },
			{ name = 'vpe_elect1', price = 21 },
			{ name = 'vpe_elect2', price = 21 },
			{ name = 'vpe_elect3', price = 21 },
		}, locations = {
			vec3(1135.808, -982.281, 46.415),
			vec3(-1222.915, -906.983, 12.326),
			vec3(-1487.553, -379.107, 40.163),
			vec3(-2968.243, 390.910, 15.043),
			vec3(1166.024, 2708.930, 38.157),
			vec3(1392.562, 3604.684, 34.980),
			vec3(-1393.409, -606.624, 30.319)
		}, targets = {
			{ loc = vec3(1134.85, -982.5, 46.5), length = 0.55, width = 2.6, heading = 187.75, minZ = 46.5, maxZ = 46.9, distance = 2.0 },
			{ loc = vec3(-1222.25, -907.75, 12.45), length = 0.55, width = 2.6, heading = 123.75, minZ = 12.45, maxZ = 12.95, distance = 2.0 },
			{ loc = vec3(-1486.65, -378.5, 40.3), length = 0.55, width = 2.6, heading = 44.75, minZ = 40.3, maxZ = 40.7, distance = 2.0 },
			{ loc = vec3(-2967.05, 390.75, 15.2), length = 0.55, width = 2.6, heading = 356.0, minZ = 15.2, maxZ = 15.6, distance = 2.0 },
			{ loc = vec3(1165.85, 2710.2, 38.3), length = 0.55, width = 2.6, heading = 270.0, minZ = 38.3, maxZ = 38.7, distance = 2.0 },
			{ loc = vec3(1392.7, 3605.7, 35.1), length = 0.55, width = 2.6, heading = 289.75, minZ = 35.1, maxZ = 35.5, distance = 2.0 },
			-- gabz liqour store
			{ loc = vec3(-160.6, 6321.8, 31.7), length = 0.55, width = 2.6, heading = 225.0, minZ = 31.7, maxZ = 32.1, distance = 2.0 },
		}
	},

	Ammunation = {
		name = 'Ammunation',
		blip = {
			id = 110, colour = 35, scale = 0.6
		}, inventory = {
			{ name = 'WEAPON_FLASHLIGHT', price = 65 },
			{ name = 'WEAPON_KNIFE', price = 200 },
			{ name = 'WEAPON_BAT', price = 100 },
			{ name = 'WEAPON_FLAREGUN', price = 300, metadata = { registered = true } },
			{ name = 'ammo-flare', price = 5, },

			{ name = 'WEAPON_PISTOL', price = 1130, metadata = { registered = true }, license = 'weapon' },
			{ name = 'WEAPON_COMBATPISTOL', price = 1350, metadata = { registered = true }, license = 'weapon' },
			{ name = 'WEAPON_CERAMICPISTOL', price = 1150, metadata = { registered = true }, license = 'weapon' },
			{ name = 'WEAPON_PISTOLXM3', price = 1540, metadata = { registered = true }, license = 'weapon' },
			{ name = 'ammo-9', price = 8, },

			{ name = 'WEAPON_PUMPSHOTGUN', price = 3450, metadata = { registered = true }, license = 'weapon' },
			{ name = 'ammo-shotgun', price = 19, },
			{ name = 'WEAPON_ASSAULTRIFLE', price = 5320, metadata = { registered = true }, license = 'weapon' },
			{ name = 'WEAPON_CARBINERIFLE', price = 5460, metadata = { registered = true }, license = 'weapon' },
			{ name = 'ammo-rifle', price = 23, },

			{ name = 'tkit_weap', price = 350, },
			{ name = 'at_flashlight', price = 350, license = 'weapon' },
			{ name = 'at_grip', price = 360, license = 'weapon' },
			{ name = 'at_scope_small', price = 450, license = 'weapon' },
			{ name = 'at_scope_medium', price = 490, license = 'weapon' },

			{ name = 'bandage_basic', price = 15 },
			{ name = 'firework_s1', price = 35 },
			{ name = 'firework_s2', price = 35 },
		}, locations = {
			vec3(-662.180, -934.961, 21.829),
			vec3(810.25, -2157.60, 29.62),
			vec3(1693.44, 3760.16, 34.71),
			vec3(-330.24, 6083.88, 31.45),
			vec3(252.63, -50.00, 69.94),
			vec3(22.56, -1109.89, 29.80),
			vec3(2567.69, 294.38, 108.73),
			vec3(-1117.58, 2698.61, 18.55),
			vec3(842.44, -1033.42, 28.19)
		}, targets = {
			{ loc = vec3(-326.0, 6080.05, 31.8), length = 0.8, width = 1, heading = 225.25, minZ = 28.55, maxZ = 28.95, distance = 2.0 },
			{ loc = vec3(-659.9, -940.45, 22.15), length = 0.8, width = 1, heading = 180.25, minZ = 22.15, maxZ = 22.55, distance = 2.0 },
			{ loc = vec3(-3166.658, 1085.511, 20.974), length = 0.8, width = 1, heading = 180.25, minZ = 22.15, maxZ = 22.55, distance = 2.0 },
			{ loc = vec3(812.9, -2154.35, 29.9), length = 0.8, width = 1, heading = 180.25, minZ = 29.9, maxZ = 30.3, distance = 2.0 },
			{ loc = vec3(1698.05, 3756.2, 35.0), length = 0.8, width = 1, heading = 227.75, minZ = 34.9, maxZ = 35.3, distance = 2.0 },
			{ loc = vec3(246.5, -50.35, 70.25), length = 0.8, width = 1, heading = 249.75, minZ = 70.25, maxZ = 70.65, distance = 2.0 },
			{ loc = vec3(18.3, -1109.0, 30.1), length = 0.8, width = 1, heading = 249.75, minZ = 30.1, maxZ = 30.5, distance = 2.0 },
			{ loc = vec3(2565.6, 299.6, 109.05), length = 0.8, width = 1, heading = 179.75, minZ = 109.05, maxZ = 109.45, distance = 2.0 },
			{ loc = vec3(-1112.65, 2696.2, 18.9), length = 0.8, width = 1, heading = 131.25, minZ = 18.9, maxZ = 19.3, distance = 2.0 },
			{ loc = vec3(841.95, -1027.9, 28.55), length = 0.8, width = 1, heading = 180.75, minZ = 28.55, maxZ = 28.95, distance = 2.0 },
			{ loc = vec3(-1311.45, -393.25, 37.15), length = 0.8, width = 1, heading = 0.0, minZ = 28.55, maxZ = 28.95, distance = 2.0 },
		}
	},

	DivingDealer = {
		name = 'Aquatics Store',
		blip = {
			id = 729, colour = 18, scale = 0.6
		}, inventory = {
			{ name = 'rebreather', price = 45 },
			{ name = 'divegear', price = 235 },
			{ name = 'bandage_basic', price = 15 },

		}, targets = {
			{ ped = `a_f_y_beach_01`, scenario = 'WORLD_HUMAN_STAND_MOBILE_FACILITY', loc = vec3(-1534.148, -905.941, 9.160), heading = 149.956 },
			{ ped = `a_m_m_beach_01`, scenario = 'WORLD_HUMAN_STAND_MOBILE_FACILITY', loc = vec3(-1218.521, -1516.501, 3.380), heading = 125.518 },
			{ ped = `a_f_y_beach_01`, scenario = 'WORLD_HUMAN_STAND_MOBILE_FACILITY', loc = vec3(-3272.755, 964.904, 7.347), heading =  1.718 },
			{ ped = `a_m_m_beach_01`, scenario = 'WORLD_HUMAN_STAND_MOBILE_FACILITY', loc = vec3(1538.815, 3783.326, 33.206), heading = 208.672 },
			{ ped = `a_m_m_beach_01`, scenario = 'WORLD_HUMAN_STAND_MOBILE_FACILITY', loc = vec3(1311.383, 4366.654, 40.135), heading = 252.57 },
			{ ped = `a_f_y_beach_01`, scenario = 'WORLD_HUMAN_STAND_MOBILE_FACILITY', loc = vec3(-1593.944, 5192.642, 3.310), heading =  213.521 },
		}
	},

	Clothshop = {
		name = 'Bags & Cases',
		inventory = {
			{ name = 'cnt_bcpk1', price = 56 },
			{ name = 'cnt_bcpk2', price = 62 },
			{ name = 'cnt_bcpk3', price = 59 },
			{ name = 'cnt_bfcs1', price = 126 },
			{ name = 'cnt_bfcs2', price = 132 },

			{ name = 'cnt_bfcs3', price = 145 },
			--{ name = 'clothbag', price = 150 },
		}, targets = {
			{ ped = `a_m_y_dhill_01`, scenario = 'WORLD_HUMAN_AA_SMOKE', loc = vec3(1197.937, 2714.696, 37.224), heading = 209.692 },
			{ ped = `a_m_y_bevhills_02`, scenario = 'WORLD_HUMAN_AA_COFFEE', loc = vec3(-3175.711, 1050.305, 19.863), heading = 244.897 },
			{ ped = `a_m_y_gay_02`, scenario = 'WORLD_HUMAN_AA_COFFEE', loc = vec3(-1103.488, 2714.832, 18.110), heading = 236.498 },
			{ ped = `a_m_y_beach_01`, scenario = 'WORLD_HUMAN_AA_COFFEE', loc = vec3(-1123.980, -1437.042, 4.228), heading = 212.451 },
			{ ped = `a_m_m_bevhills_01`, scenario = 'WORLD_HUMAN_AA_COFFEE', loc = vec3(119.975, -217.582, 53.557), heading = 249.686 },
			{ ped = `a_m_m_farmer_01`, scenario = 'WORLD_HUMAN_AA_SMOKE', loc = vec3(1698.755, 4822.130, 41.065), heading = 104.351 },
			{ ped = `a_m_m_business_01`, scenario = 'WORLD_HUMAN_CLIPBOARD', loc = vec3(-712.307, -148.427, 36.423), heading = 214.591 },
			{ ped = `a_m_y_bevhills_02`, scenario = 'WORLD_HUMAN_AA_COFFEE', loc = vec3(-1191.750, -776.395, 16.332), heading = 38.931 },
			{ ped = `a_m_y_business_02`, scenario = 'WORLD_HUMAN_AA_COFFEE', loc = vec3(429.881, -807.745, 28.493), heading = 94.596 },
			{ ped = `a_m_y_business_02`, scenario = 'WORLD_HUMAN_CLIPBOARD', loc = vec3(-165.269, -307.516, 38.742), heading = 342.542 },
			{ ped = `a_m_y_downtown_01`, scenario = 'WORLD_HUMAN_AA_SMOKE', loc = vec3(70.928, -1391.297, 28.378), heading = 276.825 },
			{ ped = `a_m_y_bevhills_02`, scenario = 'WORLD_HUMAN_AA_COFFEE', loc = vec3(-823.470, -1069.041, 10.330), heading = 209.845 },
			{ ped = `a_m_m_business_01`, scenario = 'WORLD_HUMAN_CLIPBOARD', loc = vec3(-1446.820, -233.815, 48.819), heading = 138.659 },
			{ ped = `a_m_y_dhill_01`, scenario = 'WORLD_HUMAN_AA_SMOKE', loc = vec3(6.788, 6508.516, 30.880), heading = 45.957 },
			{ ped = `a_m_m_farmer_01`, scenario = 'WORLD_HUMAN_AA_SMOKE', loc = vec3(622.166, 2759.378, 41.088), heading = 96.776 },
		}
	},

	Mechshop = {
		name = 'Auto Tools',
		inventory = {
			{ name = 'lockpick', price = 12 },
			{ name = 'enginekit', price = 245 },
			{ name = 'cleankit', price = 65 },
			{ name = 'spraykit', price = 330 },
			{ name = 'tirekit', price = 125 },
		}, targets = {
			{ ped = `mp_m_waremech_01`, scenario = 'WORLD_HUMAN_AA_SMOKE', loc = vec3(1154.203, -778.198, 56.598), 	heading = 26.078 },
			{ ped = `s_m_y_xmech_01`, scenario = 'WORLD_HUMAN_CLIPBOARD', loc = vec3(545.611, -173.495, 53.481), 	heading = 109.361 },
			{ ped = `s_m_y_xmech_01`, scenario = 'WORLD_HUMAN_CLIPBOARD', loc = vec3(-1430.279, -444.911, 34.678), 	heading = 15.854 },
			{ ped = `mp_m_waremech_01`, scenario = 'WORLD_HUMAN_AA_SMOKE', loc = vec3(490.232, -1321.101, 28.159), 	heading = 259.805 },
			{ ped = `mp_m_waremech_01`, scenario = 'WORLD_HUMAN_AA_SMOKE', loc = vec3(488.845, -894.574, 24.735), 	heading = 274.546 },
			{ ped = `s_m_y_xmech_02`, scenario = 'WORLD_HUMAN_STAND_MOBILE_FACILITY', loc = vec3(737.290, -1082.044, 21.168), 	heading = 85.266 },
			{ ped = `s_m_y_xmech_02`, scenario = 'WORLD_HUMAN_STAND_MOBILE_FACILITY', loc = vec3(-1148.504, -1999.744, 12.180), heading = 130.957 },
			{ ped = `mp_m_waremech_01`, scenario = 'WORLD_HUMAN_AA_SMOKE', loc = vec3(-347.340, -133.326, 38.009), 	heading = 252.737 },
			{ ped = `s_m_y_xmech_01`, scenario = 'WORLD_HUMAN_CLIPBOARD', loc = vec3(1172.276, 2637.183, 36.793), 	heading = 303.468 },
			{ ped = `s_m_y_xmech_01`, scenario = 'WORLD_HUMAN_CLIPBOARD', loc = vec3(105.910, 6627.513, 30.787), 	heading = 265.732 },
			{ ped = `mp_m_waremech_01`, scenario = 'WORLD_HUMAN_CLIPBOARD', loc = vec3(-187.094, 6273.784, 30.489), heading = 32.841 },
		}
	},

	BlackMarket = {
		name = 'Street Dealer',
		inventory = {
			{ name = 'lockpick', price = 18 },
			{ name = 'armor1', price = 230 },
			{ name = 'armor2', price = 525 },
			{ name = 'armor3', price = 840 },
			{ name = 'bandage_basic', price = 35 },

			{ name = 'fold_table', price = 65 },
			{ name = 'tkit_weed', price = 320 },
			{ name = 'tkit_coke', price = 420 },
			{ name = 'tkit_meth', price = 652 },
			{ name = 'tkit_crim', price = 352 },
		}, targets = {
			{ ped = `g_m_m_armgoon_01`, scenario = 'WORLD_HUMAN_DRUG_DEALER_HARD', loc = vec3(658.613, -1011.115, 21.722), heading = 165.0 },
			{ ped = `g_m_y_mexgoon_02`, scenario = 'WORLD_HUMAN_DRUG_DEALER', loc = vec3(1292.248, -1621.394, 53.224), heading = 203.38 },
			{ ped = `g_m_y_salvagoon_02`, scenario = 'WORLD_HUMAN_DRUG_DEALER_HARD', loc = vec3(613.857, -3067.570, 5.069), heading = 91.68 },
			{ ped = `g_m_y_armgoon_02`, scenario = 'WORLD_HUMAN_DRUG_DEALER', loc = vec3(-504.696, -2215.275, 5.394), heading = 235.108 },
			{ ped = `g_m_m_armlieut_01`, scenario = 'WORLD_HUMAN_DRUG_DEALER_HARD', loc = vec3(-469.610, -1721.951, 17.688), heading = 284.679 },
			{ ped = `g_f_y_vagos_01`, scenario = 'WORLD_HUMAN_DRUG_DEALER_HARD', loc = vec3(452.376, -1562.354, 28.282), heading = 50.72 },
			{ ped = `g_m_y_mexgoon_03`, scenario = 'WORLD_HUMAN_DRUG_DEALER', loc = vec3(135.438, -1048.244, 56.796), heading = 339.577 },
			{ ped = `g_m_y_azteca_01`, scenario = 'WORLD_HUMAN_DRUG_DEALER_HARD', loc = vec3(-173.105, -1064.393, 17.685), heading = 156.868 },
			{ ped = `g_m_y_korean_02`, scenario = 'WORLD_HUMAN_DRUG_DEALER_HARD', loc = vec3(-621.153, 321.665, 81.263), heading = 315.171 },
			{ ped = `g_m_importexport_01`, scenario = 'WORLD_HUMAN_DRUG_DEALER', loc = vec3(-1608.308, -1007.884, 6.613), heading = 319.353 },
			{ ped = `g_f_importexport_01`, scenario = 'WORLD_HUMAN_DRUG_DEALER', loc = vec3(-1127.149, -1458.121, 3.929), heading = 35.142 },
			{ ped = `mp_m_exarmy_01`, scenario = 'WORLD_HUMAN_DRUG_DEALER', loc = vec3(2338.142, 3052.409, 47.151), heading = 244.077 },
			{ ped = `a_m_o_salton_01`, scenario = 'WORLD_HUMAN_DRUG_DEALER', loc = vec3(1554.455, 3600.013, 37.775), heading = 246.025 },
			{ ped = `a_m_m_rurmeth_01`, scenario = 'WORLD_HUMAN_DRUG_DEALER', loc = vec3(90.048, 3749.576, 39.774), heading = 267.811 },
			{ ped = `a_m_m_rurmeth_01`, scenario = 'WORLD_HUMAN_DRUG_DEALER', loc = vec3(-178.243, 6264.185, 30.489), heading = 203.421 },
			{ ped = `g_m_m_armgoon_01`, scenario = 'WORLD_HUMAN_DRUG_DEALER_HARD', loc = vec3(-1098.003, 2724.759, 17.800), heading = 43.013 },
		}
	},

	PrisonDealer = {
		name = 'Prison Dealer',
		inventory = {
			{ name = 'lockpick', price = 15 },
			{ name = 'ejunk', price = 8 },
			{ name = 'candy', price = 10 },
			{ name = 'bandage_basic', price = 8 },

		}, targets = {
			{ ped = `u_m_y_prisoner_01`, scenario = 'WORLD_HUMAN_DRUG_DEALER_HARD', loc = vec3(1724.573, 2496.237, 44.564), heading = 88.994 },
			{ ped = `s_m_y_prisoner_01`, scenario = 'WORLD_HUMAN_DRUG_DEALER', loc = vec3(1627.465, 2565.282, 44.564), heading = 136.072 },
		}
	},

	--------------------------------------------------------------------------------

	GasStationBakedGoods = {
		name = 'Baked Goods',
		inventory = {
			{ name = 'donut1', price = 3 },
			{ name = 'donut2', price = 3 },
			{ name = 'bagel', price = 4 },
		},
		model = {
			`v_ret_247_donuts`
		}
	},

	GasStationBeer = {
		name = 'Beer',
		inventory = {
			{ name = 'rancho_beer', price = 4 },
			{ name = 'dusche_beer', price = 6 },
			{ name = 'stronzo_beer', price = 7 },
			{ name = 'patriot_beer', price = 5 },
		},
		model = {
			`v_ret_247shelves04`
		}
	},

	GasStationSnacks = {
		name = 'Snacks',
		inventory = {
			{ name = 'granbar', price = 4 },
			{ name = 'chips', price = 6 },
			{ name = 'candy', price = 7 },
			{ name = 'smore', price = 5 },
		},
		model = {
			`v_ret_247shelves03`
		}
	},

	GasStationNonPerish = {
		name = 'Groceries',
		inventory = {
			{ name = 'ck_flour', price = 2 },
			{ name = 'ck_bakingp', price = 3 },
			{ name = 'ck_salt', price = 3 },
			{ name = 'ck_pepper', price = 3 },
			{ name = 'ck_sugar', price = 4 },

			{ name = 'ck_spices', price = 2 },
			{ name = 'ck_cookoil', price = 3 },
			{ name = 'ck_bread', price = 5 },
			{ name = 'ck_rice', price = 4 },
			{ name = 'ck_chocolt', price = 4 },

			{ name = 'ck_grhmckr', price = 4 },
			{ name = 'ck_mrshmlw', price = 4 },

		},
		model = {
			`v_ret_247shelves01`, `v_ret_247shelves05`
		}
	},

	GasStationFruits = {
		name = 'Fruits / Vegs',
		inventory = {
			{ name = 'apple', price = 2 },
			{ name = 'banana', price = 3 },
			{ name = 'dragonfruit', price = 5 },
			{ name = 'pineapple', price = 4 },
			{ name = 'nectarine', price = 4 },

			{ name = 'sunkist', price = 3 },
		},
		model = {
			`v_ret_247_fruit`
		}
	},

	GasStationCanDrinks = {
		name = 'Drinks',
		inventory = {
			{ name = 'water', price = 3 },
			{ name = 'ecola', price = 4 },
			{ name = 'ecola_diet', price = 4 },
			{ name = 'sprunk', price = 4 },
			{ name = 'sprunk_diet', price = 4 },

			{ name = 'orangotang', price = 5 },
			{ name = 'orangotang_diet', price = 5 },
			{ name = 'ejunk', price = 9 },
		},
		model = {
			`v_ret_247shelves02`
		}
	},

	GasStationDrinks = {
		name = 'Fountain Drinks',
		inventory = {
			{ name = 'rs_drink1', price = 2 },
			{ name = 'rs_drink2', price = 3 },
			{ name = 'rs_drink3', price = 5 },
		},
		model = {
			`prop_food_bs_soda_01`
		}
	},

	--------------------------------------------------------------------------------

	VendingMachineDrinks = {
		name = 'Vending Machine',
		inventory = {
			{ name = 'water', price = 4 },
			{ name = 'ecola', price = 5 },
			{ name = 'ecola_diet', price = 5 },
			{ name = 'sprunk', price = 5 },
			{ name = 'sprunk_diet', price = 5 },

			{ name = 'orangotang', price = 6 },
			{ name = 'orangotang_diet', price = 6 },
			{ name = 'ejunk', price = 11 },
		},
		model = {
			`prop_vend_soda_02`, `sf_prop_sf_vend_drink_01a`,
			`ch_chint10_vending_smallroom_01`, `prop_vend_soda_01`,
			`m23_2_prop_m32_vend_drink_01a`
		}
	},

	VendingMachineSnacks = {
		name = 'Vending Machine',
		inventory = {
			{ name = 'chips_bag', price = 5 },
			{ name = 'smore', price = 5 },
			{ name = 'candy', price = 4 },
			{ name = 'apple', price = 4 },
			{ name = 'banana', price = 4 },
		},
		model = {
			`prop_vend_snak_01`, `prop_vend_snak_01_tu`
		}
	},

	VendingMachineCoffee = {
		name = 'Coffee Machine',
		inventory = {
			{ name = 'coffee_black', price = 4 },
			{ name = 'coffee_mocha', price = 4 },
			{ name = 'coffee_cpcno', price = 4 },
			{ name = 'coffee_amrcno', price = 4 },
		},
		model = {
			`prop_vend_coffe_01`, `prop_vend_snak_01_tu`
		}
	},

	VendingMachineSmokes = {
		name = 'Cigarette Dispenser',
		inventory = {
			{ name = 'smk_brand69', price = 12 },
			{ name = 'smk_debonaire', price = 12 },
			{ name = 'smk_redwood', price = 12 },
		},
		model = {
			'prop_vend_fags_01'
		}
	},

	-- testing zone
	--[[
	
	NewsDispensers = {
		name = 'Newspaper',
		inventory = {
			{ name = 'newspaper', price = 3 },
		},
		model = {
			`prop_news_disp_02c`, `prop_news_disp_06a`,
			`prop_news_disp_01a`, `prop_news_disp_03a`,
			`prop_news_disp_02e`, `prop_news_disp_02b`,
			`prop_news_disp_02e`, `prop_news_disp_02b`,
			`prop_news_disp_03c`, `prop_news_disp_02a_s`,
			`prop_news_disp_02a`, `prop_news_disp_02d`,
		}
	},

	]]
}
