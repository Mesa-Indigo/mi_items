Shared, Data = {}, {}
Debug = true

--[[    Item Details    ]]--

--------------------------------
-- armor items

-- duration is the time it takes to use the item
-- amount is the amount of armor the player is set with
Data.Armor = {
    light = { duration = 8000, amount = 40 },
    medium = { duration = 12000, amount = 70  },
    heavy = { duration = 18000, amount = 100  },
}

--------------------------------
-- bomb items

-- time is the min / max range in minutes
-- duration is the time it takes to use the item
-- amount is the amount of armor the player is set with
Data.Bomb = {
    time = { min = 1, max = 30 },
    explosive = { duration = 8000, amount = 40 },
}
