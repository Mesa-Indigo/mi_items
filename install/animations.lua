return {
	anim = {
        ----------------------------------------------------------------
        ----------------------------------------------------------------
        --[[    Animations - General Foods    ]]--
        ['eating_hand'] = {
            dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp'
        },

        ['eating_tool'] = {
            dict = 'anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1',
            clip = 'base_idle'
        },

        ----------------------------------------------------------------
        ----------------------------------------------------------------
        --[[    Animations - General Drinks    ]]--
        ['drinking_hand'] = {
            dict = 'mp_player_intdrink', clip = 'loop_bottle'
        },
    },
	prop = {
		----------------------------------------------------------------
        ----------------------------------------------------------------
        --[[    Prop Details - General Tools    ]]--
        ['fork'] = {
            bone = 28422, model = 'prop_cs_fork',
            pos = vec3(0.0, 0.0, 0.0), rot = vec3(180.0, 180.0, 0.0)
        },
        ['spoon'] = {
            bone = 28422, model = 'xm3_prop_xm3_coke_spoon_01a',
            pos = vec3(0.0, 0.0, 0.0), rot = vec3(180.0, 180.0, 0.0)
        },

		----------------------------------------------------------------
        ----------------------------------------------------------------
        --[[    Prop Details - General Foods    ]]--
        ['sandwich'] = {
            model = 'subsandwich',
            pos = vec3(0.05, -0.02, -0.03), rot = vec3(150.0, 340.0, 170.0)
        },

		['burger'] = {
            model = 'dh_burger3',
            pos = vec3(0.05, -0.02, -0.03), rot = vec3(20.0, 0.0, -50.0)
        },

        ['burger_lg'] = {
            model = 'dh_burger4',
            pos = vec3(0.05, -0.02, -0.03), rot = vec3(20.0, 0.0, -50.0)
        },

        ['wrap'] = {
            model = 'dh_wrap1',
            pos = vec3(0.07, -0.01, -0.01), rot = vec3(90.0, 90.0, 180.0)
        },

        ['burrito'] = {
            model = 'dh_wrap2',
            pos = vec3(0.07, -0.01, -0.01), rot = vec3(90.0, 90.0, 180.0)
        },

        ['nuggets'] = {
            model = 'dh_pack_nuggets_2',
            pos = vec3(0.0, -0.02, 0.00), rot = vec3(0.0, 0.0, 270.0)
        },

        ['corndog'] = {
            bone = 60309, model = 'dh_corn_dog',
            pos = vec3(-0.017, 0.007, -0.021), rot = vec3(0.0, 0.0, 180.0)
        },

        ['hotdog'] = {
            model = 'prop_cs_hotdog_01',
            pos = vec3(0.06, -0.01, -0.03), rot = vec3(60.0, 90.0, 0.0)
        },

		['taco'] = {
            bone = 60309, model = 'prop_taco_01',
            pos = vec3(-0.017, 0.007, -0.021), rot = vec3(107.9, -105.0, 55.5)
        },

        ['candy'] = {
            model = 'prop_candy_pqs',
            pos = vec3(0.0, 0.02, 0.05), rot = vec3(90.0, 0.0, -45.0)
        },

        ['pizza1'] = {
            bone = 60309, model = 'knjgh_pizzaslice4',
            pos = vec3(0.0500, -0.0300, -0.0700), rot = vec3(300.0, -10.0, 160.0),
        },

        ['pizza2'] = {
            bone = 60309, model = 'knjgh_pizzaslice3',
            pos = vec3(0.0500, -0.0300, -0.0700), rot = vec3(300.0, -10.0, 160.0),
        },

        ['pizza3'] = {
            bone = 60309, model = 'knjgh_pizzaslice2',
            pos = vec3(0.0500, -0.0300, -0.0700), rot = vec3(300.0, -10.0, 160.0),
        },

        ['pizza4'] = {
            bone = 60309, model = 'knjgh_pizzaslice1',
            pos = vec3(0.0500, -0.0300, -0.0700), rot = vec3(300.0, -10.0, 160.0),
        },

        ['pizza5'] = {
            bone = 60309, model = 'knjgh_pizzaslice5',
            pos = vec3(0.0500, -0.0300, -0.0700), rot = vec3(300.0, -10.0, 160.0),
        },

		['dragonfruit'] = {
            model = 'dragonfruitb',
            pos = vec3(0.05, -0.01, -0.03), rot = vec3(150.0, 340.0, 170.0)
        },

		['pineapple'] = {
            model = 'pineappleb',
            pos = vec3(0.01, -0.01, -0.03), rot = vec3(150.0, 340.0, 170.0)
        },

		['nectarine'] = {
            model = 'nectarinesa',
            pos = vec3(0.05, -0.01, -0.03), rot = vec3(150.0, 340.0, 170.0)
        },

        ['sunkist'] = {
            model = 'sunkistb',
            pos = vec3(0.05, -0.01, -0.03), rot = vec3(150.0, 340.0, 170.0)
        },

        ['apple'] = {
            model = 'sf_prop_sf_apple_01a',
            pos = vec3(0.03, -0.02, -0.03), rot = vec3(300.0, 340.0, 170.0)
        },

        ['banana'] = {
            model = 'v_res_tre_banana',
            pos = vec3(0.05, -0.02, 0.01), rot = vec3(270.0, 90.0, 0.0)
        },

        ['bagelp'] = {
            model = 'bzzz_foodpack_donut002',
            pos = vec3(0.13, 0.050, 0.020),  rot = vec3(-50.0, 100.0, 270.0)
        },

        ['granbar'] = {
            model = 'bar',
            pos = vec3(0.01, 0.01, 0.020),  rot = vec3(-50.0, 100.0, 270.0)
        },

        ['donut1'] = {
            model = 'bzzz_foodpack_donut002',
            pos = vec3(0.13, 0.050, 0.020),  rot = vec3(-50.0, 100.0, 270.0)
        },

        ['donut2'] = {
            model = 'bzzz_foodpack_donut001',
            pos = vec3(0.13, 0.050, 0.020),  rot = vec3(-50.0, 100.0, 270.0)
        },

        ['smore'] = {
            model = 'bzzz_food_dessert_a', bone = 18905,
            pos = vec3(0.15, 0.03, 0.03), rot = vec3(-42.0, -36.0, 0.0)
        },

        ['icrm1'] = {
            model = 'bzzz_icecream_cherry', bone = 18905,
            pos = vec3(0.14, 0.03, 0.01), rot = vec3(85.0, 70.0, -203.0)
        },

        ['icrm2'] = {
            model = 'bzzz_icecream_chocolate', bone = 18905,
            pos = vec3(0.14, 0.03, 0.01), rot = vec3(85.0, 70.0, -203.0)
        },

        ['icrm3'] = {
            model = 'bzzz_icecream_lemon', bone = 18905,
            pos = vec3(0.14, 0.03, 0.01), rot = vec3(85.0, 70.0, -203.0)
        },

        ['icrm4'] = {
            model = 'bzzz_icecream_pistachio', bone = 18905,
            pos = vec3(0.14, 0.03, 0.01), rot = vec3(85.0, 70.0, -203.0)
        },

        ['icrm5'] = {
            model = 'bzzz_icecream_stracciatella', bone = 18905,
            pos = vec3(0.14, 0.03, 0.01), rot = vec3(85.0, 70.0, -203.0)
        },

        ['icrm6'] = {
            model = 'bzzz_icecream_strawberry', bone = 18905,
            pos = vec3(0.14, 0.03, 0.01), rot = vec3(85.0, 70.0, -203.0)
        },

        ['icrm7'] = {
            model = 'bzzz_icecream_walnut', bone = 18905,
            pos = vec3(0.14, 0.03, 0.01), rot = vec3(85.0, 70.0, -203.0)
        },

        ['icrm8'] = {
            model = 'bzzz_icecream_raspberry', bone = 18905,
            pos = vec3(0.14, 0.03, 0.01), rot = vec3(85.0, 70.0, -203.0)
        },

        ['sdc_cola1'] = {
            model = 'dh_medium_cup',
            pos = vec3(0.02, 0.0, 0.08), rot = vec3(0.0, 0.0, 130.0)
        },

        ['sdc_cola2'] = {
            model = 'dh_medium_cup_2',
            pos = vec3(0.02, 0.0, 0.08), rot = vec3(0.0, 0.0, 130.0)
        },

        ['sdc_cola3'] = {
            model = 'dh_medium_cup_3',
            pos = vec3(0.02, 0.0, 0.08), rot = vec3(0.0, 0.0, 130.0)
        },

        ['water'] = {
            model = 'vw_prop_casino_water_bottle_01a',
            pos = vec3(0.008, 0.0, -0.05), rot = vec3(0.0, 0.0, -40.0)
        },

        ['milk'] = {
            model = 'v_res_tt_milk',
            bone = 18905,
            pos = vec3(0.10, 0.008, 0.070), rot = vec3(240.0, -60.0, 0.0)
        },

        ['coffee'] = {
            model = 'ng_proc_coffee_01a',
            pos = vec3(0.008, 0.0, -0.05), rot = vec3(0.0, 0.0, -40.0)
        },

        ['ecola'] = {
            model = 'prop_ecola_can',
            pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 130.0)
        },

        ['sprunk'] = {
            model = 'ng_proc_sodacan_01b',
            pos = vec3(0.005, -0.001, 0.08), rot = vec3(0.0, 0.0, 160.0)
        },

        ['orangotang'] = {
            model = 'prop_orang_can_01',
            pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 130.0)
        },

        ['ejunk'] = {
            model = 'sf_prop_sf_can_01a',
            pos = vec3(0.025, 0.010, 0.05), rot = vec3(5.0, 5.0, -180.5)
        },

        ['rancho_beer'] = {
            model = 'prop_beer_bottle',
            pos = vec3(0.02, -0.01, -0.14), rot = vec3(1.0, 5.0, -182.5)
        },

        ['dusche_beer'] = {
            model = 'prop_beerdusche',
            pos = vec3(0.01, -0.01, -0.12), rot = vec3(5.0, 5.0, -180.5)
        },

        ['stronzo_beer'] = {
            model = 'prop_beer_stz',
            pos = vec3(0.01, -0.02, -0.15), rot = vec3(5.0, 5.0, -180.5)
        },

        ['patriot_beer'] = {
            model = 'prop_beer_patriot',
            pos = vec3(0.01, -0.02, -0.15), rot = vec3(5.0, 5.0, -180.5)
        },

        ['bourgeoix_bottle'] = {
            model = 'prop_bottle_cognac',
            pos = vec3(0.02, -0.01, -0.14), rot = vec3(1.0, 5.0, -182.)
        },

        ['cariaque_bottle'] = {
            model = 'prop_bottle_brandy',
            pos = vec3(0.02, -0.01, -0.14), rot = vec3(1.0, 5.0, -182.5)
        },

        ['bleuterd_bottle'] = {
            model = 'prop_champ_01b',
            pos = vec3(0.02, -0.01, -0.14), rot = vec3(1.0, 5.0, -182.5)
        },

        ['ragga_bottle'] = {
            model = 'prop_rum_bottle',
            pos = vec3(0.02, -0.01, -0.14), rot = vec3(1.0, 5.0, -182.5)
        },

        ['tequilya_bottle'] = {
            model = 'prop_tequila_bottle',
            pos = vec3(0.02, -0.01, -0.14), rot = vec3(1.0, 5.0, -182.5)
        },

        ['nogo_bottle'] = {
            model = 'prop_vodka_bottle',
            pos = vec3(0.02, -0.01, -0.14), rot = vec3(1.0, 5.0, -182.5)
        },

        ['mount_bottle'] = {
            model = 'prop_cs_whiskey_bottle',
            pos = vec3(0.02, -0.01, -0.14), rot = vec3(1.0, 5.0, -182.5)
        },

        ['richards_bottle'] = {
            model = 'prop_bottle_richard',
            pos = vec3(0.02, -0.01, -0.14), rot = vec3(1.0, 5.0, -182.5)
        },

        ['liqour_glass'] = {
            model = 'prop_drink_whisky',
            pos = vec3(0.02, 0.01, 0.025), rot = vec3(1.0, 5.0, -182.5)
        },

        ['liqour_shot'] = {
            model = 'p_cs_shot_glass_2_s',
            pos = vec3(0.02, -0.01, 0.08), rot = vec3(1.0, 5.0, -182.5)
        },

        ['tincan_drink'] = {
            model = 'v_res_fa_tincorn',
            pos = vec3(-0.01, -0.01, 0.01), rot = vec3(1.0, 5.0, -182.5)
        },

        ['bread_slice'] = {
            model = 'v_res_fa_bread03',
            pos = vec3(0.14, 0.03, 0.01), rot = vec3(85.0, 70.0, -203.0)
        },

	}
}