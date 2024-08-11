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
    -- default location is the quartz quarry
    active = true,
    duration = 6000,
    reward = { min = 2, max = 5},
    ores = {
        'ore_iron',
        'ore_gold',
        'ore_coal'
    },
    gems = {
        'ruby_uncut',
        'sapphire_uncut',
        'emerald_uncut',
        'diamond_uncut'
    }
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

World.Diving = {
    active = true,


}