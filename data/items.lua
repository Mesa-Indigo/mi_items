Item = {}

--------------------------------
-- smoking items

-- time is the min / max range in minutes
Item.Smoke = {
    cigarette =     { time = 12000, dmg = true, amt = 64 },
    cigar =         { time = 15000, dmg = true, amt = 32  },
    vape =          { time = 7500,  dmg = true, amt = 128  },
}

--------------------------------
-- armor items

-- duration is the seconds it takes to use the item
-- amount is the amount of armor the player is set with
Item.Armor = {
    light =     { duration = 8, amount = 40 },
    medium =    { duration = 12, amount = 70  },
    heavy =     { duration = 18, amount = 100  },
}

--------------------------------
-- diving items

-- restrict means cant use under water
-- duration is the time it takes to use the item
Item.Diving = {
    restrict = true,
    rebreather =  { time = 1500, duration = 300 },
    divekit =     { time = 6000, duration = 600 },
}

--------------------------------
-- bomb items

-- time is the min / max range in minutes
Item.Bomb = {
    time =      { min = 1, max = 30 },
}

--------------------------------
-- atm hack tool

-- wait is the time before being able to hack again
-- time is the min / max range in minutes
-- reward is the min / max range in money given
Item.ATM = {
    wait =      120000,
    time =      { min = 7000, max = 15000 },
    reward =    { min = 50, max = 300 },
}

--------------------------------
-- firework items

-- delay is time to wait until playing particle effects
-- count is how many times it will play the particle effect
Item.Fireworks = {
    delay = 15000, count = 15
}

--------------------------------
-- recovery items

-- time is the duration of progress bar
-- percent is the percentage of health to restore
-- ex: percent = 10 means restore 1/10 of health
Item.Recovery = {
    bandage =     { time = 8000, percent = 8 },
}

--------------------------------
-- car coloring items

-- time is the duration of progress bar
Item.VehSpray = {
    time =     10000,
}