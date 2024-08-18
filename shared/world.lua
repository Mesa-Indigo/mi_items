World = {}

World.Mining = {
    -- the default location is the davis quartz quarry
    -- it covers the central quarry area

    -- sets system as active / inactive
    active = true,

    -- sets model of object
    -- probably a rock
    model = 'csx_rvrbldr_smle_',

    -- sets time before another object spawns
    timer = 2500,

    -- sets amount to spawn in that location
    count = 20,

    -- sets location to spawn
    spawn = vec3(2952.256, 2791.134, 41.148),

    -- sets the x / y range to spawn
    space = {
        x = { min = -15, max = 15},
        y = { min = -20, max = 20}
    },

    -- progress bar time
    duration = 15000,

    -- items to give upon skillcheck success
    items = {
        'ore_iron',
        'ore_gold',
        'ore_coal',
        'ruby_uncut',
        'sapphire_uncut',
        'emerald_uncut',
        'diamond_uncut'
    },

    -- sets the min / max for items to give
    reward = { min = 1, max = 6},
}

World.Chemicals = {
    -- the default location is the zancudo swamps
    -- it covers the area between the pier and bridge

    -- sets system as active / inactive
    active = true,

    -- sets model of chem object
    model = 'xm3_prop_xm3_barrel_01a',

    -- sets time before another object spawns
    timer = 2500,

    -- sets amount to spawn in that location
    count = 20,

    -- sets location to spawn
    spawn = vec3(-2385.763, 2756.206, 1.983),

    -- sets the x / y range to spawn
    space = {
        x = { min = -300, max = 300},
        y = { min = -100, max = 100}
    },

    -- sets time to open container
    duration = 3000,

    -- items to give upon skillcheck success
    items = {
        'chem_sulfur',
        'chem_potnitr',
        'chem_psdnrn',
        'chem_iodine',
        'chem_phsrus',
        'chem_amonia',
        'chem_actone'
    },

    -- sets the min / max for items to give
    reward = { min = 2, max = 5},

}

World.Cannabis = {
    -- the default location is north the madrazo ranch
    -- it covers the flat farm area

    -- sets system as active / inactive
    active = true,

    -- sets model of chem object
    model = 'prop_weed_01',

    -- sets time before another object spawns
    timer = 2500,

    -- sets amount to spawn in that location
    count = 12,

    -- sets location to spawn
    spawn = vec3(1404.864, 1401.292, 103.842),

    -- sets the x / y range to spawn
    space = {
        x = { min = -50, max = 50},
        y = { min = -50, max = 50}
    },

    -- sets time to open container
    duration = 9000,

    -- items to give upon skillcheck success
    items = {
        'wd_sativa',
        'wd_indica',
        'wd_hybrid'
    },

    -- sets the min / max for items to give
    reward = { min = 1, max = 5},

}

World.Cocaplant = {
    -- the default location is near the madrazo ranch
    -- it covers the area between the pier and bridge

    -- sets system as active / inactive
    active = true,

    -- sets model of chem object
    model = 'h4_prop_bush_cocaplant_01',

    -- sets time before another object spawns
    timer = 2500,

    -- sets amount to spawn in that location
    count = 15,

    -- sets location to spawn
    spawn = vec3(3708.034, 3107.141, 12.339),

    -- sets the x / y range to spawn
    space = {
        x = { min = -5, max = 5},
        y = { min = -5, max = 5}
    },

    -- sets time to open container
    duration = 9000,

    -- items to give upon skillcheck success
    items = {
        'wd_cocaine'
    },

    -- sets the min / max for items to give
    reward = { min = 1, max = 5},

}

World.Diving = {
    -- the default location east of the palomino highlands
    -- it covers the area in the gulf

    -- sets system as active / inactive
    active = true,

    -- sets model of chem object
    model = 'xm_prop_x17_chest_closed',

    -- sets time before another object spawns
    timer = 2500,

    -- sets amount to spawn in that location
    count = 10,

    -- sets location to spawn
    spawn = vec3(2683.073, -1342.563, -22.422),

    -- sets the x / y range to spawn
    space = {
        x = { min = -10, max = 10},
        y = { min = -20, max = 20}
    },

    -- items to give
    items = {
        'trsr_doubloons',
        'trsr_sharkstooth',
        'trsr_sanddollar',
        'trsr_seaglass',
        'trsr_pearls'
    },

    -- sets the min / max for items to give
    reward = { min = 1, max = 5},

}