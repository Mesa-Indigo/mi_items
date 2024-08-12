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

RegisterServerEvent('miit:s:camp:tempstash', function(stash, label, slot, weight, list)
    stash = exports.ox_inventory:CreateTemporaryStash({
        label = label,
        slots = slot,
        maxWeight = weight,
        items = list
    })
end)