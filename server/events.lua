-- inital events on start
RegisterNetEvent('miit:s:load:mining')
AddEventHandler('miit:s:load:mining', function()
    TriggerClientEvent('miit:c:load:mining', -1)
end)

RegisterNetEvent('miit:s:load:chemicals')
AddEventHandler('miit:s:load:chemicals', function()
    TriggerClientEvent('miit:c:load:chemicals', -1)
end)

RegisterNetEvent('miit:s:load:diving')
AddEventHandler('miit:s:load:diving', function()
    TriggerClientEvent('miit:c:load:diving', -1)
end)

RegisterNetEvent('miit:s:load:cannabis')
AddEventHandler('miit:s:load:cannabis', function()
    TriggerClientEvent('miit:c:load:cannabis', -1)
end)

RegisterNetEvent('miit:s:load:cocaplant')
AddEventHandler('miit:s:load:cocaplant', function()
    TriggerClientEvent('miit:c:load:cocaplant', -1)
end)

-- vehicle events
RegisterNetEvent('mi_items:s:vehicle:clean')
AddEventHandler('mi_items:s:vehicle:clean', function(vehicle)
    TriggerClientEvent('mi_items:c:vehicle:clean', -1, vehicle)
end)

RegisterNetEvent('mi_items:s:vehicle:color')
AddEventHandler('mi_items:s:vehicle:color', function(vehicle)
    TriggerClientEvent('mi_items:c:vehicle:color', -1, vehicle)
end)

RegisterNetEvent('mi_items:s:vehicle:tires')
AddEventHandler('mi_items:s:vehicle:tires', function(vehicle)
    TriggerClientEvent('mi_items:c:vehicle:tires', -1, vehicle)
end)

RegisterNetEvent('mi_items:s:vehicle:repair')
AddEventHandler('mi_items:s:vehicle:repair', function(vehicle)
    TriggerClientEvent('mi_items:c:vehicle:repair', -1, vehicle)
end)

-- smoke bomb
RegisterNetEvent('miit:s:smokebomb')
AddEventHandler('miit:s:smokebomb', function()
    TriggerClientEvent('miit:c:smokebomb', -1)
end)

-- table events
RegisterNetEvent('miit:s:table:setup')
AddEventHandler('miit:s:table:setup', function()
    TriggerClientEvent('miit:c:table:setup', -1)
end)

RegisterNetEvent('miit:s:table:clean')
AddEventHandler('miit:s:table:clean', function(table, objects)
    TriggerClientEvent('miit:c:table:clean', -1, table, objects)
end)

RegisterNetEvent('miit:s:table:grill')
AddEventHandler('miit:s:table:grill', function(table, grill, cooler, pan)
    TriggerClientEvent('miit:c:table:grill', -1, table, grill, cooler, pan)
end)

RegisterNetEvent('miit:s:table:drinks')
AddEventHandler('miit:s:table:drinks', function(table, alc1, alc2, alc3)
    TriggerClientEvent('miit:c:table:drinks', -1, table, alc1, alc2, alc3)
end)

RegisterNetEvent('miit:s:table:meth')
AddEventHandler('miit:s:table:meth', function(table, meth1, meth2, meth3)
    TriggerClientEvent('miit:c:table:meth', -1, table, meth1, meth2, meth3)
end)

RegisterNetEvent('miit:s:table:weapon')
AddEventHandler('miit:s:table:weapon', function(table, gun1, gun2, gun3)
    TriggerClientEvent('miit:c:table:weapon', -1, table, gun1, gun2, gun3)
end)

RegisterNetEvent('miit:s:table:crime')
AddEventHandler('miit:s:table:crime', function(table, crm1, crm2, crm3)
    TriggerClientEvent('miit:c:table:crime', -1, table, crm1, crm2, crm3)
end)

RegisterNetEvent('miit:s:table:cocaine')
AddEventHandler('miit:s:table:cocaine', function(table, ckn1, ckn2, ckn3)
    TriggerClientEvent('miit:c:table:cocaine', -1, table, ckn1, ckn2, ckn3)
end)

RegisterNetEvent('miit:s:table:weed')
AddEventHandler('miit:s:table:weed', function(table, cnb1, cnb2, cnb3)
    TriggerClientEvent('miit:c:table:weed', -1, table, cnb1, cnb2, cnb3)
end)

-- creation of temporary stash
RegisterNetEvent('miit:s:camp:tempstash')
RegisterServerEvent('miit:s:camp:tempstash', function(stash, label, slot, weight, list)
    stash = exports.ox_inventory:CreateTemporaryStash({
        label = label,
        slots = slot,
        maxWeight = weight,
        items = list
    })
end)