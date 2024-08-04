-- global variables
Shared, Data  = {}, {}
Target, Inventory = exports.ox_target, exports.ox_inventory

-- debug option
Debug = true

-- locale option | 'en', 'es', 'fr'
Locale = 'en'

-- set global options as active
Set = { player = true, peds = true, vehicle = true }

-- these are wip, so don't set them to true
-- unless you're frome the future and have the resources
Data.using = {
    mi_cooking = false, mi_housing = false,
    mi_medical = false, mi_artist = false
}

--------------------------------
-- energy items

-- duration are the seconds the effect will last
Data.Energy = {
    light =     { duration = 10 },
    medium =    { duration = 25 },
    heavy =     { duration = 60 },
}

--------------------------------
-- drug items

-- duration is the seconds the effect will last
Data.Drugs = {
    indica =    { duration = 30 },
    sativa =    { duration = 30 },
    hybrid =    { duration = 30 },
    cocaine =   { duration = 30 },
    meth =      { duration = 30 },
    molly =     { duration = 30 },
}

--------------------------------
-- armor items

-- duration is the time it takes to use the item
-- amount is the amount of armor the player is set with
Data.Armor = {
    light =     { duration = 8, amount = 40 },
    medium =    { duration = 12, amount = 70  },
    heavy =     { duration = 18, amount = 100  },
}

--------------------------------
-- diving items

-- restrict means cant use under water
-- duration is the time it takes to use the item
Data.Diving = {
    restrict = true,
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
    small1 =    { delay = 10, count = 10},
    small2 =    { delay = 10, count = 10},
    big1 =      { delay = 15, count = 20},
    sig1 =      { delay = 15, count = 20},
}

--------------------------------
-- camping items

-- time is the time it takes to do task
-- items are the number of slots in a stash
Data.Camping = {
    grill =     { time = 15 },
    cooler =    { items = 10 },
    tent =      { items = 20 }
}

--------------------------------
-- recovery items

-- time is the duration of progress bar
-- percent is the percentage of health to restore
-- ex: percent = 10 means restore 1/10 of health
Data.Recovery = {
    minor =     { time = 8, percent = 12 },
    basic =     { time = 12, percent = 8 },
    major =     { time = 16, percent = 4 },
}