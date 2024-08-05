Consume = {}

--------------------------------
-- energy drink

-- duration are the seconds the effect will last
Consume.Energy = {
    light =     { duration = 10 },
    medium =    { duration = 25 },
    heavy =     { duration = 60 },
}

--------------------------------
-- alcohol drink

-- duration are the seconds the effect will last
Consume.Alcohol = {
    light =     { duration = 10 },
    medium =    { duration = 25 },
    heavy =     { duration = 60 },
}

--------------------------------
-- drug items

-- duration is the seconds the effect will last
Consume.Drugs = {
    indica =    { duration = 30, trip = false },
    sativa =    { duration = 30, trip = false },
    hybrid =    { duration = 30, trip = true },
    cocaine =   { duration = 30, trip = false },
    meth =      { duration = 30, trip = true },
    molly =     { duration = 30, trip = true },
}

--------------------------------
-- hallucinagens items

-- duration is the seconds the effect will last
Consume.Hallucination = {
    low =       { duration = 60 },
    medium =    { duration = 180 },
    high =      { duration = 300 },
}
