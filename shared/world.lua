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
    active = true,
    duration = 6000,
    rewards = {
        items = {
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
        },
        amount = { min = 2, max = 5}
    }

}

World.Chemicals = {
    active = true,

}

World.Diving = {
    active = true,


}