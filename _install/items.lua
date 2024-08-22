return {
    ----------------------------------------------------------------
    ----------------------------------------------------------------
    --[[    Consumables - General Foods    ]]--

    ['sandwich_ham'] = {
        label = 'Ham Sandwich', weight = 250, stack = true, close = true,
        description = "Ham in bread? What a wild concept.",
        allowArmed = false,
        client = {
            status = { hunger = 230000 }, anim = 'eating_hand', prop = 'sandwich',
            usetime = 7500, disable = { move = false, car = false, combat = true },
        },
    },

    ['sandwich_beef'] = {
        label = 'Beef Sandwich', weight = 250, stack = true, close = true,
        description = "I smell like beef.",
        allowArmed = false,
        client = {
            status = { hunger = 230000 }, anim = 'eating_hand', prop = 'sandwich',
            usetime = 7500, disable = { move = false, car = false, combat = true },
        },
    },

    ['sandwich_chkn'] = {
        label = 'Chicken Sandwich', weight = 250, stack = true, close = true,
        description = "Feathers not included, unfortunately.",
        allowArmed = false,
        client = {
            status = { hunger = 230000 }, anim = 'eating_hand', prop = 'sandwich',
            usetime = 7500, disable = { move = false, car = false, combat = true },
        },
    },

    ['sandwich_eggs'] = {
        label = 'Chicken Sandwich', weight = 250, stack = true, close = true,
        description = "Feathers not included, unfortunately.",
        allowArmed = false,
        client = {
            status = { hunger = 230000 }, anim = 'eating_hand', prop = 'sandwich',
            usetime = 7500, disable = { move = false, car = false, combat = true },
        },
    },

    ['burger_reg'] = {
        label = 'Burger', weight = 250, stack = true, close = true,
        description = "A regular burger with nothing on it.",
        allowArmed = false,
        client = {
            status = { hunger = 230000 }, anim = 'eating_hand', prop = 'burger',
            usetime = 7500, disable = { move = false, car = false, combat = true },
        },
    },

    ['burger_chs'] = {
        label = 'Cheese Burger', weight = 250, stack = true, close = true,
        description = "A regular burger with some cheese.",
        allowArmed = false,
        client = {
            status = { hunger = 230000 }, anim = 'eating_hand', prop = 'burger',
            usetime = 7500, disable = { move = false, car = false, combat = true },
        },
    },

    ['burger_bcn'] = {
        label = 'Bacon Cheese Burger', weight = 250, stack = true, close = true,
        description = "A regular burger with some cheese and bacon.",
        allowArmed = false,
        client = {
            status = { hunger = 230000 }, anim = 'eating_hand', prop = 'burger',
            usetime = 7500, disable = { move = false, car = false, combat = true },
        },
    },

    ['taco'] = {
        label = 'Beef Taco', weight = 250, stack = true, close = true,
        description = "A gas station taco? Yeah, totally safe.",
        allowArmed = false,
        client = {
            status = { hunger = 190000 }, anim = 'eating_hand', prop = 'taco',
            usetime = 7500, disable = { move = false, car = false, combat = true },
        },
    },

	['apple'] = {
        label = 'Apple', weight = 150, stack = true, close = true,
        description = "'Get that shit away from me' - Dr. Cohen'",
        allowArmed = false,
        client = {
            status = { hunger = 100000 }, anim = 'eating_hand', prop = 'apple',
            usetime = 3500, disable = { move = false, car = false, combat = true },
        },
    },

	['banana'] = {
        label = 'Banana', weight = 150, stack = true, close = true,
        description = "B a n a n a n a n a n a n a n a.",
        allowArmed = false,
        client = {
            status = { hunger = 100000 }, anim = 'eating_hand', prop = 'banana',
            usetime = 4500, disable = { move = false, car = false, combat = true },
        },
    },

	['chips_bag'] = {
        label = 'Bag of Chips', weight = 150, stack = true, close = true,
        description = "Can you only have one? I can.",
        allowArmed = false,
        client = {
            status = { hunger = 80000 }, anim = 'drinking_hand', prop = 'chips_bag',
            usetime = 4500, disable = { move = false, car = false, combat = true },
        },
    },

	['candy'] = {
        label = 'P\'s & Q\'s', weight = 100, stack = true, close = true,
        description = "Do you still have teeth? You wont soon.",
        allowArmed = false,
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
        allowArmed = false,
        client = {
            status = { hunger = 350000 }, anim = 'eating_tool', prop = {
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
        allowArmed = false,
        client = {
            status = { hunger = 350000 }, anim = 'eating_tool', prop = {
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
        allowArmed = false,
        client = {
            status = { hunger = 350000 }, anim = 'eating_tool', prop = {
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
        allowArmed = false,
        client = {
            status = { hunger = 350000 }, anim = 'eating_tool', prop = {
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
        allowArmed = false,
        client = {
            status = { hunger = 200000 }, anim = 'eating_hand', prop = 'sandwich',
            usetime = 7500, disable = { move = false, car = false, combat = true },
        },
    },

    ['bs_moneyshot'] = {
        label = 'Money Shot', weight = 250, stack = true, close = true,
        description = "If you find $10, it's mine.",
        allowArmed = false,
        client = {
            status = { hunger = 200000 }, anim = 'eating_hand', prop = 'sandwich',
            usetime = 7500, disable = { move = false, car = false, combat = true },
        },
    },

    ['bs_doubleshot'] = {
        label = 'Double Shot', weight = 250, stack = true, close = true,
        description = "Double the heart problems.",
        allowArmed = false,
        client = {
            status = { hunger = 200000 }, anim = 'eating_hand', prop = 'sandwich',
            usetime = 7500, disable = { move = false, car = false, combat = true },
        },
    },

    ['bs_godfather'] = {
        label = 'Godfather', weight = 250, stack = true, close = true,
        description = "You come here on the day of my burger\'s grilling?",
        allowArmed = false,
        client = {
            status = { hunger = 200000 }, anim = 'eating_hand', prop = 'sandwich',
            usetime = 7500, disable = { move = false, car = false, combat = true },
        },
    },

    ['bs_fries'] = {
        label = 'French Fries', weight = 250, stack = true, close = true,
        description = "Internal bleeding sold separately.",
        allowArmed = false,
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
        allowArmed = false,
        client = {
            status = { thirst = 260000 }, anim = 'drinking_hand', prop = 'water',
            usetime = 3500, disable = { move = false, car = false, combat = true },
        },
    },

	['milk'] = {
        label = 'Milk', weight = 100, stack = true, close = true,
        description = "You need strong bones for all that socializing you don't do.",
        allowArmed = false,
        client = {
            status = { thirst = 130000 }, anim = 'drinking_hand', prop = 'milk',
            usetime = 3500, disable = { move = false, car = false, combat = true },
        },
    },

	['ecola'] = {
        label = 'eCola Can', weight = 120, stack = true, close = true,
        description = "Carbonated syrup? Good for the soul.",
        allowArmed = false,
        client = {
            status = { thirst = 110000 }, anim = 'drinking_hand', prop = 'ecola',
            usetime = 3500, disable = { move = false, car = false, combat = true },
        },
    },

	['sprunk'] = {
        label = 'Sprunk Can', weight = 120, stack = true, close = true,
        description = "Like getting punched in the mouth by spicy water.",
        allowArmed = false,
        client = {
            status = { thirst = 110000 }, anim = 'drinking_hand', prop = 'sprunk',
            usetime = 3500, disable = { move = false, car = false, combat = true },
        },
    },

	['orangotang'] = {
        label = 'Orang-o-tang Can', weight = 120, stack = true, close = true,
        description = "Who the hell likes orange drinks? Cause I do.",
        allowArmed = false,
        client = {
            status = { thirst = 110000 }, anim = 'drinking_hand', prop = 'orangotang',
            usetime = 3500, disable = { move = false, car = false, combat = true },
        },
    },

	['ejunk'] = {
        label = 'eJunk Can', weight = 120, stack = true, close = true,
        description = "God yes, I need it in my blood.",
        allowArmed = false,
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
        allowArmed = false,
        client = {
            status = { thirst = 130000 }, anim = 'drinking_hand', prop = 'coffee',
            usetime = 3500, disable = { move = false, car = false, combat = true },
        },
    },

    ['coffee_mocha'] = {
        label = 'Mocha', weight = 100, stack = true, close = true,
        description = "What even IS a mocha?",
        allowArmed = false,
        client = {
            status = { thirst = 130000 }, anim = 'drinking_hand', prop = 'coffee',
            usetime = 3500, disable = { move = false, car = false, combat = true },
        },
    },

    ['coffee_cpcno'] = {
        label = 'Cappuccino', weight = 100, stack = true, close = true,
        description = "This might wake you up a smidgey smidge bit.",
        allowArmed = false,
        client = {
            status = { thirst = 130000 }, anim = 'drinking_hand', prop = 'coffee',
            usetime = 3500, disable = { move = false, car = false, combat = true },
        },
    },

    ['coffee_amrcno'] = {
        label = 'Americano', weight = 100, stack = true, close = true,
        description = "American coffee, with an O.",
        allowArmed = false,
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
        allowArmed = false,
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
        allowArmed = false,
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
        allowArmed = false,
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
        allowArmed = false,
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
        allowArmed = false,
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
        allowArmed = false,
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
        allowArmed = false,
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
        allowArmed = false,
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
        allowArmed = false,
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
        allowArmed = false,
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
        allowArmed = false,
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
        allowArmed = false,
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
        allowArmed = false,
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
        allowArmed = false,
        client = {
            status = { drunk = 350000 },
            anim = 'drinking_hand', prop = 'liqour_glass',
            usetime = 5500, disable = { move = false, car = false, combat = true },
        },
    },

    ['bleuterd_glass'] = {
        label = 'Glass of Bleuter\'d Champagne', weight = 150,
        stack = true, close = true,
        description = "Like whiskey, but more ouch.",
        allowArmed = false,
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
        allowArmed = false,
        client = {
            status = { drunk = 350000 },
            anim = 'drinking_hand', prop = 'liqour_glass',
            usetime = 5500, disable = { move = false, car = false, combat = true },
        },
    },

    ['tequilya_glass'] = {
        label = 'Glass of Tequilya Tequila', weight = 150,
        stack = true, close = true,
        description = "Like whiskey, but more ouch.",
        allowArmed = false,
        client = {
            status = { drunk = 350000 },
            anim = 'drinking_hand', prop = 'liqour_glass',
            usetime = 5500, disable = { move = false, car = false, combat = true },
        },
    },

    ['nogo_glass'] = {
        label = 'Glass of Nogo Vodka', weight = 150,
        stack = true, close = true,
        description = "Like whiskey, but more ouch.",
        allowArmed = false,
        client = {
            status = { drunk = 350000 },
            anim = 'drinking_hand', prop = 'liqour_glass',
            usetime = 5500, disable = { move = false, car = false, combat = true },
        },
    },

    ['mount_glass'] = {
        label = 'Glass of Mount Whiskey', weight = 150,
        stack = true, close = true,
        description = "Like whiskey, but more ouch.",
        allowArmed = false,
        client = {
            status = { drunk = 350000 },
            anim = 'drinking_hand', prop = 'liqour_glass',
            usetime = 5500, disable = { move = false, car = false, combat = true },
        },
    },

    ['richards_glass'] = {
        label = 'Glass of Richard\'s Whiskey', weight = 150,
        stack = true, close = true,
        description = "Like whiskey, but more ouch.",
        allowArmed = false,
        client = {
            status = { drunk = 350000 },
            anim = 'drinking_hand', prop = 'liqour_glass',
            usetime = 5500, disable = { move = false, car = false, combat = true },
        },
    },

    ['cariaque_shot'] = {
        label = 'Glass of Cariaque Bourbon', weight = 150,
        stack = true, close = true,
        description = "Like whiskey, but more ouch.",
        allowArmed = false,
        client = {
            status = { drunk = 350000 },
            anim = 'drinking_hand', prop = 'liqour_shot',
            usetime = 2000, disable = { move = false, car = false, combat = true },
        },
    },

    ['bourgeoix_shot'] = {
        label = 'Shot of Bourgeoix Cognac', weight = 150,
        stack = true, close = true,
        description = "Like whiskey, but more ouch.",
        allowArmed = false,
        client = {
            status = { drunk = 350000 },
            anim = 'drinking_hand', prop = 'liqour_shot',
            usetime = 2000, disable = { move = false, car = false, combat = true },
        },
    },
    
    ['bleuterd_shot'] = {
        label = 'Shot of Bleuter\'d Champagne', weight = 150,
        stack = true, close = true,
        description = "Like whiskey, but more ouch.",
        allowArmed = false,
        client = {
            status = { drunk = 350000 },
            anim = 'drinking_hand', prop = 'liqour_shot',
            usetime = 2000, disable = { move = false, car = false, combat = true },
        },
    },

    ['ragga_shot'] = {
        label = 'Shot of Ragga Rum', weight = 150,
        stack = true, close = true,
        description = "Like whiskey, but more ouch.",
        allowArmed = false,
        client = {
            status = { drunk = 350000 },
            anim = 'drinking_hand', prop = 'liqour_shot',
            usetime = 2000, disable = { move = false, car = false, combat = true },
        },
    },

    ['tequilya_shot'] = {
        label = 'Shot of Tequilya Tequila', weight = 150,
        stack = true, close = true,
        description = "Like whiskey, but more ouch.",
        allowArmed = false,
        client = {
            status = { drunk = 350000 },
            anim = 'drinking_hand', prop = 'liqour_shot',
            usetime = 2000, disable = { move = false, car = false, combat = true },
        },
    },

    ['nogo_shot'] = {
        label = 'Shot of Nogo Vodka', weight = 150,
        stack = true, close = true,
        description = "Like whiskey, but more ouch.",
        allowArmed = false,
        client = {
            status = { drunk = 350000 },
            anim = 'drinking_hand', prop = 'liqour_shot',
            usetime = 2000, disable = { move = false, car = false, combat = true },
        },
    },

    ['mount_shot'] = {
        label = 'Shot of Mount Whiskey', weight = 150,
        stack = true, close = true,
        description = "Like whiskey, but more ouch.",
        allowArmed = false,
        client = {
            status = { drunk = 350000 },
            anim = 'drinking_hand', prop = 'liqour_shot',
            usetime = 2000, disable = { move = false, car = false, combat = true },
        },
    },

    ['richards_shot'] = {
        label = 'Shot of Richard\'s Whiskey', weight = 150,
        stack = true, close = true,
        description = "Like whiskey, but more ouch.",
        allowArmed = false,
        client = {
            status = { drunk = 350000 },
            anim = 'drinking_hand', prop = 'liqour_shot',
            usetime = 2000, disable = { move = false, car = false, combat = true },
        },
    },




    ----------------------------------------------------------------
    ----------------------------------------------------------------
    --[[    Cooking - Ingredients    ]]--

    ['ck_flour'] = {
        label = 'All Purpouse Flour', weight = 15, stack = true,
        description = "General Ingredients for cooking.",
    },

    ['ck_bakingp'] = {
        label = 'Baking Powder', weight = 5, stack = true,
        description = "General Ingredients for cooking.",
    },

    ['ck_salt'] = {
        label = 'Sea Salt', weight = 5, stack = true,
        description = "General Ingredients for cooking.",
    },

    ['ck_pepper'] = {
        label = 'Cracked Pepper', weight = 5, stack = true,
        description = "General Ingredients for cooking.",
    },

    ['ck_sugar'] = {
        label = 'Powdered Sugar', weight = 10, stack = true,
        description = "General Ingredients for cooking.",
    },

    ['ck_spices'] = {
        label = 'Spices', weight = 5, stack = true,
        description = "General Ingredients for cooking.",
    },

    ['ck_cookoil'] = {
        label = 'Cooking Oil', weight = 15, stack = true,
        description = "General Ingredients for cooking.",
    },

    ['ck_bread'] = {
        label = 'Bread Loaf', weight = 15, stack = true,
        description = "General Ingredients for cooking.",
    },

    ['ck_rice'] = {
        label = 'Rice', weight = 15, stack = true,
        description = "General Ingredients for cooking.",
    },

    ['ck_butter'] = {
        label = 'Salted Butter', weight = 15, stack = true,
        description = "General Ingredients for cooking.",
    },

    ['ck_cheese'] = {
        label = 'Cheese', weight = 15, stack = true,
        description = "General Ingredients for cooking.",
    },

    ['ck_tomatoes'] = {
        label = 'Tomatoes', weight = 15, stack = true,
        description = "General Ingredients for cooking.",
    },

    ['ck_lettuce'] = {
        label = 'Lettuce', weight = 15, stack = true,
        description = "General Ingredients for cooking.",
    },

    ['ck_onions'] = {
        label = 'Onions', weight = 15, stack = true,
        description = "General Ingredients for cooking.",
    },

    ['ck_peppers'] = {
        label = 'Peppers', weight = 15, stack = true,
        description = "General Ingredients for cooking.",
    },

    ['ck_potatoes'] = {
        label = 'Potatoes', weight = 15, stack = true,
        description = "General Ingredients for cooking.",
    },

    ['ck_eggs'] = {
        label = 'Eggs', weight = 15, stack = true,
        description = "General Ingredients for cooking.",
    },

    ['ck_beef'] = {
        label = 'Beef', weight = 15, stack = true,
        description = "General Ingredients for cooking.",
    },

    ['ck_chkn'] = {
        label = 'Chicken', weight = 15, stack = true,
        description = "General Ingredients for cooking.",
    },

    ['ck_pork'] = {
        label = 'Pork', weight = 15, stack = true,
        description = "General Ingredients for cooking.",
    },

    ['ck_chocolt'] = {
        label = 'Chocolate', weight = 15, stack = true,
        description = "General Ingredients for cooking.",
    },

    ['ck_grhmckr'] = {
        label = 'Graham Crackers', weight = 15, stack = true,
        description = "General Ingredients for cooking.",
    },

    ['ck_mrshmlw'] = {
        label = 'Marshmellow', weight = 15, stack = true,
        description = "General Ingredients for cooking.",
    },




    ----------------------------------------------------------------
    ----------------------------------------------------------------
    --[[    Tables    ]]--

    ['fold_table'] = {
        label = 'Portable Table', weight = 3500,
        stack = false, close = true,
        description = "For on the go needs of a flat surface.",
    },

    ['tkit_grill'] = {
        label = 'Grill Kit', weight = 4500,
        stack = false, close = true,
        description = "Loads the table with outdoor grilling equipment.",
    },

    ['tkit_alch'] = {
        label = 'Liqour Kit', weight = 4500,
        stack = false, close = true,
        description = "Loads the table with drinks and shots.",
    },

    ['tkit_weap'] = {
        label = 'Weapons Kit', weight = 4500,
        stack = false, close = true,
        description = "Loads the table with weapon customizations.",
    },

    ['tkit_crim'] = {
        label = 'Illegal Kit', weight = 4500,
        stack = false, close = true,
        description = "Loads the table with criminal crafting options.",
    },

    ['tkit_weed'] = {
        label = 'Cannabis Prep Kit', weight = 4500,
        stack = false, close = true,
        description = "Loads the table with cannabis processing equipment.",
    },

    ['tkit_coke'] = {
        label = 'Cocaine Prep Kit', weight = 4500,
        stack = false, close = true,
        description = "Loads the table with cocaine processing equipment.",
    },

    ['tkit_meth'] = {
        label = 'Meth Prep Kit', weight = 4500,
        stack = false, close = true,
        description = "Loads the table with meth processing equipment.",
    },




    ----------------------------------------------------------------
    ----------------------------------------------------------------
    --[[    Containers    ]]--

    ['cnt_bcpk1'] = {
        label = 'Backpack', weight = 1000,
        stack = true, close = false,
        description = "Use to hold thing, like a bag that holds things.",
    },

    ['cnt_bcpk2'] = {
        label = 'Backpack', weight = 1000,
        stack = false, close = false,
        description = "Use to hold thing, like a bag that holds things.",
    },

    ['cnt_bcpk3'] = {
        label = 'Backpack', weight = 1000,
        stack = false, close = false,
        description = "Use to hold thing, like a bag that holds things.",
    },

    ['cnt_bcpk4'] = {
        label = 'Backpack', weight = 1000,
        stack = false, close = false,
        description = "Use to hold thing, like a bag that holds things.",
    },

    ['cnt_bfcs1'] = {
        label = 'Briefcase', weight = 1000,
        stack = false, close = false,
        description = "I\'m a business man with a business plan.",
    },

    ['cnt_bfcs2'] = {
        label = 'Briefcase', weight = 1000,
        stack = false, close = false,
        description = "I\'m a business man with a business plan.",
    },

    ['cnt_bfcs3'] = {
        label = 'Briefcase', weight = 1000,
        stack = false, close = false,
        description = "I\'m a business man with a business plan.",
    },




    ----------------------------------------------------------------
    ----------------------------------------------------------------
    --[[    Items    ]]--

    ['money'] = {
        label = 'Money', weight = 0, stack = true,
        description = "The life blood of your frivolous activities.",
    },

    ['clothbag'] = {
        label = 'Clothing Bag', weight = 3000, stack = false,
        consume = 1,
        description = "Good for one change of clothes.",
    },

    ['notebook'] = {
        label = 'Notebook', weight = 750, stack = false,
        description = "For writing notes.",
    },

    ['parachute'] = {
        label = 'Parachute', weight = 3000, stack = false,
        consume = 1,
        description = "Pray that it works.",
    },

    ['note'] = {
        label = 'Note', weight = 10, stack = false,
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
        label = 'Basic Bandage', weight = 300, stack = true,
        consume = 1,
        description = "That won't stop a bullet hole but ok I guess.",
    },

    -- armor
    ['armor1'] = {
        label = 'Light Body Armor', weight = 5000, stack = false,
        consume = 1,
        description = "Can it stop bullets? Lets find out.",
    },

    ['armor2'] = {
        label = 'Medium Body Armor', weight = 8000, stack = false,
        consume = 1,
        description = "You'll probably kinda sort be fine.",
    },

    ['armor3'] = {
        label = 'Heavy Body Armor', weight = 11000, stack = false,
        consume = 1,
        description = "I would be surprised if you got hurt wearing this.",
    },

    -- shields
    ['shield_riot'] = {
        label = 'Police Riot Shield', weight = 4000, stack = false,
        description = "I would be surprised if you got hurt wearing this.",
        allowArmed = false,
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
        consume = 0.2,
        description = "I see what's wrong with it. Ain't got no gas in it.",
        allowArmed = false,
    },

    ['cleankit'] = {
        label = 'Vehicle Cleaning Kit', weight = 7500, stack = true,
        consume = 0.2,
        description = "Vanity for a car? That's new.",
        allowArmed = false,
    },

    ['spraykit'] = {
        label = 'Spray Kit', weight = 2000, stack = true,
        consume = 0.2,
        description = "Paints over your car with this color.",
        allowArmed = false,
    },

    ['tirekit'] = {
        label = 'Tire Repair Kit', weight = 2000, stack = true,
        consume = 0.2,
        description = "Yes, you DO need all your tires to drive.",
        allowArmed = false,
    },

    --[[    WIP tool, do not use
    ['inspectionkit'] = {
        label = 'Vehicle Insp. Tool', weight = 2000, stack = true,
        description = "A mechanic's most handy tool.",
        allowArmed = false,
    },
    ]]

    -- fireworks
    ['firework_s1'] = {
        label = 'Small Firework: Rex', weight = 2300, stack = true,
        consume = 1,
        description = "See that shit go bing bong.",
    },

    ['firework_s2'] = {
        label = 'Small Firework: Rex', weight = 2300, stack = true,
        consume = 1,
        description = "See that shit go bing bong.",
    },

    -- bombs
    ['bombbag_exp'] = {
        label = 'Explosive Bag', weight = 5500, stack = false,
        consume = 1,
        description = "That shit gonna explode boi, why are you still here?.",
        allowArmed = false,
    },

    -- cracked phone
    ['hacktool_phone'] = {
        label = 'Cracked Phone', weight = 230, stack = false,
        description = "This shit is cracked yo, why do you still want it?.",
        allowArmed = false,
    },

    -- smokebomb
    ['smokebomb'] = {
        label = 'Smokebomb', weight = 230, stack = true,
        description = "Blind thy foes and flee, you fool.",
        allowArmed = true,
    },

    -- beach
    ['cooler_beer'] = {
        label = 'Alcohol Cooler', weight = 2300, stack = false,
        consume = 1,
        description = "Get some fresh beers, dude.",
    },

    -- camping
    ['tent'] = {
        label = 'Camping Tent', weight = 5600, stack = true,
        description = "Good for holding things and looking nature-y.",
        consume = 1,
        allowArmed = false,
    },

    ['foldchair'] = {
        label = 'Foldable Chair', weight = 2300, stack = true,
        description = "Plant a chair and an ass in that chair.",
        consume = 1,
        allowArmed = false,
    },

    ['alc_cups'] = {
        label = 'Glass Cups', weight = 30,
        stack = true, close = false,
        description = "Used for mixing drinks.",
    },

    ['alc_shots'] = {
        label = 'Shot Glasses', weight = 30,
        stack = true, close = false,
        description = "Used for pouring shots.",
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



    ----------------------------------------------------------------
    ----------------------------------------------------------------
    --[[    Items - Drugs    ]]--

    ['rollpaper'] = {
        label = 'Rolling Paper', weight = 60, stack = true,
        description = "You'll need these my guy.",
    },

    ['jt_sativa'] = {
        label = 'Joint: Sativa', weight = 60, stack = true,
        consume = 1,
        description = "When you need a decent vibe",
        client = {
            export = 'sativa'
        }
    },

    ['jt_indica'] = {
        label = 'Joint: Indica', weight = 60, stack = true,
        description = "Oh you're gonna feel the big eepy",
        client = {
            export = 'indica'
        }
    },

    ['jt_hybrid'] = {
        label = 'Joint: Hybrid', weight = 60, stack = true,
        description = "It's the good mix of shit",
        client = {
            export = 'hybrid'
        }
    },

    ['wd_sativa'] = {
        label = 'Sativa Plant', weight = 60, stack = true,
        description = "Wild cannabis, yet to be processed and vibing in your pocket",
    },

    ['wd_indica'] = {
        label = 'Indica Plant', weight = 60, stack = true,
        description = "Wild cannabis, yet to be processed and vibing in your pocket",
    },

    ['wd_hybrid'] = {
        label = 'Hybrid Plant', weight = 60, stack = true,
        description = "Wild cannabis, yet to be processed and vibing in your pocket",
    },

    ['pc_sativa'] = {
        label = 'Sativa Buds', weight = 30, stack = true,
        description = "Ready to be ground up, sold, or forgotten in your dresser.",
        buttons = {
            {
                label = 'Roll Joint', action = function(slot)
                    exports['mi_items']:roll_sativa()
                end
            }
        }
    },

    ['pc_indica'] = {
        label = 'Indica Buds', weight = 30, stack = true,
        description = "Ready to be ground up, sold, or forgotten in your dresser.",
        buttons = {
            {
                label = 'Roll Joint', action = function(slot)
                    exports['mi_items']:roll_indica()
                end
            }
        }
    },

    ['pc_hybrid'] = {
        label = 'Hybrid Buds', weight = 30, stack = true,
        description = "Ready to be ground up, sold, or forgotten in your dresser.",
        buttons = {
            {
                label = 'Roll Joint', action = function(slot)
                    exports['mi_items']:roll_hybrid()
                end
            }
        }
    },

    ['bc_sativa'] = {
        label = 'Sativa Brick', weight = 700, stack = true,
        description = "The phrase 'hits like a brick' comes to mind, more out there.",
    },

    ['bc_indica'] = {
        label = 'Indica Brick', weight = 700, stack = true,
        description = "The phrase 'hits like a brick' comes to mind, more out there.",
    },

    ['bc_hybrid'] = {
        label = 'Hybrid Brick', weight = 700, stack = true,
        description = "The phrase 'hits like a brick' comes to mind, more out there.",
    },

    ['pd_meth'] = {
        label = 'Powdered Meth', weight = 60, stack = true,
        description = "If it looks and smells like cocaine, it's probably not cocaine",
    },

    ['cr_meth'] = {
        label = 'Crystal Meth', weight = 90, stack = true,
        description = "Teeth never matter when you can get new ones.",
    },

    ['bc_meth'] = {
        label = 'Brick of Crystal Meth', weight = 90, stack = true,
        description = "The phrase 'hits like a brick' comes to mind, more out there.",
    },

    ['wd_cocaine'] = {
        label = 'Coca Leaves', weight = 90, stack = true,
        description = "Is the one we smoke? No? Imma try it anyways",
    },

    ['pc_cocaine'] = {
        label = 'Powdered Cocaine', weight = 90, stack = true,
        description = "Up the nose as fast as that shit goes",
    },

    ['bc_cocaine'] = {
        label = 'Brick of Powdered Cocaine', weight = 90, stack = true,
        description = "The phrase 'hits like a brick' comes to mind, more out there.",
    },



    ----------------------------------------------------------------
    ----------------------------------------------------------------
    --[[    Items - Chemistry    ]]--

    ['chem_sulfur'] = {
        label = 'Sulfur', weight = 140, stack = true,
        description = "A chemical used in chemistry or stored at Humane Labs.",
    },

    ['chem_potnitr'] = {
        label = 'Potassium Nitrate', weight = 130, stack = true,
        description = "A chemical used in chemistry or stored at Humane Labs.",
    },

    ['chem_psdnrn'] = {
        label = 'Psuedoephedrine', weight = 120, stack = true,
        description = "A chemical used in chemistry or stored at Humane Labs.",
    },

    ['chem_iodine'] = {
        label = 'Iodine', weight = 120, stack = true,
        description = "A chemical used in chemistry or stored at Humane Labs.",
    },

    ['chem_phsrus'] = {
        label = 'Phosphorus', weight = 120, stack = true,
        description = "A chemical used in chemistry or stored at Humane Labs.",
    },

    ['chem_amonia'] = {
        label = 'Ammonia', weight = 120, stack = true,
        description = "A chemical used in chemistry or stored at Humane Labs.",
    },

    ['chem_actone'] = {
        label = 'Acetone', weight = 120, stack = true,
        description = "A chemical used in chemistry or stored at Humane Labs.",
    },



    ----------------------------------------------------------------
    ----------------------------------------------------------------
    --[[    Items - Jeweling    ]]--

    ['ruby_uncut'] = {
        label = 'Uncut Ruby', weight = 100, stack = true,
        description = "Kinda pretty, but you should cut this.",
    },

    ['sapphire_uncut'] = {
        label = 'Uncut Sapphire', weight = 100, stack = true,
        description = "Kinda pretty, but you should cut this.",
    },

    ['emerald_uncut'] = {
        label = 'Uncut Emerald', weight = 100, stack = true,
        description = "Kinda pretty, but you should cut this.",
    },

    ['diamond_uncut'] = {
        label = 'Uncut Diamond', weight = 100, stack = true,
        description = "Kinda pretty, but you should cut this.",
    },

    ['ruby_cut'] = {
        label = 'Cut Ruby', weight = 100, stack = true,
        description = "This one is favorable with ground types.",
    },

    ['sapphire_cut'] = {
        label = 'Cut Sapphire', weight = 100, stack = true,
        description = "This one is favorable with water types.",
    },

    ['emerald_cut'] = {
        label = 'Cut Emerald', weight = 100, stack = true,
        description = "This one is favorable with dragon types.",
    },

    ['diamond_cut'] = {
        label = 'Cut Diamond', weight = 100, stack = true,
        description = "Ethically sourced, I think.",
    },



    ----------------------------------------------------------------
    ----------------------------------------------------------------
    --[[    Items - Diving    ]]--

    ['trsr_doubloons'] = {
        label = 'Gold Doubloons', weight = 100, stack = true,
        description = "You remember that meme with the cat? I miss that cat.",
    },

    ['trsr_sharkstooth'] = {
        label = 'Sharks Tooth', weight = 100, stack = true,
        description = "If you start singing the baby shark song I will stab you.",
    },

    ['trsr_sanddollar'] = {
        label = 'Gold Doubloons', weight = 100, stack = true,
        description = "Did you know these are from drying ouy jelly fish?",
    },

    ['trsr_seaglass'] = {
        label = 'Sea Glass', weight = 100, stack = true,
        description = "Nice and smooth. Don't do what I think you're thinking of doing.",
    },

    ['trsr_pearls'] = {
        label = 'Pearls', weight = 100, stack = true,
        description = "Don't wear these into an alley.",
    },


    ----------------------------------------------------------------
    ----------------------------------------------------------------
    --[[    Items - Mining    ]]--

    ['ore_iron'] = {
        label = 'Iron Ore', weight = 230, stack = true,
        description = "Man, I know a place online where this is also worth nothing.",
    },

    ['ore_gold'] = {
        label = 'Gold Ore', weight = 230, stack = true,
        description = "Somehow less durable than Iron.",
    },

    ['ore_coal'] = {
        label = 'Coal', weight = 230, stack = true,
        description = "Was that from Santa? That's rough buddy.",
    }
}