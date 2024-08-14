return {
	----------------------------------------------------------------
	----------------------------------------------------------------
    {	-- DRUGS: Weed
        items = {
			-- sativa
            {
                name = 'pc_sativa', duration = 5000, count = 3,
                ingredients = { wd_sativa = 2 }
            },
            {
                name = 'bc_sativa', duration = 5000, count = 1,
                ingredients = { pc_sativa = 4 }
            },
			-- indica
			{
                name = 'pc_indica', duration = 5000, count = 3,
                ingredients = { wd_indica = 2 }
            },
            {
                name = 'bc_indica', duration = 5000, count = 1,
                ingredients = { pc_indica = 4 }
            },
			-- hybrid
			{
                name = 'pc_hybrid', duration = 5000, count = 3,
                ingredients = { wd_hybrid = 2 }
            },
            {
                name = 'bc_hybrid', duration = 5000, count = 1,
                ingredients = { pc_hybrid = 4 }
            },
        }
    },
	{	-- DRUGS: Meth
        items = {
			-- meth
            {
                name = 'pd_meth', duration = 5000, count = 2,
				ingredients = {
					chem_phsrus = 2,
					chem_iodine = 2,
					chem_psdnrn = 1
				}
            },
            {
                name = 'cr_meth', duration = 5000, count = 2,
				ingredients = {
					chem_phsrus = 2,
					chem_iodine = 2,
					chem_psdnrn = 1,
					chem_actone = 1
				}
            },
        }
    },
	----------------------------------------------------------------
	----------------------------------------------------------------
	{	-- FOOD: General
        items = {
            {
                name = 'sandwich_ham', duration = 10000, count = 4,
				ingredients = {
					ck_bread = 1,
					ck_tomatoes = 2,
                    ck_onions = 2,
					ck_lettuce = 2,
					ck_pork = 1
				}
            },
            {
                name = 'sandwich_beef', duration = 10000, count = 4,
				ingredients = {
					ck_bread = 1,
					ck_tomatoes = 1,
                    ck_onions = 1,
					ck_lettuce = 1,
					ck_beef = 1
				}
            },
            {
                name = 'sandwich_chkn', duration = 10000, count = 4,
				ingredients = {
					ck_bread = 1,
					ck_tomatoes = 1,
                    ck_onions = 1,
					ck_lettuce = 1,
					ck_chkn = 1
				}
            },
            {
                name = 'sandwich_eggs', duration = 10000, count = 4,
				ingredients = {
					ck_bread = 1,
					ck_tomatoes = 1,
                    ck_onions = 1,
					ck_lettuce = 1,
					ck_eggs = 1
				}
            },

            {
                name = 'burger_reg', duration = 10000, count = 4,
				ingredients = {
					ck_bread = 1,
					ck_tomatoes = 2,
                    ck_onions = 2,
					ck_lettuce = 2,
					ck_beef = 1
				}
            },
            {
                name = 'burger_chs', duration = 10000, count = 4,
				ingredients = {
					ck_bread = 1,
					ck_tomatoes = 2,
                    ck_cheese = 2,
                    ck_onions = 2,
					ck_lettuce = 2,
					ck_beef = 1
				}
            },
            {
                name = 'burger_bcn', duration = 10000, count = 4,
				ingredients = {
					ck_bread = 1,
					ck_tomatoes = 2,
                    ck_cheese = 2,
                    ck_onions = 2,
					ck_lettuce = 2,
                    ck_pork = 1,
					ck_beef = 1
				}
            },
        }
    },
    ----------------------------------------------------------------
	----------------------------------------------------------------
	{	-- ALCOHOL: General
    items = {
        {
            name = 'cariaque_glass', duration = 10000, count = 4,
            ingredients = {
                bourgeoix_bottle = 1,
                alc_cups = 4
            }
        },
        {
            name = 'bourgeoix_glass', duration = 10000, count = 4,
            ingredients = {
                cariaque_bottle = 1,
                alc_cups = 4
            }
        },
        {
            name = 'ragga_glass', duration = 10000, count = 4,
            ingredients = {
                ragga_bottle = 1,
                alc_cups = 4
            }
        },
        {
            name = 'tequilya_glass', duration = 10000, count = 4,
            ingredients = {
                tequilya_bottle = 1,
                alc_cups = 4
            }
        },
        {
            name = 'nogo_glass', duration = 10000, count = 4,
            ingredients = {
                nogo_bottle = 1,
                alc_cups = 4
            }
        },
        {
            name = 'mount_glass', duration = 10000, count = 4,
            ingredients = {
                mount_bottle = 1,
                alc_cups = 4
            }
        },
        {
            name = 'richards_glass', duration = 10000, count = 4,
            ingredients = {
                richards_bottle = 1,
                alc_cups = 4
            }
        },

        {
            name = 'cariaque_shot', duration = 10000, count = 8,
            ingredients = {
                bourgeoix_bottle = 1,
                alc_shots = 8
            }
        },
        {
            name = 'bourgeoix_shot', duration = 10000, count = 8,
            ingredients = {
                cariaque_bottle = 1,
                alc_shots = 8
            }
        },
        {
            name = 'ragga_shot', duration = 10000, count = 8,
            ingredients = {
                ragga_bottle = 1,
                alc_shots = 8
            }
        },
        {
            name = 'tequilya_shot', duration = 10000, count = 8,
            ingredients = {
                tequilya_bottle = 1,
                alc_shots = 8
            }
        },
        {
            name = 'nogo_shot', duration = 10000, count = 8,
            ingredients = {
                nogo_bottle = 1,
                alc_shots = 8
            }
        },
        {
            name = 'mount_shot', duration = 10000, count = 8,
            ingredients = {
                mount_bottle = 1,
                alc_shots = 8
            }
        },
        {
            name = 'richards_shot', duration = 10000, count = 8,
            ingredients = {
                richards_bottle = 1,
                alc_shots = 8
            }
        },
    }
},
}