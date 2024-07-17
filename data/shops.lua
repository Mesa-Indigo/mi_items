return {
	General = {
		name = 'Gas Station',
		blip = {
			id = 59, colour = 43, scale = 0.6
		}, inventory = {
			{ name = 'sandwich_ham', price = 5 },
			{ name = 'taco', price = 4 },
			{ name = 'candy', price = 3 },
			{ name = 'apple', price = 3 },
			{ name = 'donut', price = 4 },

			{ name = 'water', price = 3 },
			{ name = 'ecola', price = 4 },
			{ name = 'sprunk', price = 4 },
			{ name = 'orangotang', price = 4 },
			{ name = 'ejunk', price = 6 },

			{ name = 'WEAPON_BALL', price = 10 },

		}, locations = {
			vec3(25.7, -1347.3, 29.49),
			vec3(-3038.71, 585.9, 7.9),
			vec3(-3241.47, 1001.14, 12.83),
			vec3(1728.66, 6414.16, 35.03),
			vec3(1697.99, 4924.4, 42.06),
			vec3(1961.48, 3739.96, 32.34),
			vec3(547.79, 2671.79, 42.15),
			vec3(2679.25, 3280.12, 55.24),
			vec3(2557.94, 382.05, 108.62),
			vec3(373.55, 325.56, 103.56),
		}, targets = {

			{ ped = `mp_m_shopkeep_01`, scenario = 'Standing', loc = vec3(372.441, 326.501, 102.566), 	heading = 254.537 },
			{ ped = `mp_m_shopkeep_01`, scenario = 'Standing', loc = vec3(24.497, -1347.485, 28.497), 	heading = 267.693 },
			{ ped = `mp_m_shopkeep_01`, scenario = 'Standing', loc = vec3(-3040.499, 584.044, 6.908), 	heading = 17.372 },
			{ ped = `mp_m_shopkeep_01`, scenario = 'Standing', loc = vec3(-3243.953, 1000.159, 11.830), heading = 355.801 },
			{ ped = `mp_m_shopkeep_01`, scenario = 'Standing', loc = vec3(1727.754, 6414.942, 34.037), 	heading = 248.335 },
			{ ped = `mp_m_shopkeep_01`, scenario = 'Standing', loc = vec3(1697.308, 4923.434, 41.063), 	heading = 331.204 },
			{ ped = `mp_m_shopkeep_01`, scenario = 'Standing', loc = vec3(1959.315, 3741.397, 31.343), 	heading = 295.997 },
			{ ped = `mp_m_shopkeep_01`, scenario = 'Standing', loc = vec3(549.305, 2669.675, 41.156), 	heading = 99.053 },
			{ ped = `mp_m_shopkeep_01`, scenario = 'Standing', loc = vec3(2676.587, 3280.221, 54.241), 	heading = 326.606 },
			{ ped = `mp_m_shopkeep_01`, scenario = 'Standing', loc = vec3(2555.498, 380.867, 107.622), 	heading = 358.802 },
			
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
			{ name = 'water', price = 3 },

			{ name = 'chips_bag', price = 3 },
			{ name = 'candy', price = 3 },
		}, locations = {
			vec3(1135.808, -982.281, 46.415),
			vec3(-1222.915, -906.983, 12.326),
			vec3(-1487.553, -379.107, 40.163),
			vec3(-2968.243, 390.910, 15.043),
			vec3(1166.024, 2708.930, 38.157),
			vec3(1392.562, 3604.684, 34.980),
			vec3(-1393.409, -606.624, 30.319)
		}, targets = {
			{ ped = `s_m_m_ammucountry`, scenario = 'Standing', loc = vec3(1134.305, -983.116, 45.415), 		heading = 277.47 },
			{ ped = `s_m_m_ammucountry`, scenario = 'Standing', loc = vec3(-1221.371, -907.892, 11.326), 	heading = 34.34 },
			{ ped = `s_m_m_ammucountry`, scenario = 'Standing', loc = vec3(-1486.797, -377.517, 40.163), 	heading = 139.616 },
			{ ped = `s_m_m_ammucountry`, scenario = 'Standing', loc = vec3(-2966.415, 391.497, 14.043), 		heading = 91.049 },
			{ ped = `s_m_m_ammucountry`, scenario = 'Standing', loc = vec3(1165.190, 2710.786, 37.157), 		heading = 179.483 },
			{ ped = `s_m_m_ammucountry`, scenario = 'Standing', loc = vec3(1392.254, 3606.195, 33.980), 		heading = 200.279 },
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
			{ ped = `s_m_m_ammucountry`, scenario = 'Standing', loc = vec3(-331.516, 6085.390, 30.454), heading = 224.178 },
			{ ped = `s_m_m_ammucountry`, scenario = 'Standing', loc = vec3(-661.797, -933.428, 20.829), heading = 177.735 },
			{ ped = `s_m_m_ammucountry`, scenario = 'Standing', loc = vec3(810.020, -2159.133, 28.618), heading = 358.744 },
			{ ped = `s_m_m_ammucountry`, scenario = 'Standing', loc = vec3(1692.268, 3760.911, 33.705), heading = 228.238 },
			{ ped = `s_m_m_ammucountry`, scenario = 'Standing', loc = vec3(253.731, -50.662, 68.941), 	heading = 72.221 },
			{ ped = `s_m_m_ammucountry`, scenario = 'Standing', loc = vec3(22.659, -1105.361, 28.796), 	heading = 156.685 },
			{ ped = `s_m_m_ammucountry`, scenario = 'Standing', loc = vec3(2567.927, 292.596, 107.734), heading = 359.322 },
			{ ped = `s_m_m_ammucountry`, scenario = 'Standing', loc = vec3(-1119.008, 2699.694, 17.554), heading = 215.5 },
			{ ped = `s_m_m_ammucountry`, scenario = 'Standing', loc = vec3(842.247, -1035.290, 27.194), heading = 358.9},
		}
	},

	Mechshop = {
		name = 'Mechanic Shop',
		inventory = {
			{ name = 'lockpick', price = 12 },
			{ name = 'repair_veheng', price = 245 },
			{ name = 'repair_vehtir', price = 65 },
			{ name = 'repair_vehbod', price = 110 },
			{ name = 'WEAPON_WRENCH', price = 135, metadata = { registered = true } }
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

			{ name = 'WEAPON_KNUCKLE', price = 350, metadata = { registered = false } },
			{ name = 'WEAPON_SWITCHBLADE', price = 460, metadata = { registered = false } },
			{ name = 'WEAPON_SNSPISTOL', price = 1250, metadata = { registered = false } },
			{ name = 'WEAPON_MICROSMG', price = 1860, metadata = { registered = false } },
			{ name = 'WEAPON_SAWNOFFSHOTGUN', price = 2965, metadata = { registered = false } },

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
		}
	},

	PrisonDealer = {
		name = 'Prison Dealer',
		inventory = {
			{ name = 'lockpick', price = 15 },
			{ name = 'ejunk', price = 8 },
			{ name = 'candy', price = 10 },

		}, targets = {
			{ ped = `u_m_y_prisoner_01`, scenario = 'WORLD_HUMAN_DRUG_DEALER_HARD', loc = vec3(1724.573, 2496.237, 44.564), heading = 88.994 },
			{ ped = `s_m_y_prisoner_01`, scenario = 'WORLD_HUMAN_DRUG_DEALER', loc = vec3(1627.465, 2565.282, 44.564), heading = 136.072 },
		}
	},


	VendingMachineDrinks = {
		name = 'Vending Machine',
		inventory = {
			{ name = 'water', price = 4 },
			{ name = 'ecola', price = 5 },
			{ name = 'sprunk', price = 5 },
			{ name = 'orangotang', price = 5 },
			{ name = 'ejunk', price = 7 },
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
			{ name = 'chips_bag', price = 4 },
			{ name = 'candy', price = 2 },
			{ name = 'apple', price = 3 },
			{ name = 'banana', price = 3 },
		},
		model = {
			`prop_vend_snak_01`, `prop_vend_snak_01_tu`
		}
	},

	VendingMachineCoffee = {
		name = 'Coffee Machine',
		inventory = {
			{ name = 'coffee', price = 4 }
		},
		model = {
			`prop_vend_coffe_01`, `prop_vend_snak_01_tu`
		}
	}
}
