local tent = {
    obj = nil, model = lib.requestModel('ba_prop_battle_tent_02'),
}

local tentops = {
    {
        name = 'opentent',
        label = 'Open tent',
        icon = 'fa-solid fa-campground',
        canInteract = function(_, distance)
            return distance < 2.2
        end,
        onSelect = function()
            -- open tent stash
            exports.ox_inventory:openInventory('tentstash')
        end
    },
    {
        name = 'packup',
        label = 'Pack up',
        icon = 'fa-solid fa-box-archive',
        canInteract = function(_, distance)
            return distance < 2.2
        end,
        onSelect = function()
            -- delete stash with items inside
            -- delete tent
            -- delete target
            --lib.callback.await('miit:table:stronzo_beer:add')
        end
    },
}

--[[
WIP

-- tent1 = -596943609, tent2 = -1055611302

RegisterCommand('ctent', function()
    local player = cache.ped
    local offset = GetOffsetFromEntityInWorldCoords(player, 0.2, 2.5, 0.0)
    local heading = GetEntityHeading(player)

    if lib.progressBar({
        duration = 5000,
        label = 'Setting Tent',
        useWhileDead = false,
        canCancel = true,
        disable = {
            car = true,
            move = true
        },
        anim = {
            scenario = 'CODE_HUMAN_MEDIC_TEND_TO_DEAD',
        },
    }) then
        tent.obj = CreateObject(tent.model, offset.x, offset.y, offset.z, true, false, false)
        SetEntityHeading(tent.obj, heading)
        PlaceObjectOnGroundProperly(tent.obj)
        FreezeEntityPosition(tent.obj, true)
        SetEntityCollision(tent.obj, true, true)
        exports.ox_target:addLocalEntity(tent.obj, tentops)
        TriggerEvent('miit:stash:tent:add')
    end
end, false)

]]