-- global variables
Shared, Data = {}, {}
Target, Inventory = exports.ox_target, exports.ox_inventory

-- debug option
Debug = true

-- locale option | 'en', 'es', 'fr'
Locale = 'en'

Shared.Groups = {
    leo = { '' },
    ems = { '' },
    fir = { '' },
    crm = { '' },
}

-- set global options as active
Shared.Set = { player = true, ped = true, vehicle = true }

-- these are wip, so don't set them to true
-- unless you're from the future and have the resources
Shared.using = {
    mi_housing = false,
    mi_hotels = false,
    mi_medical = false
}


