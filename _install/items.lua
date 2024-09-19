    --[[
    ----------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------
    --- TESTING REFERENCE: DO NOT USE
 
    ['notebook'] = {
        label = 'Notebook', weight = 500, stack = false,
        allowArmed = false, consume = 0.05, client = {
            disable = { move = true, car = false, combat = true },
        }, description = "Used for writing notes.",
    },

    ['note'] = {
        label = 'Note', weight = 10, stack = false,
    },

    ['parachute'] = {
        label = 'Parachute', weight = 3000, stack = false,
        consume = 1,client = {
            disable = { move = false, car = false, combat = true },
        }, description = "Use to equip parachute tool.",
    },

    ['towel'] = {
        label = 'Towels', weight = 100, stack = true,
        consume = 0.25,
        description = "Wipe off all that grime and shit bud.",
    },

    ['hacktool_phone'] = {
        label = 'Cracked Phone', weight = 230, stack = false,
        description = "This shit is cracked yo, why do you still want it?.",
        allowArmed = false, consume = 0.1,
    },

    ['cooler_beer'] = {
        label = 'Alcohol Cooler', weight = 2300, stack = false,
        consume = 1,
        description = "Get some fresh beers, dude.",
    },

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
    
    ]]

return {

    ----------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------
    --- CONSUMABLES: GAS STATION

    ['subsandwich'] = {
        label = 'Sub Sandwich', weight = 120, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 160000 }, anim = 'eating_hand', prop = 'sandwich',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 7500,
        },
    },

    ['taco'] = {
        label = 'Breakfast Taco', weight = 110, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 160000 }, anim = 'eating_hand', prop = 'taco',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 7500,
        },
    },

    ['hotdog'] = {
        label = 'Plain Hotdog', weight = 90, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 160000 }, anim = 'eating_hand', prop = 'taco',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 7500,
        },
    },

    ['bagel'] = {
        label = 'Plain Bagel', weight = 90, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 160000 }, anim = 'eating_hand', prop = 'bagelp',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 7500,
        },
    },

    ['granbar'] = {
        label = 'Granola Bar', weight = 90, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 160000 }, anim = 'eating_hand', prop = 'granbar',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 7500,
        },
    },

    ['chips'] = {
        label = 'Potato Chips', weight = 90, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 160000 }, anim = 'eating_hand', prop = 'taco',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 7500,
        },
    },

    ['candy'] = {
        label = 'Box of Candy', weight = 90, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 160000 }, anim = 'drinking_hand', prop = 'candy',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 7500,
        },
    },

    ----------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------
    --- CONSUMABLES: FRUITS

    ['apple'] = {
        label = 'Apple', weight = 50, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 100000 }, anim = 'eating_hand', prop = 'apple',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 3500,
        },
    },

    ['banana'] = {
        label = 'Banana', weight = 50, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 100000 }, anim = 'eating_hand', prop = 'banana',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 3500,
        },
    },

    ['dragonfruit'] = {
        label = 'Dragonfruit', weight = 150, stack = true, close = true,
        allowArmed = false, buttons = {
            {
                label = 'Break Apart', action = function(slot)
                exports['mi_items']:cutfood_dragonfruit() end
            }
        }
    },

    ['dragonfruit_piece'] = {
        label = 'Dragonfruit Slice', weight = 50, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 100000 }, anim = 'eating_hand', prop = 'dragonfruit',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 3500,
        },
    },

    ['pineapple'] = {
        label = 'Pineapple', weight = 150, stack = true, close = true,
        allowArmed = false, buttons = {
            {
                label = 'Break Apart', action = function(slot)
                exports['mi_items']:cutfood_pineapple() end
            }
        }
    },

    ['pineapple_piece'] = {
        label = 'Pineapple Slice', weight = 50, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 100000 }, anim = 'eating_hand', prop = 'pineapple',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 3500,
        },
    },

    ['nectarine'] = {
        label = 'Nectarine', weight = 150, stack = true, close = true,
        allowArmed = false, buttons = {
            {
                label = 'Break Apart', action = function(slot)
                exports['mi_items']:cutfood_nectarine() end
            }
        }
    },

    ['nectarine_piece'] = {
        label = 'Nectarine Slice', weight = 50, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 100000 }, anim = 'eating_hand', prop = 'nectarine',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 3500,
        },
    },

    ['sunkist'] = {
        label = 'Sunkist', weight = 150, stack = true, close = true,
        allowArmed = false, buttons = {
            {
                label = 'Break Apart', action = function(slot)
                exports['mi_items']:cutfood_sunkist() end
            }
        }
    },

    ['sunkist_piece'] = {
        label = 'Sunkist Slice', weight = 50, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 100000 }, anim = 'eating_hand', prop = 'sunkist',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 3500,
        },
    },

    ----------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------
    --- CONSUMABLES: PIZZAS

    ['pza_cheese'] = {
        label = 'Cheese Pizza Slice', weight = 50, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 110000 }, anim = 'eating_hand', prop = 'pizza1',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 5500,
        },
    },

    ['pza_mushroom'] = {
        label = 'Mushroom Pizza Slice', weight = 50, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 110000 }, anim = 'eating_hand', prop = 'pizza2',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 5500,
        },
    },

    ['pza_veggie'] = {
        label = 'Veggie Pizza Slice', weight = 50, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 110000 }, anim = 'eating_hand', prop = 'pizza3',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 5500,
        },
    },

    ['pza_dbmeat'] = {
        label = 'Meat Pizza Slice', weight = 50, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 110000 }, anim = 'eating_hand', prop = 'pizza4',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 5500,
        },
    },

    ['pza_pproni'] = {
        label = 'Pepperoni Pizza Slice', weight = 50, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 110000 }, anim = 'eating_hand', prop = 'pizza5',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 5500,
        },
    },

    ----------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------
    --- CONSUMABLES: CRAFTABLE

    ['sandwich_ham'] = {
        label = 'Ham Sandwich', weight = 50, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 170000 }, anim = 'eating_hand', prop = 'sandwich',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 5500,
        },
    },

    ['sandwich_beef'] = {
        label = 'Beef Sandwich', weight = 50, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 170000 }, anim = 'eating_hand', prop = 'sandwich',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 5500,
        },
    },

    ['sandwich_chkn'] = {
        label = 'Chicken Sandwich', weight = 50, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 170000 }, anim = 'eating_hand', prop = 'sandwich',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 5500,
        },
    },

    ['burger_reg'] = {
        label = 'Hamburger', weight = 80, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 190000 }, anim = 'eating_hand', prop = 'burger',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 5500,
        },
    },

    ['burger_chs'] = {
        label = 'Cheese Burger', weight = 80, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 190000 }, anim = 'eating_hand', prop = 'burger',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 5500,
        },
    },

    ['burger_bcn'] = {
        label = 'Bacon Cheese Burger', weight = 80, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 190000 }, anim = 'eating_hand', prop = 'burger',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 5500,
        },
    },

    ['taco_beef'] = {
        label = 'Beef Taco', weight = 80, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 190000 }, anim = 'eating_hand', prop = 'burger',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 5500,
        },
    },

    ['taco_chicken'] = {
        label = 'Chicken Taco', weight = 80, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 190000 }, anim = 'eating_hand', prop = 'burger',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 5500,
        },
    },

    ['taco_pork'] = {
        label = 'Pork Taco', weight = 80, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 190000 }, anim = 'eating_hand', prop = 'burger',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 5500,
        },
    },

    ['noodle_beef'] = {
        label = 'Beef & Noodles', weight = 80, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 190000 }, anim = 'eating_tool', prop = {
                {
                    bone = 28422, model = 'prop_cs_fork',
                    pos = vec3(0.0, 0.0, 0.0), rot = vec3(180.0, 180.0, 0.0)
                },
                {
                    model = 'prop_ff_noodle_01',
                    pos = vec3(-0.04, -0.02, 0.03), rot = vec3(0.0, 20.0, 10.0)
                }
            },
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 15000,
        },
    },

    ['noodle_veggie'] = {
        label = 'Veggie & Noodles', weight = 80, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 190000 }, anim = 'eating_tool', prop = {
                {
                    bone = 28422, model = 'prop_cs_fork',
                    pos = vec3(0.0, 0.0, 0.0), rot = vec3(180.0, 180.0, 0.0)
                },
                {
                    model = 'prop_ff_noodle_01',
                    pos = vec3(-0.04, -0.02, 0.03), rot = vec3(0.0, 20.0, 10.0)
                }
            },
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 15000,
        },
    },

    ['noodle_chicken'] = {
        label = 'Chicken & Noodles', weight = 80, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 190000 }, anim = 'eating_tool', prop = {
                {
                    bone = 28422, model = 'prop_cs_fork',
                    pos = vec3(0.0, 0.0, 0.0), rot = vec3(180.0, 180.0, 0.0)
                },
                {
                    model = 'prop_ff_noodle_01',
                    pos = vec3(-0.04, -0.02, 0.03), rot = vec3(0.0, 20.0, 10.0)
                }
            },
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 15000,
        },
    },

    ['noodle_pork'] = {
        label = 'Pork & Noodles', weight = 80, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 190000 }, anim = 'eating_tool', prop = {
                {
                    bone = 28422, model = 'prop_cs_fork',
                    pos = vec3(0.0, 0.0, 0.0), rot = vec3(180.0, 180.0, 0.0)
                },
                {
                    model = 'prop_ff_noodle_01',
                    pos = vec3(-0.04, -0.02, 0.03), rot = vec3(0.0, 20.0, 10.0)
                }
            },
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 15000,
        },
    },

    ----------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------
    --- CONSUMABLES: DESSERTS

    ['donut1'] = {
        label = 'Chocolate Donut', weight = 50, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 100000 }, anim = 'eating_hand', prop = 'donut1',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 3500,
        },
    },

    ['donut2'] = {
        label = 'Strawberry Donut', weight = 50, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 100000 }, anim = 'eating_hand', prop = 'donut2',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 3500,
        },
    },

    ['smore'] = {
        label = 'Smore', weight = 60, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 100000 }, anim = 'eating_hand', prop = 'smore',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 3500,
        },
    },

    ['icm_vanilla'] = {
        label = 'Vanilla Ice Cream', weight = 60, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 100000 }, anim = 'eating_hand', prop = 'icrm7',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 3500,
        },
    },

    ['icm_cherry'] = {
        label = 'Cherry Ice Cream', weight = 60, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 100000 }, anim = 'eating_hand', prop = 'icrm1',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 3500,
        },
    },

    ['icm_choco'] = {
        label = 'Chocolate Ice Cream', weight = 60, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 100000 }, anim = 'eating_hand', prop = 'icrm2',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 3500,
        },
    },

    ['icm_strbry'] = {
        label = 'Strawberry Ice Cream', weight = 60, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 100000 }, anim = 'eating_hand', prop = 'icrm6',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 3500,
        },
    },

    ['icm_ckecrm'] = {
        label = 'Cookie Ice Cream', weight = 60, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 100000 }, anim = 'eating_hand', prop = 'icrm5',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 3500,
        },
    },

    ['icm_lemon'] = {
        label = 'Lemon Ice Cream', weight = 60, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 100000 }, anim = 'eating_hand', prop = 'icrm3',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 3500,
        },
    },

    ['icm_pistachio'] = {
        label = 'Pistachio Ice Cream', weight = 60, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 100000 }, anim = 'eating_hand', prop = 'icrm4',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 3500,
        },
    },

    ['icm_raspberry'] = {
        label = 'Raspberry Ice Cream', weight = 60, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { hunger = 100000 }, anim = 'eating_hand', prop = 'icrm8',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 3500,
        },
    },

    ----------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------
    --- CONSUMABLES: DRINKS

    ['water'] = {
        label = 'Water Bottle', weight = 60, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { thirst = 190000 }, anim = 'drinking_hand', prop = 'water',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 3500,
            },
    },

    ['milk'] = {
        label = '2% Milk', weight = 60, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
                status = { thirst = 170000 }, anim = 'drinking_hand', prop = 'milk',
                disable = { move = false, car = false, combat = true, sprint = true },
                usetime = 3500,
            },
    },

    ['ecola'] = {
        label = 'eCola', weight = 60, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
                status = { thirst = 150000 }, anim = 'drinking_hand', prop = 'ecola',
                disable = { move = false, car = false, combat = true, sprint = true },
                usetime = 3500,
            },
    },

    ['ecola_diet'] = {
        label = 'Diet eCola', weight = 60, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { thirst = 150000 }, anim = 'drinking_hand', prop = 'ecola',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 3500,
        },
    },

    ['sprunk'] = {
        label = 'Sprunk', weight = 60, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { thirst = 150000 }, anim = 'drinking_hand', prop = 'sprunk',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 3500,
        },
    },

    ['sprunk_diet'] = {
        label = 'Diet Sprunk', weight = 60, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { thirst = 150000 }, anim = 'drinking_hand', prop = 'sprunk',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 3500,
        },
    },

    ['orangotang'] = {
        label = 'Orang-O-Tang', weight = 60, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { thirst = 150000 }, anim = 'drinking_hand', prop = 'orangotang',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 3500,
        },
    },

    ['orangotang_diet'] = {
        label = 'Diet Orang-O-Tang', weight = 60, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { thirst = 150000 }, anim = 'drinking_hand', prop = 'orangotang',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 3500,
        },
    },

    ['ejunk'] = {
        label = 'eJunk', weight = 60, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { thirst = 150000 }, anim = 'drinking_hand', prop = 'ejunk',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 3500,
        },
    },

    ['coffee_black'] = {
        label = 'Black Coffee', weight = 60, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { thirst = 120000 }, anim = 'drinking_hand', prop = 'coffee',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 3500,
        },
    },

    ['coffee_mocha'] = {
        label = 'Mocha', weight = 60, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { thirst = 120000 }, anim = 'drinking_hand', prop = 'coffee',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 3500,
        },
    },

    ['coffee_cpcno'] = {
        label = 'Cappuccino', weight = 60, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { thirst = 120000 }, anim = 'drinking_hand', prop = 'coffee',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 3500,
        },
    },

    ['coffee_amrcno'] = {
        label = 'Americano', weight = 60, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { thirst = 120000 }, anim = 'drinking_hand', prop = 'coffee',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 3500,
        },
    },

    ----------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------
    --- CONSUMABLES: ALCOHOL

    ['rancho_beer'] = {
        label = 'Rancho Beer', weight = 120, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { drunk = 120000 }, anim = 'drinking_hand', prop = 'rancho_beer',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 7500,
        }, buttons = {
            {
                label = 'Break bottle', action = function(slot)
                exports['mi_items']:break_bottle_rancho() end
            }
        }
    },

    ['dusche_beer'] = {
        label = 'Dusche Beer', weight = 120, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { drunk = 120000 }, anim = 'drinking_hand', prop = 'dusche_beer',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 7500,
        }, buttons = {
            {
                label = 'Break bottle', action = function(slot)
                exports['mi_items']:break_bottle_dusche() end
            }
        }
    },

    ['stronzo_beer'] = {
        label = 'Stronzo Beer', weight = 120, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { drunk = 120000 }, anim = 'drinking_hand', prop = 'stronzo_beer',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 7500,
        }, buttons = {
            {
                label = 'Break bottle', action = function(slot)
                exports['mi_items']:break_bottle_stronzo() end
            }
        }
    },

    ['patriot_beer'] = {
        label = 'Patriot Beer', weight = 120, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { drunk = 120000 }, anim = 'drinking_hand', prop = 'patriot_beer',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 7500,
        }, buttons = {
            {
                label = 'Break bottle', action = function(slot)
                exports['mi_items']:break_bottle_patriot() end
            }
        }
    },

    ['bourgeoix_bottle'] = {
        label = 'Bourgeoix Cognac', weight = 650, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { drunk = 290000 }, anim = 'drinking_hand', prop = 'bourgeoix_bottle',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 7500,
        },
    },

    ['bourgeoix_glass'] = {
        label = 'Bourgeoix Glass', weight = 250, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { drunk = 150000 }, anim = 'drinking_hand', prop = 'liqour_glass',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 7500,
        },
    },

    ['bourgeoix_shot'] = {
        label = 'Bourgeoix Shot', weight = 250, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { drunk = 120000 }, anim = 'drinking_hand', prop = 'liqour_shot',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 2000,
        },
    },

    ['cariaque_bottle'] = {
        label = 'Cariaque Cognac', weight = 650, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { drunk = 290000 }, anim = 'drinking_hand', prop = 'cariaque_bottle',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 7500,
        },
    },

    ['cariaque_glass'] = {
        label = 'Cariaque Glass', weight = 250, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { drunk = 150000 }, anim = 'drinking_hand', prop = 'liqour_glass',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 7500,
        },
    },

    ['cariaque_shot'] = {
        label = 'Cariaque Shot', weight = 250, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { drunk = 120000 }, anim = 'drinking_hand', prop = 'liqour_shot',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 2000,
        },
    },

    ['ragga_bottle'] = {
        label = 'Ragga Rum', weight = 650, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { drunk = 290000 }, anim = 'drinking_hand', prop = 'cariaque_bottle',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 7500,
        },
    },

    ['ragga_glass'] = {
        label = 'Ragga Glass', weight = 250, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { drunk = 150000 }, anim = 'drinking_hand', prop = 'liqour_glass',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 7500,
        },
    },

    ['ragga_shot'] = {
        label = 'Ragga Shot', weight = 250, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { drunk = 120000 }, anim = 'drinking_hand', prop = 'liqour_shot',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 2000,
        },
    },

    ['tequilya_bottle'] = {
        label = 'Tequilya Tequila', weight = 650, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { drunk = 290000 }, anim = 'drinking_hand', prop = 'cariaque_bottle',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 7500,
        },
    },

    ['tequilya_glass'] = {
        label = 'Tequilya Glass', weight = 250, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { drunk = 150000 }, anim = 'drinking_hand', prop = 'liqour_glass',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 7500,
        },
    },

    ['tequilya_shot'] = {
        label = 'Tequilya Shot', weight = 250, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { drunk = 120000 }, anim = 'drinking_hand', prop = 'liqour_shot',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 2000,
        },
    },

    ['nogo_bottle'] = {
        label = 'Nogo Vodka', weight = 650, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { drunk = 290000 }, anim = 'drinking_hand', prop = 'cariaque_bottle',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 7500,
        },
    },

    ['nogo_glass'] = {
        label = 'Nogo Glass', weight = 250, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { drunk = 150000 }, anim = 'drinking_hand', prop = 'liqour_glass',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 7500,
        },
    },

    ['nogo_shot'] = {
        label = 'Nogo Shot', weight = 250, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { drunk = 120000 }, anim = 'drinking_hand', prop = 'liqour_shot',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 2000,
        },
    },

    ['mount_bottle'] = {
        label = 'Mount Whiskey', weight = 650, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { drunk = 290000 }, anim = 'drinking_hand', prop = 'cariaque_bottle',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 7500,
        },
    },

    ['mount_glass'] = {
        label = 'Mount Glass', weight = 250, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { drunk = 150000 }, anim = 'drinking_hand', prop = 'liqour_glass',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 7500,
        },
    },

    ['mount_shot'] = {
        label = 'Mount Shot', weight = 250, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { drunk = 120000 }, anim = 'drinking_hand', prop = 'liqour_shot',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 2000,
        },
    },

    ['richards_bottle'] = {
        label = 'Richard\'s Whiskey', weight = 650, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { drunk = 290000 }, anim = 'drinking_hand', prop = 'cariaque_bottle',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 7500,
        },
    },

    ['richards_glass'] = {
        label = 'Richard\'s Glass', weight = 250, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { drunk = 150000 }, anim = 'drinking_hand', prop = 'liqour_glass',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 7500,
        },
    },

    ['richards_shot'] = {
        label = 'Richard\'s Shot', weight = 250, stack = true, close = true,
        allowArmed = false, consume = 1, client = {
            status = { drunk = 120000 }, anim = 'drinking_hand', prop = 'liqour_shot',
            disable = { move = false, car = false, combat = true, sprint = true },
            usetime = 2000,
        },
    },

    ----------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------
    --- TOOLS: USABLE

    ['phone'] = {
		label = 'Phone',
		weight = 750,
		stack = false,
		consume = 0,
        description = "A common device for communication.",
		client = {
			add = function(total) if total > 0 then
				pcall(function() return
                    exports.npwd:setPhoneDisabled(false) end)
            end end,

			remove = function(total) if total < 1 then
				pcall(function() return
                    exports.npwd:setPhoneDisabled(true) end)
            end end
		}
	},

    ['money'] = {
        label = 'Money', weight = 0, stack = true,
        description = "The currency of San Andreas.",
    },

    ['lockpick'] = {
        label = 'Lockpick', weight = 80, stack = true,
        allowArmed = false, consume = 1,
        description = "Used to pick locks.",
    },

    ['bandage_basic'] = {
        label = 'Basic Bandage', weight = 300, stack = true,
        consume = 1,
        description = "Used to heal small wounds.",
    },

    ['armor1'] = {
        label = 'Light Body Armor', weight = 5000, stack = false,
        consume = 1,
        description = "Provides minimal body protection.",
    },

    ['armor2'] = {
        label = 'Medium Body Armor', weight = 8000, stack = false,
        consume = 1,
        description = "Provides limited body protection.",
    },

    ['armor3'] = {
        label = 'Heavy Body Armor', weight = 11000, stack = false,
        consume = 1,
        description = "Provides maximum body protection.",
    },

    ['shield_riot'] = {
        label = 'Police Riot Shield', weight = 4000, stack = false,
        description = "Used to protect oneself from small arms.",
        allowArmed = false,
    },

    ['rebreather'] = {
        label = 'Rebreather', weight = 2300, stack = false,
        description = "Used to breathe underwater for a short time.",
    },

    ['divegear'] = {
        label = 'Diving gear', weight = 4000, stack = false,
        description = "Used to breathe underwater for a long time.",
    },

    ['enginekit'] = {
        label = 'Engine Repair Kit', weight = 7500, stack = true,
        allowArmed = false, consume = 0.2,
        description = "Used to repair a vehicle's engine.",
    },

    ['cleankit'] = {
        label = 'Engine Repair Kit', weight = 7500, stack = true,
        allowArmed = false, consume = 0.2,
        description = "Used to clean a vehicle.",
    },

    ['spraykit'] = {
        label = 'Engine Repair Kit', weight = 7500, stack = true,
        allowArmed = false, consume = 0.2,
        description = "Used to recolor a vehicle.",
    },

    ['tirekit'] = {
        label = 'Engine Repair Kit', weight = 7500, stack = true,
        allowArmed = false, consume = 0.2,
        description = "Used to repair a vehicle's tire.",
    },

    ['firework_s1'] = {
        label = 'Small Firework: Rex', weight = 1300, stack = true,
        allowArmed = false, consume = 1,
        description = "Place to set off dazzling fireworks.",
    },

    ['firework_s2'] = {
        label = 'Small Firework: Ven', weight = 1300, stack = true,
        allowArmed = false, consume = 1,
        description = "Place to set off dazzling fireworks.",
    },

    ['smk_brand69'] = {
        label = '69 Brand Cigarettes', weight = 150, stack = false,
        consume = 0.085,
        description = "Used to reduce stress and health.",
    },

    ['smk_debonaire'] = {
        label = 'Debonaire Cigarettes', weight = 150, stack = false,
        consume = 0.085,
        description = "Used to reduce stress and health.",
    },

    ['smk_redwood'] = {
        label = 'Redwood Cigarettes', weight = 150, stack = false,
        consume = 0.085,
        description = "Used to reduce stress and health.",
    },

    ['cgr_estancia'] = {
        label = 'Estancia Cigar', weight = 150, stack = false,
        consume = 0.25,
        description = "Used to reduce stress and health.",
    },

    ['vpe_elect1'] = {
        label = 'Vape: Breast Milk PCP',
        weight = 350, stack = false, consume = 0.045,
        description = "Used to reduce stress and health.",
    },

    ['vpe_elect2'] = {
        label = 'Vape: Peanut Butter Meth',
        weight = 350, stack = false, consume = 0.045,
        description = "Used to reduce stress and health.",
    },

    ['vpe_elect3'] = {
        label = 'Vape: Grape Bubblegum Heroin',
        weight = 350, stack = false, consume = 0.045,
        description = "Used to reduce stress and health.",
    },

    ['bombbag_exp'] = {
        label = 'Explosive Bag', weight = 3500, stack = false,
        consume = 1, allowArmed = false,
        description = "Used to set a timed bomb.",
    },

    ['smokebomb'] = {
        label = 'Smokebomb', weight = 230, stack = true, consume = 1,
        description = "Used as a distraction to escape.",
        allowArmed = true,
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

    ['cnt_bcpk1'] = {
        label = 'Backpack', weight = 1000,
        stack = true, close = false,
        description = "Can be used to store items.",
    },

    ['cnt_bcpk2'] = {
        label = 'Backpack', weight = 1000,
        stack = false, close = false,
        description = "Can be used to store items.",
    },

    ['cnt_bcpk3'] = {
        label = 'Backpack', weight = 1000,
        stack = false, close = false,
        description = "Can be used to store items.",
    },

    ['cnt_bcpk4'] = {
        label = 'Backpack', weight = 1000,
        stack = false, close = false,
        description = "Can be used to store items.",
    },

    ['cnt_bfcs1'] = {
        label = 'Briefcase', weight = 1000,
        stack = false, close = false,
        description = "Can be used to store items.",
    },

    ['cnt_bfcs2'] = {
        label = 'Briefcase', weight = 1000,
        stack = false, close = false,
        description = "Can be used to store items.",
    },

    ['cnt_bfcs3'] = {
        label = 'Briefcase', weight = 1000,
        stack = false, close = false,
        description = "Can be used to store items.",
    },

    ----------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------
    --- CRAFTING: TOOLS

    ['rollpaper'] = {
        label = 'Rolling Paper', weight = 60, stack = true,
        description = "Used to roll joints.",
    },

    ['fold_table'] = {
        label = 'Portable Table', weight = 3500,
        stack = false, close = true,
        description = "Places configurable table.",
    },

    ['tkit_grill'] = {
        label = 'Grill Kit', weight = 4500,
        stack = false, close = true,
        description = "Loads tools for grilling.",
    },

    ['tkit_alch'] = {
        label = 'Liqour Kit', weight = 4500,
        stack = false, close = true,
        description = "Loads tools for mixing drinks.",
    },

    ['tkit_weap'] = {
        label = 'Weapons Kit', weight = 4500,
        stack = false, close = true,
        description = "Loads tools for customizing weapons.",
    },

    ['tkit_crim'] = {
        label = 'Illegal Kit', weight = 4500,
        stack = false, close = true,
        description = "Loads tools for creating illegal tools.",
    },

    ['tkit_weed'] = {
        label = 'Cannabis Prep Kit', weight = 4500,
        stack = false, close = true,
        description = "Loads tools for processing cannabis.",
    },

    ['tkit_coke'] = {
        label = 'Cocaine Prep Kit', weight = 4500,
        stack = false, close = true,
        description = "Loads tools for processing cocaine.",
    },

    ['tkit_meth'] = {
        label = 'Meth Prep Kit', weight = 4500,
        stack = false, close = true,
        description = "Loads tools for processing meth.",
    },

    ----------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------
    --- CRAFTING: RESULTS

    ['jt_sativa'] = {
        label = 'Joint: Sativa', weight = 60, stack = true,
        consume = 1,
    },

    ['jt_indica'] = {
        label = 'Joint: Indica', weight = 60, stack = true,
        consume = 1,
    },

    ['jt_hybrid'] = {
        label = 'Joint: Hybrid', weight = 60, stack = true,
        consume = 1,
    },

    ['pc_sativa'] = {
        label = 'Sativa Buds', weight = 30, stack = true,
        description = "Can be used to roll joints or be sold.",
        buttons = {
            {
                label = 'Roll Joint', action = function(slot)
                exports['mi_items']:roll_sativa() end
            }
        }
    },

    ['pc_indica'] = {
        label = 'Indica Buds', weight = 30, stack = true,
        description = "Can be used to roll joints or be sold.",
        buttons = {
            {
                label = 'Roll Joint', action = function(slot)
                exports['mi_items']:roll_indica() end
            }
        }
    },

    ['pc_hybrid'] = {
        label = 'Hybrid Buds', weight = 30, stack = true,
        description = "Can be used to roll joints or be sold.",
        buttons = {
            {
                label = 'Roll Joint', action = function(slot)
                exports['mi_items']:roll_hybrid() end
            }
        }
    },

    ['bc_sativa'] = {
        label = 'Sativa Brick', weight = 700, stack = true,
        description = "Can be sold to dealers.",
    },

    ['bc_indica'] = {
        label = 'Indica Brick', weight = 700, stack = true,
        description = "Can be sold to dealers.",
    },

    ['bc_hybrid'] = {
        label = 'Hybrid Brick', weight = 700, stack = true,
        description = "Can be sold to dealers.",
    },

    ['pd_meth'] = {
        label = 'Powdered Meth', weight = 60, stack = true,
        description = "Can be used or sold.",
    },

    ['cr_meth'] = {
        label = 'Crystal Meth', weight = 90, stack = true,
        description = "Can be used or sold.",
    },

    ['bc_meth'] = {
        label = 'Brick of Crystal Meth', weight = 90, stack = true,
        description = "Can be sold to dealers.",
    },

    ['pc_cocaine'] = {
        label = 'Powdered Cocaine', weight = 90, stack = true,
        description = "Can be used or sold.",
    },

    ['bc_cocaine'] = {
        label = 'Brick of Powdered Cocaine', weight = 90, stack = true,
        description = "Can be sold to dealers.",
    },

    ----------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------
    --- CRAFTING: INGREDIENTS

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

    ['scrap_iron'] = {
        label = 'Iron Scrap', weight = 60, stack = true,
        description = "Can be recycled or used for crafting.",
    },

    ['scrap_aluminium'] = {
        label = 'Aluminium Scrap', weight = 70, stack = true,
        description = "Can be recycled or used for crafting.",
    },

    ['scrap_bolts'] = {
        label = 'Bolts & Fittings', weight = 30, stack = true,
        description = "Can be recycled or used for crafting.",
    },

    ['scrap_wood'] = {
        label = 'Wood Planks', weight = 120, stack = true,
        description = "Can be recycled or used for crafting.",
    },

    ['scrap_plastic'] = {
        label = 'Plastic Scrap', weight = 30, stack = true,
        description = "Can be recycled or used for crafting.",
    },

    ['scrap_bottle'] = {
        label = 'Glass Bottle', weight = 50, stack = true,
        description = "Can be recycled or used for crafting.",
    },

    ['scrap_wires'] = {
        label = 'Bundle of Wires', weight = 30, stack = true,
        description = "Can be recycled or used for crafting.",
    },

    ['wd_sativa'] = {
        label = 'Sativa Cannabis', weight = 60, stack = true,
        description = "Wild cannabis, yet to be processed.",
    },

    ['wd_indica'] = {
        label = 'Indica Cannabis', weight = 60, stack = true,
        description = "Wild cannabis, yet to be processed.",
    },

    ['wd_hybrid'] = {
        label = 'Hybrid Cannabis', weight = 60, stack = true,
        description = "Wild cannabis, yet to be processed.",
    },

    ['wd_cocaine'] = {
        label = 'Coca Leaves', weight = 40, stack = true,
        description = "Wild coca leaves, yet to be processed.",
    },

    ['chem_sulfur'] = {
        label = 'Sulfur', weight = 140, stack = true,
        description = "Used in chemistry or stored at Humane Labs.",
    },

    ['chem_potnitr'] = {
        label = 'Potassium Nitrate', weight = 130, stack = true,
        description = "Used in chemistry or stored at Humane Labs.",
    },

    ['chem_psdnrn'] = {
        label = 'Psuedoephedrine', weight = 120, stack = true,
        description = "Used in chemistry or stored at Humane Labs.",
    },

    ['chem_iodine'] = {
        label = 'Iodine', weight = 120, stack = true,
        description = "Used in chemistry or stored at Humane Labs.",
    },

    ['chem_phsrus'] = {
        label = 'Phosphorus', weight = 120, stack = true,
        description = "Used in chemistry or stored at Humane Labs.",
    },

    ['chem_amonia'] = {
        label = 'Ammonia', weight = 120, stack = true,
        description = "Used in chemistry or stored at Humane Labs.",
    },

    ['chem_actone'] = {
        label = 'Acetone', weight = 120, stack = true,
        description = "Used in chemistry or stored at Humane Labs.",
    },

    ['ruby_uncut'] = {
        label = 'Uncut Ruby', weight = 100, stack = true,
        description = "Raw gemstone, can be cut or sold.",
    },

    ['sapphire_uncut'] = {
        label = 'Uncut Sapphire', weight = 100, stack = true,
        description = "Raw gemstone, can be cut or sold.",
    },

    ['emerald_uncut'] = {
        label = 'Uncut Emerald', weight = 100, stack = true,
        description = "Raw gemstone, can be cut or sold.",
    },

    ['diamond_uncut'] = {
        label = 'Uncut Diamond', weight = 100, stack = true,
        description = "Raw gemstone, can be cut or sold.",
    },

    ['ore_iron'] = {
        label = 'Iron Ore', weight = 230, stack = true,
        description = "Mining material, can be processed or sold.",
    },

    ['ore_gold'] = {
        label = 'Gold Ore', weight = 230, stack = true,
        description = "Mining material, can be processed or sold.",
    },

    ['ore_coal'] = {
        label = 'Coal', weight = 230, stack = true,
        description = "Mining material, can be processed or sold.",
    },

    ['trsr_doubloons'] = {
        label = 'Gold Doubloons', weight = 100, stack = true,
        description = "Treasures found in deep waters.",
    },

    ['trsr_sharkstooth'] = {
        label = 'Sharks Tooth', weight = 100, stack = true,
        description = "Treasures found in deep waters.",
    },

    ['trsr_sanddollar'] = {
        label = 'Gold Doubloons', weight = 100, stack = true,
        description = "Treasures found in deep waters.",
    },

    ['trsr_seaglass'] = {
        label = 'Sea Glass', weight = 100, stack = true,
        description = "Treasures found in deep waters.",
    },

    ['trsr_pearls'] = {
        label = 'Pearls', weight = 100, stack = true,
        description = "Treasures found in deep waters.",
    },

}