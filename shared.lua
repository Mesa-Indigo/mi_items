Item = {}

Shared, Data, Util = {}, {}, {}
lib.locale()

Target = exports.ox_target
Inventory = exports.ox_inventory

--------------------------------
-- debug option
Debug = true

--------------------------------
-- smoking items

-- time is the seconds it takes to use the item
-- dmg is wether it would remove health by a fraction
Item.Smoke = {
    cigarette = { time = 12, dmg = true, amt = 64 },
    cigar = { time = 15, dmg = true, amt = 32 },
    vape = { time = 8, dmg = true, amt = 128 }
}

--------------------------------
-- armor items

-- duration is the seconds it takes to use the item
-- amount is the amount of armor the player is set with
Item.Armor = {
    light = { time = 8, amt = 40 },
    medium = { time = 12, amt = 70 },
    heavy = { time = 18, amt = 100 }
}

--------------------------------
-- diving items

-- restrict means cant use in or under water
-- duration is the time it takes to use the item
Item.Diving = {
    restrict = true,
    rebreather = {  time = 1500, duration = 300 },
    divekit = { time = 6000, duration = 600 }
}

--------------------------------
-- drug items

-- time is the min / max range in minutes
Item.Drug = {
    time = 10000
}

--------------------------------
-- bomb items

-- time is the min / max range in minutes
Item.Bomb = {
    time = { min = 1, max = 30 },
}

--------------------------------
-- firework items

-- delay is time to wait until playing particle effects
-- count is how many times it will play the particle effect
Item.Fireworks = {
    delay = 15000,
    count = 15
}

--------------------------------
-- recovery items

-- time is the duration of progress bar
-- percent is the percentage of health to restore
-- ex: percent = 10 means restore 1/10 of health
Item.Recovery = {
    bandage = { time = 8000, percent = 8 },
}

--------------------------------
-- car coloring items

-- time is the duration of progress bar
Item.VehSpray = {
    time = 10000,
}