return {
	----------------------------------------------------------------
	----------------------------------------------------------------
    -- Tool Bench

    {
        items = {
            {
                name = 'lockpick',
                ingredients = {
                  garbage = 3,
                  WEAPON_HAMMER = 0.1
                },
                duration = 5000,
                count = 3,
                metadata = { durability = 20 }
            },
        },
        points = {
          vec3(-1147.083008, -2002.662109, 13.180260),
        },
        zones = {
            {
              label = 'Open Crafting Bench',
              icon = 'fa-solid fa-wrench',
              coords = vec3(-1146.2, -2002.05, 13.2),
              size = vec3(3.8, 1.05, 0.15),
              distance = 1.5,
              rotation = 315.0,
            },
        },
        -- blip = { id = 566, colour = 31, scale = 0.8 },
    },

}