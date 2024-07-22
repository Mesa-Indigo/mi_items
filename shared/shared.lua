Shared, Data = {}, {}
Debug = true

-- these are wip, so don't set them to true
-- unless you're frome the future and have the resources
Data.using = {
    mi_cooking = false, mi_housing = false,
    mi_medical = false, mi_artist = false
}

--[[    Consumable Details    ]]--

--------------------------------
-- energy items

-- duration is the time effect will last
Data.Energy = {
    light =     { duration = 10000 },
    medium =    { duration = 35000 },
    heavy =     { duration = 60000 },
}

--------------------------------
-- drug items

-- duration is the time effect will last
Data.Drugs = {
    indica =    { duration = 30000 },
    sativa =    { duration = 30000 },
    hybrid =    { duration = 30000 },
    cocaine =   { duration = 30000 },
    meth =      { duration = 30000 },
    molly =     { duration = 30000 },
}

--[[    Item Details    ]]--

--------------------------------
-- armor items

-- duration is the time it takes to use the item
-- amount is the amount of armor the player is set with
Data.Armor = {
    light =     { duration = 8000, amount = 40 },
    medium =    { duration = 12000, amount = 70  },
    heavy =     { duration = 18000, amount = 100  },
}

--------------------------------
-- diving items

-- duration is the time it takes to use the item
Data.Diving = {
    snorkle =     { duration = 6000 },
    divekit =     { duration = 12000 },
}

--------------------------------
-- bomb items

-- time is the min / max range in minutes
Data.Bomb = {
    time =      { min = 1, max = 30 },
}

--------------------------------
-- firework items

-- delay is time to wait until playing particle effects
-- count is how many times it will play the particle effect
Data.Fireworks = {
    small1 =    { delay = 10000, count = 10},
    small2 =    { delay = 10000, count = 10},
    big1 =      { delay = 15000, count = 20},
    sig1 =      { delay = 15000, count = 20},
}

--------------------------------
-- camping items

-- time is the time it takes to do task
-- items are the number of slots in a stash
Data.Camping = {
    grill =     { time = 15000 },
    cooler =    { items = 10 },
    tent =      { items = 20 }
}


--------------------------------
-- recovery items

-- time is the duration of progress bar
-- percent is the percentage of health to restore
-- ex: percent = 10 means restore 1/10 of health
Data.Recovery = {
    minor =     { time = 8000, percent = 12 },
    basic =     { time = 8000, percent = 8 },
    major =     { time = 8000, percent = 4 },
}