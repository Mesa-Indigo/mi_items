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
    --[[    Consumables - Burger Shot    ]]--

    ['bs_bleeder'] = {
        label = 'The Bleeder', weight = 250, stack = true, close = true,
        description = "Internal bleeding sold separately.",
        client = {
            status = { hunger = 200000 }, anim = 'eating_hand', prop = 'sandwich',
            usetime = 7500, disable = { move = false, car = false, combat = true },
        },
    },

    ['bs_moneyshot'] = {
        label = 'Money Shot', weight = 250, stack = true, close = true,
        description = "If you find $10, it's mine.",
        client = {
            status = { hunger = 200000 }, anim = 'eating_hand', prop = 'sandwich',
            usetime = 7500, disable = { move = false, car = false, combat = true },
        },
    },

    ['bs_doubleshot'] = {
        label = 'Double Shot', weight = 250, stack = true, close = true,
        description = "Double the heart problems.",
        client = {
            status = { hunger = 200000 }, anim = 'eating_hand', prop = 'sandwich',
            usetime = 7500, disable = { move = false, car = false, combat = true },
        },
    },

    ['bs_godfather'] = {
        label = 'Godfather', weight = 250, stack = true, close = true,
        description = "You come here on the day of my burger\'s grilling?",
        client = {
            status = { hunger = 200000 }, anim = 'eating_hand', prop = 'sandwich',
            usetime = 7500, disable = { move = false, car = false, combat = true },
        },
    },

    ['bs_fries'] = {
        label = 'French Fries', weight = 250, stack = true, close = true,
        description = "Internal bleeding sold separately.",
        client = {
            status = { hunger = 200000 }, anim = 'eating_hand', prop = 'sandwich',
            usetime = 7500, disable = { move = false, car = false, combat = true },
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
    --[[    Consumables - Coffee   ]]--

    ['coffee_black'] = {
        label = 'Black Coffee', weight = 100, stack = true, close = true,
        description = "What do you need all that caffiene for, huh?",
        client = {
            status = { thirst = 130000 }, anim = 'drinking_hand', prop = 'coffee',
            usetime = 3500, disable = { move = false, car = false, combat = true },
        },
    },

    ['coffee_mocha'] = {
        label = 'Mocha', weight = 100, stack = true, close = true,
        description = "What even IS a mocha?",
        client = {
            status = { thirst = 130000 }, anim = 'drinking_hand', prop = 'coffee',
            usetime = 3500, disable = { move = false, car = false, combat = true },
        },
    },

    ['coffee_cpcno'] = {
        label = 'Cappuccino', weight = 100, stack = true, close = true,
        description = "This might wake you up a smidgey smidge bit.",
        client = {
            status = { thirst = 130000 }, anim = 'drinking_hand', prop = 'coffee',
            usetime = 3500, disable = { move = false, car = false, combat = true },
        },
    },

    ['coffee_amrcno'] = {
        label = 'Americano', weight = 100, stack = true, close = true,
        description = "American coffee, with an O.",
        client = {
            status = { thirst = 130000 }, anim = 'drinking_hand', prop = 'coffee',
            usetime = 3500, disable = { move = false, car = false, combat = true },
        },
    },




    ----------------------------------------------------------------
    ----------------------------------------------------------------
    --[[    Consumables - Alcohol    ]]--

    ['rancho_beer'] = {
        label = 'Bottle of Rancho Beer', weight = 250,
        stack = true, close = true,
        description = "Good old import beer from Mexico.",
        client = {
            status = { drunk = 110000 },
            anim = 'drinking_hand', prop = 'rancho_beer',
            usetime = 3500, disable = { move = false, car = false, combat = true },
        },
        buttons = {
            {
                label = 'Break bottle', action = function(slot)
                    exports['mi_items']:break_bottle_rancho()
                end
            }
        }
    },

	['dusche_beer'] = {
        label = 'Bottle of Dusche Beer', weight = 250,
        stack = true, close = true,
        description = "Good old import beer from Germany.",
        client = {
            status = { drunk = 110000 },
            anim = 'drinking_hand', prop = 'dusche_beer',
            usetime = 3500, disable = { move = false, car = false, combat = true },
        },
        buttons = {
            {
                label = 'Break bottle', action = function(slot)
                    exports['mi_items']:break_bottle_dusche()
                end
            }
        }
    },

	['stronzo_beer'] = {
        label = 'Bottle of Stronzo Beer', weight = 250,
        stack = true, close = true,
        description = "Good old import beer from Italy.",
        client = {
            status = { drunk = 110000 },
            anim = 'drinking_hand', prop = 'stronzo_beer',
            usetime = 3500, disable = { move = false, car = false, combat = true },
        },
        buttons = {
            {
                label = 'Break bottle', action = function(slot)
                    exports['mi_items']:break_bottle_stronzo()
                end
            }
        }
    },

	['patriot_beer'] = {
        label = 'Bottle of Patriot Beer', weight = 250,
        stack = true, close = true,
        description = "Good old import beer from the U.S.A.",
        client = {
            status = { drunk = 110000 },
            anim = 'drinking_hand', prop = 'patriot_beer',
            usetime = 3500, disable = { move = false, car = false, combat = true },
        },
        buttons = {
            {
                label = 'Break bottle', action = function(slot)
                    exports['mi_items']:break_bottle_patriot()
                end
            }
        }
    },

    ['bourgeoix_bottle'] = {
        label = 'Bottle of Bourgeoix Cognac', weight = 450,
        stack = true, close = true,
        description = "Like whiskey, but more ouch.",
        client = {
            status = { drunk = 350000 },
            anim = 'drinking_hand', prop = 'bourgeoix_bottle',
            usetime = 9500, disable = { move = false, car = false, combat = true },
        },
    },

    ['cariaque_bottle'] = {
        label = 'Bottle of Cariaque Bourbon', weight = 450,
        stack = true, close = true,
        description = "Ooh you a fancy bitch, huh?",
        client = {
            status = { drunk = 370000 },
            anim = 'drinking_hand', prop = 'cariaque_bottle',
            usetime = 9500, disable = { move = false, car = false, combat = true },
        },
    },

    ['bleuterd_bottle'] = {
        label = 'Bottle of Bleuter\'d Champagne', weight = 450,
        stack = true, close = true,
        description = "For those fancy events.",
        client = {
            status = { drunk = 480000 },
            anim = 'drinking_hand', prop = 'bleuterd_bottle',
            usetime = 9500, disable = { move = false, car = false, combat = true },
        },
    },

    ['ragga_bottle'] = {
        label = 'Bottle of Ragga Rum', weight = 450,
        stack = true, close = true,
        description = "A pirates drink for me.",
        client = {
            status = { drunk = 370000 },
            anim = 'drinking_hand', prop = 'ragga_bottle',
            usetime = 9500, disable = { move = false, car = false, combat = true },
        },
    },

    ['tequilya_bottle'] = {
        label = 'Bottle of Tequilya Tequila', weight = 450,
        stack = true, close = true,
        description = "For extra kick, add snake venom.",
        client = {
            status = { drunk = 370000 },
            anim = 'drinking_hand', prop = 'tequilya_bottle',
            usetime = 9500, disable = { move = false, car = false, combat = true },
        },
    },

    ['nogo_bottle'] = {
        label = 'Bottle of Nogo Vodka', weight = 450,
        stack = true, close = true,
        description = "Chilled like the mountains of Siberia.",
        client = {
            status = { drunk = 370000 },
            anim = 'drinking_hand', prop = 'nogo_bottle',
            usetime = 9500, disable = { move = false, car = false, combat = true },
        },
    },

    ['mount_bottle'] = {
        label = 'Bottle of Mount Whiskey', weight = 450,
        stack = true, close = true,
        description = "The cowboy's choice for getting plastered.",
        client = {
            status = { drunk = 370000 },
            anim = 'drinking_hand', prop = 'mount_bottle',
            usetime = 9500, disable = { move = false, car = false, combat = true },
        },
    },

    ['richards_bottle'] = {
        label = 'Bottle of Richard\'s Whiskey', weight = 450,
        stack = true, close = true,
        description = "For the refined taste buds you so clearly have.",
        client = {
            status = { drunk = 370000 },
            anim = 'drinking_hand', prop = 'richards_bottle',
            usetime = 9500, disable = { move = false, car = false, combat = true },
        },
    },

    ['cariaque_glass'] = {
        label = 'Glass of Bourgeoix Cognac', weight = 150,
        stack = true, close = true,
        description = "Like whiskey, but more ouch.",
        client = {
            status = { drunk = 350000 },
            anim = 'drinking_hand', prop = 'liqour_glass',
            usetime = 5500, disable = { move = false, car = false, combat = true },
        },
    },

    ['bourgeoix_glass'] = {
        label = 'Glass of Bourgeoix Cognac', weight = 150,
        stack = true, close = true,
        description = "Like whiskey, but more ouch.",
        client = {
            status = { drunk = 350000 },
            anim = 'drinking_hand', prop = 'liqour_glass',
            usetime = 5500, disable = { move = false, car = false, combat = true },
        },
    },

    ['bleuterd_glass'] = {
        label = 'Glass of Bourgeoix Cognac', weight = 150,
        stack = true, close = true,
        description = "Like whiskey, but more ouch.",
        client = {
            status = { drunk = 350000 },
            anim = 'drinking_hand', prop = 'liqour_glass',
            usetime = 5500, disable = { move = false, car = false, combat = true },
        },
    },

    ['ragga_glass'] = {
        label = 'Glass of Ragga Rum', weight = 150,
        stack = true, close = true,
        description = "Like whiskey, but more ouch.",
        client = {
            status = { drunk = 350000 },
            anim = 'drinking_hand', prop = 'liqour_glass',
            usetime = 5500, disable = { move = false, car = false, combat = true },
        },
    },

    ['tequilya_glass'] = {
        label = 'Glass of Bourgeoix Cognac', weight = 150,
        stack = true, close = true,
        description = "Like whiskey, but more ouch.",
        client = {
            status = { drunk = 350000 },
            anim = 'drinking_hand', prop = 'liqour_glass',
            usetime = 5500, disable = { move = false, car = false, combat = true },
        },
    },

    ['nogo_glass'] = {
        label = 'Glass of Bourgeoix Cognac', weight = 150,
        stack = true, close = true,
        description = "Like whiskey, but more ouch.",
        client = {
            status = { drunk = 350000 },
            anim = 'drinking_hand', prop = 'liqour_glass',
            usetime = 5500, disable = { move = false, car = false, combat = true },
        },
    },

    ['mount_glass'] = {
        label = 'Glass of Bourgeoix Cognac', weight = 150,
        stack = true, close = true,
        description = "Like whiskey, but more ouch.",
        client = {
            status = { drunk = 350000 },
            anim = 'drinking_hand', prop = 'liqour_glass',
            usetime = 5500, disable = { move = false, car = false, combat = true },
        },
    },

    ['richards_glass'] = {
        label = 'Glass of Bourgeoix Cognac', weight = 150,
        stack = true, close = true,
        description = "Like whiskey, but more ouch.",
        client = {
            status = { drunk = 350000 },
            anim = 'drinking_hand', prop = 'liqour_glass',
            usetime = 5500, disable = { move = false, car = false, combat = true },
        },
    },

    ['cariaque_shot'] = {
        label = 'Glass of Bourgeoix Cognac', weight = 150,
        stack = true, close = true,
        description = "Like whiskey, but more ouch.",
        client = {
            status = { drunk = 350000 },
            anim = 'drinking_hand', prop = 'liqour_shot',
            usetime = 2000, disable = { move = false, car = false, combat = true },
        },
    },

    ['bourgeoix_shot'] = {
        label = 'Glass of Bourgeoix Cognac', weight = 150,
        stack = true, close = true,
        description = "Like whiskey, but more ouch.",
        client = {
            status = { drunk = 350000 },
            anim = 'drinking_hand', prop = 'liqour_shot',
            usetime = 2000, disable = { move = false, car = false, combat = true },
        },
    },
    
    ['bleuterd_shot'] = {
        label = 'Glass of Bourgeoix Cognac', weight = 150,
        stack = true, close = true,
        description = "Like whiskey, but more ouch.",
        client = {
            status = { drunk = 350000 },
            anim = 'drinking_hand', prop = 'liqour_shot',
            usetime = 2000, disable = { move = false, car = false, combat = true },
        },
    },

    ['ragga_shot'] = {
        label = 'Glass of Bourgeoix Cognac', weight = 150,
        stack = true, close = true,
        description = "Like whiskey, but more ouch.",
        client = {
            status = { drunk = 350000 },
            anim = 'drinking_hand', prop = 'liqour_shot',
            usetime = 2000, disable = { move = false, car = false, combat = true },
        },
    },

    ['tequilya_shot'] = {
        label = 'Glass of Bourgeoix Cognac', weight = 150,
        stack = true, close = true,
        description = "Like whiskey, but more ouch.",
        client = {
            status = { drunk = 350000 },
            anim = 'drinking_hand', prop = 'liqour_shot',
            usetime = 2000, disable = { move = false, car = false, combat = true },
        },
    },

    ['nogo_shot'] = {
        label = 'Glass of Bourgeoix Cognac', weight = 150,
        stack = true, close = true,
        description = "Like whiskey, but more ouch.",
        client = {
            status = { drunk = 350000 },
            anim = 'drinking_hand', prop = 'liqour_shot',
            usetime = 2000, disable = { move = false, car = false, combat = true },
        },
    },

    ['mount_shot'] = {
        label = 'Glass of Bourgeoix Cognac', weight = 150,
        stack = true, close = true,
        description = "Like whiskey, but more ouch.",
        client = {
            status = { drunk = 350000 },
            anim = 'drinking_hand', prop = 'liqour_shot',
            usetime = 2000, disable = { move = false, car = false, combat = true },
        },
    },

    ['richards_shot'] = {
        label = 'Glass of Bourgeoix Cognac', weight = 150,
        stack = true, close = true,
        description = "Like whiskey, but more ouch.",
        client = {
            status = { drunk = 350000 },
            anim = 'drinking_hand', prop = 'liqour_shot',
            usetime = 2000, disable = { move = false, car = false, combat = true },
        },
    },




    ----------------------------------------------------------------
    ----------------------------------------------------------------
    --[[    Items    ]]--

    ['money'] = {
        label = 'Money', weight = 0, stack = true,
        description = "The life blood of your frivolous activities.",
    },

    ['phone'] = {
		label = 'Phone',
		weight = 750,
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

    -- recovery
    ['bandage_basic'] = {
        label = 'Basic Bandage', weight = 1200, stack = true,
        description = "That won't stop a bullet hole but ok I guess.",
    },

    -- armor
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

    -- shields
    ['shield_riot'] = {
        label = 'Police Riot Shield', weight = 4000, stack = false,
        description = "I would be surprised if you got hurt wearing this.",
    },

    -- diving
    ['rebreather'] = {
        label = 'Rebreather', weight = 2300, stack = false,
        description = "This will get you some ways down the water.",
    },

    ['divegear'] = {
        label = 'Diving gear', weight = 4000, stack = false,
        description = "Don\'t get lost in the deep ocean.",
    },

    -- vehicle
    ['enginekit'] = {
        label = 'Engine Repair Kit', weight = 7500, stack = true,
        description = "I see what's wrong with it. Ain't got no gas in it.",
    },

    ['cleankit'] = {
        label = 'Vehicle Cleaning Kit', weight = 7500, stack = true,
        description = "Driving with a flat tire? That's a paddlin.",
    },

    ['spraykit'] = {
        label = 'Spray Kit', weight = 2000, stack = true,
        description = "Paints over your car with this color.",
    },

    ['tirekit'] = {
        label = 'Tire Repair Kit', weight = 2000, stack = true,
        description = "Yes, you DO need all your tires to drive.",
    },

    ['inspectionkit'] = {
        label = 'Vehicle Insp. Tool', weight = 2000, stack = true,
        description = "A mechanic's most handy tool.",
    },

    -- fireworks
    ['firework_s1'] = {
        label = 'Small Firework: Rex', weight = 2300, stack = true,
        description = "See that shit go bing bong.",
    },

    ['firework_s2'] = {
        label = 'Small Firework: Rex', weight = 2300, stack = true,
        description = "See that shit go bing bong.",
    },

    ['firework_b1'] = {
        label = 'Small Firework: Rex', weight = 2300, stack = true,
        description = "See that shit go bing bong.",
    },

    ['firework_b2'] = {
        label = 'Small Firework: Rex', weight = 2300, stack = true,
        description = "See that shit go bing bong.",
    },

    ['firework_exp'] = {
        label = 'Expired Fireworks', weight = 1500, stack = true,
        description = "Remnants of a good time. I wonder what's inside?",
    },

    -- bombs
    ['bombbag_exp'] = {
        label = 'Explosive Bag', weight = 5500, stack = false,
        consume = 1,
        description = "Pro tip: Rust is not a vitamin. Also, I need to see a doctor.",
    },

    -- beach
    ['cooler_beer'] = {
        label = 'Alcohol Cooler', weight = 2300, stack = false,
        description = "Get some fresh beers, dude.",
    },

    -- camping
    ['tent'] = {
        label = 'Camping Tent', weight = 5600, stack = true,
        description = "Good for holding things and looking nature-y.",
    },

    ['foldchair'] = {
        label = 'Foldable Chair', weight = 2300, stack = true,
        description = "Plant a chair and an ass in that chair.",
    },

    ['grilltable'] = {
        label = 'Cooking Kit', weight = 6800, stack = true,
        description = "Sustain yourself in the woods as you survive.",
    },



    ----------------------------------------------------------------
    ----------------------------------------------------------------
    --[[    Items - Crafting Supplies    ]]--

    ['scrap_iron'] = {
        label = 'Iron Scrap', weight = 60, stack = true,
        description = "Pro tip: Rust is not a vitamin. Also, I need to see a doctor.",
    },

    ['scrap_aluminium'] = {
        label = 'Aluminium Scrap', weight = 70, stack = true,
        description = "How do you pronounce this shit?",
    },

    ['scrap_bolts'] = {
        label = 'Bolts & Fittings', weight = 30, stack = true,
        description = "Hahahahaha, you said fittings.",
    },

    ['scrap_wood'] = {
        label = 'Wood Planks', weight = 120, stack = true,
        description = "It is not can you, but 'wood' you pick this up?",
    },

    ['scrap_plastic'] = {
        label = 'Plastic Scrap', weight = 30, stack = true,
        description = "Pro tip: Rust is not a vitamin. Also, I need to see a doctor.",
    },

    ['scrap_bottle'] = {
        label = 'Glass Bottle', weight = 50, stack = true,
        description = "And they didn't save any for you? Shame.",
    },

    ['scrap_wires'] = {
        label = 'Bundle of Wires', weight = 30, stack = true,
        description = "What do you call a wire with a break in it?",
    },

    ['chem_sulfur'] = {
        label = 'Sulfur', weight = 150, stack = true,
        description = "Pro tip: Rust is not a vitamin. Also, I need to see a doctor.",
    },

    ['chem_potnitr'] = {
        label = 'Potassium Nitrate', weight = 130, stack = true,
        description = "Pro tip: Rust is not a vitamin. Also, I need to see a doctor.",
    },

    ['chem_saltp'] = {
        label = 'Saltpeter', weight = 120, stack = true,
        description = "Pro tip: Rust is not a vitamin. Also, I need to see a doctor.",
    },



    ----------------------------------------------------------------
    ----------------------------------------------------------------
    --[[    Items - Mining    ]]--

    ['crystal_uncut'] = {
        label = 'Uncut Crystal', weight = 100, stack = true,
        description = "Good job, you found... that shit.",
    },

    ['ore_iron'] = {
        label = 'Iron Ore', weight = 230, stack = true,
        description = "Man, I know a place online where this is also worth nothing.",
    },

    ['ore_copper'] = {
        label = 'Copper Ore', weight = 230, stack = true,
        description = "No, we don't make copper weapons, you nerd.",
    },

    ['ore_tin'] = {
        label = 'Tin Ore', weight = 230, stack = true,
        description = "I almost forgot these were a thing. How neat.",
    },
}