return {
    ----------------------------------------------------------------
    ----------------------------------------------------------------
    --[[    Consumables - General Foods    ]]--

    ['sandwich_ham'] = {
        label = 'Ham Sandwich', weight = 250, stack = true, close = true,
        description = "Ham in bread? What a wild concept.",
        client = {
            status = { hunger = 200000 }, anim = 'eating_hand', prop = 'sandwich',
            usetime = 7500, disable = { move = false, car = false, combat = true },
        },
    },

    ['taco'] = {
        label = 'Beef Taco', weight = 250, stack = true, close = true,
        description = "A gas station taco? Yeah, totally safe.",
        client = {
            status = { hunger = 190000 }, anim = 'eating_hand', prop = 'taco',
            usetime = 7500, disable = { move = false, car = false, combat = true },
        },
    },

	['apple'] = {
        label = 'Apple', weight = 150, stack = true, close = true,
        description = "'Get that shit away from me' - Dr. Cohen'",
        client = {
            status = { hunger = 100000 }, anim = 'eating_hand', prop = 'apple',
            usetime = 3500, disable = { move = false, car = false, combat = true },
        },
    },

	['banana'] = {
        label = 'Banana', weight = 150, stack = true, close = true,
        description = "B a n a n a n a n a n a n a n a.",
        client = {
            status = { hunger = 100000 }, anim = 'eating_hand', prop = 'banana',
            usetime = 4500, disable = { move = false, car = false, combat = true },
        },
    },

	['chips_bag'] = {
        label = 'Bag of Chips', weight = 150, stack = true, close = true,
        description = "Can you only have one? I can.",
        client = {
            status = { hunger = 80000 }, anim = 'drinking_hand', prop = 'chips_bag',
            usetime = 4500, disable = { move = false, car = false, combat = true },
        },
    },

	['candy'] = {
        label = 'P\'s & Q\'s', weight = 100, stack = true, close = true,
        description = "Do you still have teeth? You wont soon.",
        client = {
            status = { hunger = 80000 }, anim = 'drinking_hand', prop = 'candy',
            usetime = 3500, disable = { move = false, car = false, combat = true },
        },
    },

    ['donut'] = {
        label = 'Glazed Donut', weight = 100, stack = true, close = true,
        description = "I'm sure asking the officer if they want one is a good idea.",
        client = {
            status = { hunger = 80000 }, anim = 'eating_hand', prop = 'donut',
            usetime = 3500, disable = { move = false, car = false, combat = true },
        },
    },

    ['noodle_beef'] = {
        label = 'Noodles To-Go: Beef', weight = 100, stack = true, close = true,
        description = "A college student\'s first true love.",
        client = {
            status = { hunger = 300000 }, anim = 'eating_tool', prop = {
                {
                    bone = 28422, model = 'prop_cs_fork',
                    pos = vec3(0.0, 0.0, 0.0), rot = vec3(180.0, 180.0, 0.0)
                },
                {
                    model = 'prop_ff_noodle_01',
                    pos = vec3(-0.04, -0.02, 0.03), rot = vec3(0.0, 20.0, 10.0)
                }
            },
            usetime = 15000, disable = { move = false, car = false, combat = true },
        },
    },

    ['noodle_chicken'] = {
        label = 'Noodles To-Go: Chicken', weight = 100, stack = true, close = true,
        description = "A college student\'s first true love.",
        client = {
            status = { hunger = 300000 }, anim = 'eating_tool', prop = {
                {
                    bone = 28422, model = 'prop_cs_fork',
                    pos = vec3(0.0, 0.0, 0.0), rot = vec3(180.0, 180.0, 0.0)
                },
                {
                    model = 'prop_ff_noodle_01',
                    pos = vec3(-0.04, -0.02, 0.03), rot = vec3(0.0, 20.0, 10.0)
                }
            },
            usetime = 15000, disable = { move = false, car = false, combat = true },
        },
    },

    ['noodle_shrimp'] = {
        label = 'Noodles To-Go: Shrimp', weight = 100, stack = true, close = true,
        description = "A college student\'s first true love.",
        client = {
            status = { hunger = 300000 }, anim = 'eating_tool', prop = {
                {
                    bone = 28422, model = 'prop_cs_fork',
                    pos = vec3(0.0, 0.0, 0.0), rot = vec3(180.0, 180.0, 0.0)
                },
                {
                    model = 'prop_ff_noodle_01',
                    pos = vec3(-0.04, -0.02, 0.03), rot = vec3(0.0, 20.0, 10.0)
                }
            },
            usetime = 15000, disable = { move = false, car = false, combat = true },
        },
    },

    ['noodle_pork'] = {
        label = 'Noodles To-Go: Pork', weight = 100, stack = true, close = true,
        description = "A college student\'s first true love.",
        client = {
            status = { hunger = 300000 }, anim = 'eating_tool', prop = {
                {
                    bone = 28422, model = 'prop_cs_fork',
                    pos = vec3(0.0, 0.0, 0.0), rot = vec3(180.0, 180.0, 0.0)
                },
                {
                    model = 'prop_ff_noodle_01',
                    pos = vec3(-0.04, -0.02, 0.03), rot = vec3(0.0, 20.0, 10.0)
                }
            },
            usetime = 15000, disable = { move = false, car = false, combat = true },
        },
    },




    ----------------------------------------------------------------
    ----------------------------------------------------------------
    --[[    Consumables - General Drinks    ]]--

    ['water'] = {
        label = 'Water Bottle', weight = 100, stack = true, close = true,
        description = "Ahh, hear that? No? It's your body crying for water.",
        client = {
            status = { thirst = 260000 }, anim = 'drinking_hand', prop = 'water',
            usetime = 3500, disable = { move = false, car = false, combat = true },
        },
    },

	['milk'] = {
        label = 'Water Bottle', weight = 100, stack = true, close = true,
        description = "You need strong bones for all that socializing you don't do.",
        client = {
            status = { thirst = 130000 }, anim = 'drinking_hand', prop = 'milk',
            usetime = 3500, disable = { move = false, car = false, combat = true },
        },
    },

	['coffee'] = {
        label = 'Black Coffee', weight = 100, stack = true, close = true,
        description = "What do you need all that caffiene for, huh?",
        client = {
            status = { thirst = 130000 }, anim = 'drinking_hand', prop = 'coffee',
            usetime = 3500, disable = { move = false, car = false, combat = true },
        },
    },

	['ecola'] = {
        label = 'eCola Can', weight = 120, stack = true, close = true,
        description = "Carbonated syrup? Good for the soul.",
        client = {
            status = { thirst = 110000 }, anim = 'drinking_hand', prop = 'ecola',
            usetime = 3500, disable = { move = false, car = false, combat = true },
        },
    },

	['sprunk'] = {
        label = 'Sprunk Can', weight = 120, stack = true, close = true,
        description = "Like getting punched in the mouth by spicy water.",
        client = {
            status = { thirst = 110000 }, anim = 'drinking_hand', prop = 'sprunk',
            usetime = 3500, disable = { move = false, car = false, combat = true },
        },
    },

	['orangotang'] = {
        label = 'Orang-o-tang Can', weight = 120, stack = true, close = true,
        description = "Who the hell likes orange drinks? Cause I do.",
        client = {
            status = { thirst = 110000 }, anim = 'drinking_hand', prop = 'orangotang',
            usetime = 3500, disable = { move = false, car = false, combat = true },
        },
    },

	['ejunk'] = {
        label = 'eJunk Can', weight = 120, stack = true, close = true,
        description = "God yes, I need it in my blood.",
        client = {
            status = { thirst = 110000 }, anim = 'drinking_hand', prop = 'ejunk',
            usetime = 3500, disable = { move = false, car = false, combat = true },
        },
    },




    ----------------------------------------------------------------
    ----------------------------------------------------------------
    --[[    Consumables - General Alcohol    ]]--

    ['rancho_beer'] = {
        label = 'Bottle of Rancho Beer', weight = 250,
        stack = true, close = true,
        description = "Good old import beer from Mexico",
        client = {
            anim = 'drinking_hand', prop = 'rancho_beer',
            usetime = 3500, disable = { move = false, car = false, combat = true },
        },
    },

	['dusche_beer'] = {
        label = 'Bottle of Dusche Beer', weight = 250,
        stack = true, close = true,
        description = "Good old import beer from Germany",
        client = {
            anim = 'drinking_hand', prop = 'dusche_beer',
            usetime = 3500, disable = { move = false, car = false, combat = true },
        },
    },

	['stronzo_beer'] = {
        label = 'Bottle of Stronzo Beer', weight = 250,
        stack = true, close = true,
        description = "Good old import beer from Italy",
        client = {
            anim = 'drinking_hand', prop = 'stronzo_beer',
            usetime = 3500, disable = { move = false, car = false, combat = true },
        },
    },

	['patriot_beer'] = {
        label = 'Bottle of Patriot Beer', weight = 250,
        stack = true, close = true,
        description = "Good old import beer from the U.S.A.",
        client = {
            anim = 'drinking_hand', prop = 'patriot_beer',
            usetime = 3500, disable = { move = false, car = false, combat = true },
        },
    },




    ----------------------------------------------------------------
    ----------------------------------------------------------------
    --[[    Items - Currencies    ]]--

    ['money'] = {
        label = 'Money', weight = 0, stack = true,
        description = "The life blood of your frivolous activities",
    },




    ----------------------------------------------------------------
    ----------------------------------------------------------------
    --[[    Items - Tools    ]]--

    ['phone'] = {
		label = 'Phone',
		weight = 500,
		stack = false,
		consume = 0,
        description = "Did you miss a call? I\'ll never tell.",
		client = {
			add = function(total)
				if total > 0 then
					pcall(function() return exports.npwd:setPhoneDisabled(false) end)
				end
			end,

			remove = function(total)
				if total < 1 then
					pcall(function() return exports.npwd:setPhoneDisabled(true) end)
				end
			end
		}
	},

    ['lockpick'] = {
        label = 'Lockpick', weight = 80, stack = true,
        description = "When in doubt, steal shit.",
    },

    ['bandage_basic'] = {
        label = 'Basic Bandage', weight = 1200, stack = true,
        description = "That won't stop a bullet hole but ok I guess.",
    },

    ['armor1'] = {
        label = 'Light Body Armor', weight = 5000, stack = false,
        description = "Can it stop bullets? Lets find out.",
    },

    ['armor2'] = {
        label = 'Medium Body Armor', weight = 8000, stack = false,
        description = "You'll probably kinda sort be fine.",
    },

    ['armor3'] = {
        label = 'Heavy Body Armor', weight = 11000, stack = false,
        description = "I would be surprised if you got hurt wearing this.",
    },

    ['shield_riot'] = {
        label = 'Police Riot Shield', weight = 4000, stack = false,
        description = "I would be surprised if you got hurt wearing this.",
    },




    ----------------------------------------------------------------
    ----------------------------------------------------------------
    --[[    Items - Vehicles    ]]--

    ['repair_veheng'] = {
        label = 'Engine Repair Kit', weight = 7500, stack = true,
        description = "I see what's wrong with it. Ain't got no gas in it.",
    },

    ['repair_vehtir'] = {
        label = 'Tire Repair Kit', weight = 7500, stack = true,
        description = "Driving with a flat tire? That's a paddlin.",
    },

    ['repair_vehbod'] = {
        label = 'Body Repair Kit', weight = 7500, stack = true,
        description = "Vanity repairs, as that is all that matters.",
    },

    -- https://wiki.rage.mp/index.php?title=Vehicle_Colors for vehicle color reference

    ['colorveh_red'] = {
        label = 'Spray Kit: Red', weight = 2000, stack = true,
        description = "Paints over your car with this color.",
    },



    ----------------------------------------------------------------
    ----------------------------------------------------------------
    --[[    Items - Chemicals    ]]--

    ['chem_sulfur'] = {
        label = 'Sulfur', weight = 230, stack = true,
        description = "Pro tip: Rust is not a vitamin. Also, I need to see a doctor.",
    },

    ['chem_potnitr'] = {
        label = 'Potassium Nitrate', weight = 230, stack = true,
        description = "Pro tip: Rust is not a vitamin. Also, I need to see a doctor.",
    },

    ['chem_acid'] = {
        label = 'Sulfuric Acid', weight = 230, stack = true,
        description = "Pro tip: Rust is not a vitamin. Also, I need to see a doctor.",
    },


    ----------------------------------------------------------------
    ----------------------------------------------------------------
    --[[    Items - Crafting Supplies    ]]--

    ['scrap_iron'] = {
        label = 'Iron Scrap', weight = 100, stack = true,
        description = "Pro tip: Rust is not a vitamin. Also, I need to see a doctor.",
    },

    ['scrap_alluminium'] = {
        label = 'Alluminium Scrap', weight = 100, stack = true,
        description = "How do you pronounce this shit?",
    },

    ['scrap_bolts'] = {
        label = 'Bolts & Fittings', weight = 100, stack = true,
        description = "Hahahahaha, you said fittings.",
    },

    ['scrap_wood'] = {
        label = 'Wood Planks', weight = 170, stack = true,
        description = "It is not can you, but 'wood' you pick this up?",
    },

    ['scrap_plastic'] = {
        label = 'Plastic Scrap', weight = 100, stack = true,
        description = "Pro tip: Rust is not a vitamin. Also, I need to see a doctor.",
    },

    ['scrap_wires'] = {
        label = 'Bundle of Wires', weight = 100, stack = true,
        description = "What do you call a wire with a break in it?",
    },
    
}