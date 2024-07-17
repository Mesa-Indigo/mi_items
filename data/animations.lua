return {
    anim = {
        ----------------------------------------------------------------
        ----------------------------------------------------------------
        --[[    Animations - General Foods    ]]--
        ['eating_hand'] = {
            dict = 'mp_player_inteat@burger',
            clip = 'mp_player_int_eat_burger_fp'
        },

        ['eating_tool'] = {
            dict = 'anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1',
            clip = 'base_idle'
        },

        ----------------------------------------------------------------
        ----------------------------------------------------------------
        --[[    Animations - General Drinks    ]]--
        ['drinking_hand'] = {
            dict = 'mp_player_intdrink',
            clip = 'loop_bottle'
        },
    },
    prop = {

        ----------------------------------------------------------------
        ----------------------------------------------------------------
        --[[    Prop Details - General Tools    ]]--
        ['fork'] = {
            bone = 28422,
            model = 'prop_cs_fork',
            pos = vec3(0.0, 0.0, 0.0), rot = vec3(180.0, 180.0, 0.0)
        },

        ['spoon'] = {
            bone = 28422,
            model = 'xm3_prop_xm3_coke_spoon_01a',
            pos = vec3(0.0, 0.0, 0.0), rot = vec3(180.0, 180.0, 0.0)
        },

        ----------------------------------------------------------------
        ----------------------------------------------------------------
        --[[    Prop Details - General Foods    ]]--
        ['sandwich'] = {
            model = 'prop_sandwich_01',
            pos = vec3(0.05, -0.02, -0.03), rot = vec3(150.0, 340.0, 170.0)
        },
        ['burger'] = {
            model = 'prop_cs_burger_01',
            pos = vec3(0.05, -0.02, -0.03), rot = vec3(150.0, 340.0, 170.0)
        },
        ['hotdog'] = {
            model = 'prop_cs_hotdog_01',
            pos = vec3(0.06, -0.01, -0.03), rot = vec3(60.0, -90.0, 0.0)
        },
        ['chips_bag'] = {
            model = 'ng_proc_food_chips01a',
            pos = vec3(0.0, 0.08, -0.02), rot = vec3(90.0, 0.0, -45.0)
        },
        ['candy'] = {
            model = 'prop_candy_pqs',
            pos = vec3(0.0, 0.02, 0.05), rot = vec3(90.0, 0.0, -45.0)
        },
        ['donut'] = {
            model = 'prop_donut_01',
            pos = vec3(0.03, -0.010, -0.060), rot = vec3(-10.0, 300.0, 90.0)
        },
        ['apple'] = {
            model = 'sf_prop_sf_apple_01a',
            pos = vec3(0.03, -0.02, -0.03), rot = vec3(300.0, 340.0, 170.0)
        },
        ['banana'] = {
            model = 'v_res_tre_banana',
            pos = vec3(0.05, -0.02, 0.01), rot = vec3(270.0, 90.0, 0.0)
        },
        ['taco'] = {
            bone = 60309,
            model = 'prop_taco_01',
            pos = vec3(-0.017, 0.007, -0.021), rot = vec3(107.9, -105.0, 55.5)
        },


        ----------------------------------------------------------------
        ----------------------------------------------------------------
        --[[    Prop Details - General Drinks    ]]--
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


        ----------------------------------------------------------------
        ----------------------------------------------------------------
        --[[    Prop Details - General Alcohol    ]]--
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


        ----------------------------------------------------------------
        ----------------------------------------------------------------
        --[[    Prop Details - General Liqour Bottles   ]]--
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


        ----------------------------------------------------------------
        ----------------------------------------------------------------
        --[[    Prop Details - General Liqour Glasses    ]]--
        ['liqour_glass'] = {
            model = 'prop_drink_whisky',
            pos = vec3(0.02, -0.01, -0.14), rot = vec3(1.0, 5.0, -182.5)
        },



        ----------------------------------------------------------------
        ----------------------------------------------------------------
        --[[    Prop Details - General Liqour Shots    ]]--
        ['liqour_shot'] = {
            model = 'p_cs_shot_glass_2_s',
            pos = vec3(0.02, -0.01, 0.08), rot = vec3(1.0, 5.0, -182.5)
        },

    }
}