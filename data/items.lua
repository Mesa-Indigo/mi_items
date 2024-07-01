return {
    ----------------------------------------------------------------
    ----------------------------------------------------------------
    --[[    Consumables - General Foods    ]]--

    ['sandwich'] = {
        label = 'Sandwich',
        weight = 250,
        stack = true,
        close = true,
        description = "A simple sandwich for a simple day",
        client = {
            status = { hunger = 200000 },
            anim = 'eating_hand', prop = 'sandwich',
            usetime = 7500, disable = { combat = true }
            },
        },

    ----------------------------------------------------------------
    ----------------------------------------------------------------
    --[[    Consumables - General Drinks    ]]--

    ['water'] = {
        label = 'Sandwich',
        weight = 250,
        stack = true,
        close = true,
        description = "A simple sandwich for a simple day",
        client = {
            status = { thirst = 200000 },
            anim = 'drinking_hand', prop = 'water',
            usetime = 7500, disable = { combat = true }
            },
        },

    ----------------------------------------------------------------
    ----------------------------------------------------------------
    --[[    Consumables - General Alcohol    ]]--

    ['rancho_beer'] = {
        label = 'Bottle of Rancho Beer',
        weight = 250,
        stack = true,
        close = true,
        description = "A simple sandwich for a simple day",
        client = {
            anim = 'drinking_hand', prop = 'rancho_beer',
            usetime = 7500, disable = { combat = true }
            },
        },
        
    ----------------------------------------------------------------
    ----------------------------------------------------------------
    --[[    Consumables - General Alcohol    ]]--

}