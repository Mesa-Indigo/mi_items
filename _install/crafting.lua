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
    ----------------------------------------------------------------
	----------------------------------------------------------------
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
    ----------------------------------------------------------------
	----------------------------------------------------------------
    {	-- WEAPONS: attachments
        items = {
            -- tool
            {
                name = 'at_flashlight', duration = 5000, count = 3,
                ingredients = {
                    scrap_iron = 4,
                    scrap_bolts = 3,
                    scrap_bottle = 2,
                    scrap_plastic = 3
                }
            },
            {
                name = 'at_grip', duration = 5000, count = 1,
                ingredients = {
                    scrap_iron = 4,
                    scrap_bolts = 3,
                    scrap_bottle = 2,
                    scrap_plastic = 3
                }
            },
            -- barrel
			{
                name = 'at_barrel', duration = 5000, count = 3,
                ingredients = {
                    scrap_iron = 4,
                    scrap_bolts = 3,
                    scrap_bottle = 2,
                    scrap_plastic = 3
                }
            },
            {
                name = 'at_suppressor_light', duration = 5000, count = 3,
                ingredients = {
                    scrap_iron = 4,
                    scrap_bolts = 3,
                    scrap_bottle = 2,
                    scrap_plastic = 3
                }
            },
            {
                name = 'at_suppressor_heavy', duration = 5000, count = 3,
                ingredients = {
                    scrap_iron = 4,
                    scrap_bolts = 3,
                    scrap_bottle = 2,
                    scrap_plastic = 3
                }
            },
            {
                name = 'at_compensator', duration = 5000, count = 3,
                ingredients = {
                    scrap_iron = 4,
                    scrap_bolts = 3,
                    scrap_bottle = 2,
                    scrap_plastic = 3
                }
            },
            -- sights
			{
                name = 'at_scope_macro', duration = 5000, count = 3,
                ingredients = {
                    scrap_iron = 4,
                    scrap_bolts = 3,
                    scrap_bottle = 2,
                    scrap_plastic = 3
                }
            },
            {
                name = 'at_scope_small', duration = 5000, count = 3,
                ingredients = {
                    scrap_iron = 4,
                    scrap_bolts = 3,
                    scrap_bottle = 2,
                    scrap_plastic = 3
                }
            },
            {
                name = 'at_scope_medium', duration = 5000, count = 3,
                ingredients = {
                    scrap_iron = 4,
                    scrap_bolts = 3,
                    scrap_bottle = 2,
                    scrap_plastic = 3
                }
            },
            {
                name = 'at_scope_large', duration = 5000, count = 3,
                ingredients = {
                    scrap_iron = 6,
                    scrap_bolts = 3,
                    scrap_bottle = 2,
                    scrap_plastic = 3
                }
            },
            -- magazine
            {
                name = 'at_clip_extended_pistol', duration = 5000, count = 1,
                ingredients = {
                    scrap_iron = 4,
                    scrap_bolts = 3,
                    scrap_bottle = 3,
                    scrap_plastic = 3
                }
            },
			{
                name = 'at_clip_extended_smg', duration = 5000, count = 3,
                ingredients = {
                    scrap_iron = 4,
                    scrap_bolts = 3,
                    scrap_bottle = 3,
                    scrap_plastic = 3
                }
            },
            {
                name = 'at_clip_extended_shotgun', duration = 5000, count = 1,
                ingredients = {
                    scrap_iron = 4,
                    scrap_bolts = 3,
                    scrap_bottle = 3,
                    scrap_plastic = 3
                }
            },
            {
                name = 'at_clip_extended_rifle', duration = 5000, count = 3,
                ingredients = {
                    scrap_iron = 4,
                    scrap_bolts = 3,
                    scrap_bottle = 3,
                    scrap_plastic = 3
                }
            },
            {
                name = 'at_clip_extended_mg', duration = 5000, count = 1,
                ingredients = {
                    scrap_iron = 4,
                    scrap_bolts = 3,
                    scrap_bottle = 3,
                    scrap_plastic = 3
                }
            },
            {
                name = 'at_clip_extended_sniper', duration = 5000, count = 1,
                ingredients = {
                    scrap_iron = 4,
                    scrap_bolts = 3,
                    scrap_bottle = 3,
                    scrap_plastic = 3
                }
            },
        }
    },
    ----------------------------------------------------------------
	----------------------------------------------------------------
	{	-- CRIME: Tools
    items = {
        -- meth
        {
            name = 'lockpick', duration = 5000, count = 2,
            ingredients = {
                scrap_iron = 3,
            }
        },
        {
            name = 'hacktool_phone', duration = 10000, count = 1,
            ingredients = {
                phone = 1,
                scrap_wires = 3,
                scrap_aluminium = 2,
            }
        },
        {
            name = 'smokebomb', duration = 10000, count = 1,
            ingredients = {
                chem_amonia = 2,
                scrap_wires = 3,
                scrap_plastic = 2,
            }
        },
        {
            name = 'bombbag_exp', duration = 30000, count = 1,
            ingredients = {
                scrap_wires = 8,
                scrap_plastic = 4,
                scrap_aluminium = 4,
                chem_sulfur = 4,
                chem_potnitr = 6
            }
        },
    }
},
}