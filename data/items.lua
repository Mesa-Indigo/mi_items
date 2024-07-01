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
    --[[    Items - Currencies    ]]--

    ['money'] = {
        label = 'Money', weight = 1, stack = true,
        description = "The life blood of your activities",
    },

    ----------------------------------------------------------------
    ----------------------------------------------------------------
    --[[    Items - Tools    ]]--

    ['phone'] = {
		label = 'Phone',
		weight = 190,
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
        label = 'Lockpick', weight = 160, stack = true,
        description = "When in doubt, steal shit.",
    },

    ----------------------------------------------------------------
    ----------------------------------------------------------------
    --[[    Items - Crafting Supplies    ]]--

    ['scrap_iron'] = {
        label = 'Iron Scrap', weight = 100, stack = true,
        description = "words",
    },

    ['scrap_steel'] = {
        label = 'Steel Scrap', weight = 150, stack = true,
        description = "words",
    },

    ['scrap_wood'] = {
        label = 'Wood Planks', weight = 170, stack = true,
        description = "words",
    },
    
}