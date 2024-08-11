-- register tent stash
RegisterNetEvent('miit:stash:tent:add')
AddEventHandler('miit:stash:tent:add', function()
    local stash = {
        id = 'tentstash',
        label = 'Camping Tent',
        slots = Data.Camping.tent.items,
        weight = 50000,
        owner = false
    }

    exports.ox_inventory:RegisterStash(stash.id, stash.label, stash.slots, stash.weight, stash.owner)
end)

RegisterNetEvent('miit:s:mining:load:rocks')
AddEventHandler('miit:s:mining:load:rocks', function()
    TriggerClientEvent('miit:c:mining:load:rocks', -1)
end)

RegisterServerEvent('miit:s:camp:tempstash', function(stash, label, slot, weight, list)
    stash = exports.ox_inventory:CreateTemporaryStash({
        label = label,
        slots = slot,
        maxWeight = weight,
        items = list
    })
end)