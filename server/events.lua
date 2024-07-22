-- register tent stash
RegisterNetEvent('miit:stash:tent:add', function()
    local stash = {
        id = 'tentstash',
        label = 'Camping Tent',
        slots = Data.Camping.tent.items,
        weight = 50000,
        owner = false
    }

    exports.ox_inventory:RegisterStash(stash.id, stash.label, stash.slots, stash.weight, stash.owner)
end)
