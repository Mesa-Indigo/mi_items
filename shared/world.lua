World = {}

-- refine systems
World.Jeweling = {
    active = true,

}

World.Smithing = {
    active = true,
    location = vec4(1075.850, -1978.604, 31.471, 141.264),

}

World.Recycle = {
    active = true,
    location = vec4(1075.850, -1978.604, 31.471, 141.264),
}

-- farming system
World.Mining = {
    -- the default location is the zancudo swamps
    -- it covers the area between the pier and bridge

    -- sets system as active / inactive
    active = true,

    -- sets model of chem object
    model = 'csx_rvrbldr_smle_',

    -- sets time before another object spawns
    timer = 500,

    -- sets amount to spawn in that location
    count = 20,

    -- sets location to spawn
    spawn = vec3(2952.256, 2791.134, 41.148),

    -- sets the x / y range to spawn
    space = {
        x = { min = -15, max = 15},
        y = { min = -20, max = 20}
    },

    -- sets time to open container
    duration = 3000,

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
    timer = 500,

    -- sets amount to spawn in that location
    count = 50,

    -- sets location to spawn
    spawn = vec3(-2299.119, 2605.806, 0.119),

    -- sets the x / y range to spawn
    space = {
        x = { min = -300, max = 300},
        y = { min = -150, max = 150}
    },

    -- sets time to open container
    duration = 3000,

    -- items to give upon skillcheck success
    items = {
        'chem_sulfur',
        'chem_potnitr',
        'chem_saltp'
    },

    -- sets the min / max for items to give
    reward = { min = 2, max = 5},

}

World.Cannabis = {
    -- the default location is the zancudo swamps
    -- it covers the area between the pier and bridge

    -- sets system as active / inactive
    active = true,

    -- sets model of chem object
    model = 'prop_weed_01',

    -- sets time before another object spawns
    timer = 500,

    -- sets amount to spawn in that location
    count = 30,

    -- sets location to spawn
    spawn = {
        loc1 = vec3(-2075.693, 1457.510, 276.110),
        loc2 = vec3(-2299.119, 2605.806, 0.119),
        loc3 = vec3(-2299.119, 2605.806, 0.119),
    },

    -- sets the x / y range to spawn
    space = {
        x = { min = -50, max = 50},
        y = { min = -50, max = 50}
    },

    -- sets time to open container
    duration = 3000,

    -- items to give upon skillcheck success
    items = {
        'wd_sativa',
        'wd_indica',
        'wd_hybrid'
    },

    -- sets the min / max for items to give
    reward = { min = 2, max = 5},

}

World.Diving = {
    active = true,


}