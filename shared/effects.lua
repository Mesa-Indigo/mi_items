Consume = {}

--------------------------------
-- drug items

-- duration is the seconds the effect will last
-- trip is broken / keep it at false
Consume.Drugs = {
    indica =    { duration = 30, trip = false },
    sativa =    { duration = 30, trip = false },
    hybrid =    { duration = 30, trip = false },
    cocaine =   { duration = 30, trip = false },
    meth =      { duration = 30, trip = false },
}

--------------------------------
-- energy items

-- duration is the seconds the effect will last
-- rate is the player speed it will be set at
Consume.Energy = {
    ejunk =    { duration = 30, rate = 1.15 },
}
