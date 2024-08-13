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
			{ loc = vec3(25.55, -1346.75, 29.50), length = 0.55, width = 2.6, heading = 0.35, minZ = 29.5, maxZ = 29.8, distance = 2.0 },
			{ loc = vec3(-3039.85, 585.4, 7.9), length = 0.55, width = 2.6, heading = 35.0, minZ = 7.9, maxZ = 8.3, distance = 2.0 },
			{ loc = vec3(-3242.75, 1001.2, 12.83), length = 0.55, width = 2.6, heading = 175.0, minZ = 12.83, maxZ = 13.23, distance = 2.0 },
			{ loc = vec3(1729.1, 6415.2, 35.04), length = 0.55, width = 2.6, heading = 333.5, minZ = 35.04, maxZ = 35.44, distance = 2.0 },
			{ loc = vec3(1698.25, 4923.5, 42.06), length = 0.55, width = 2.6, heading = 235.0, minZ = 42.06, maxZ = 42.46, distance = 2.0 },
			{ loc = vec3(1960.75, 3741.0, 32.34), length = 0.55, width = 2.6, heading = 210.0, minZ = 32.34, maxZ = 32.74, distance = 2.0 },
			{ loc = vec3(548.05, 2670.65, 42.16), length = 0.55, width = 2.6, heading = 10.0, minZ = 42.16, maxZ = 42.56, distance = 2.0 },
			{ loc = vec3(2678.1, 3280.6, 55.24), length = 0.55, width = 2.6, heading = 240.75, minZ = 55.24, maxZ = 55.64, distance = 2.0 },
			{ loc = vec3(2556.7, 381.95, 108.62), length = 0.55, width = 2.6, heading = 267.75, minZ = 108.62, maxZ = 109.02, distance = 2.0 },
			{ loc = vec3(373.75, 326.65, 103.57), length = 0.55, width = 2.6, heading = 346.0, minZ = 103.57, maxZ = 103.97, distance = 2.0 },
			-- gabz paleto gas station
			{ loc = vec3(161.65, 6641.2, 31.55), length = 0.55, width = 2.6, heading = 315.25, minZ = 31.55, maxZ = 31.95, distance = 2.0 },
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
			{ loc = vec3(812.9, -2154.35, 29.9), length = 0.8, width = 1, heading = 180.25, minZ = 29.9, maxZ = 30.3, distance = 2.0 },
			{ loc = vec3(1698.05, 3756.2, 35.0), length = 0.8, width = 1, heading = 227.75, minZ = 34.9, maxZ = 35.3, distance = 2.0 },
			{ loc = vec3(246.5, -50.35, 70.25), length = 0.8, width = 1, heading = 249.75, minZ = 70.25, maxZ = 70.65, distance = 2.0 },
			{ loc = vec3(18.3, -1109.0, 30.1), length = 0.8, width = 1, heading = 249.75, minZ = 30.1, maxZ = 30.5, distance = 2.0 },
			{ loc = vec3(2565.6, 299.6, 109.05), length = 0.8, width = 1, heading = 179.75, minZ = 109.05, maxZ = 109.45, distance = 2.0 },
			{ loc = vec3(-1112.65, 2696.2, 18.9), length = 0.8, width = 1, heading = 131.25, minZ = 18.9, maxZ = 19.3, distance = 2.0 },
			{ loc = vec3(841.95, -1027.9, 28.55), length = 0.8, width = 1, heading = 180.75, minZ = 28.55, maxZ = 28.95, distance = 2.0 },
		}
	},

	Mechshop = {
		name = 'Mechanic Shop',
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
			{ name = 'coffee_black', price = 4 },
			{ name = 'coffee_mocha', price = 4 },
			{ name = 'coffee_cpcno', price = 4 },
			{ name = 'coffee_amrcno', price = 4 },
		},
		model = {
			`prop_vend_coffe_01`, `prop_vend_snak_01_tu`
		}
	}
}
