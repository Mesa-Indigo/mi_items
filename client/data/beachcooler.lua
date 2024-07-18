local cooler = {
    obj = nil, model = lib.requestModel('v_ret_fh_coolbox'),
}

local tableoptions_start = {
    {
        name = 'givebeer1',
        label = 'Take Patriot Beer',
        icon = 'fa-solid fa-wine-bottle',
        canInteract = function(_, distance)
            return distance < 1.5
        end,
        onSelect = function()
            lib.callback.await('miit:table:patriot_beer:add')
        end
    },
    {
        name = 'givebeer2',
        label = 'Take Stronzo Beer',
        icon = 'fa-solid fa-wine-bottle',
        canInteract = function(_, distance)
            return distance < 1.5
        end,
        onSelect = function()
            lib.callback.await('miit:table:stronzo_beer:add')
        end
    },
    {
        name = 'givebeer3',
        label = 'Take Dusche Beer',
        icon = 'fa-solid fa-wine-bottle',
        canInteract = function(_, distance)
            return distance < 1.5
        end,
        onSelect = function()
            lib.callback.await('miit:table:dusche_beer:add')
        end
    },
    {
        name = 'givebeer4',
        label = 'Take Rancho Beer',
        icon = 'fa-solid fa-wine-bottle',
        canInteract = function(_, distance)
            return distance < 1.5
        end,
        onSelect = function()
            lib.callback.await('miit:table:rancho_beer:add')
        end
    }
}

RegisterCommand('beachcooler', function()
    local player = cache.ped
    local offset = GetOffsetFromEntityInWorldCoords(player, 0.0, 1.2, 0.0)
    local heading = GetEntityHeading(player)

    if lib.progressBar({
        duration = 5000,
        label = 'Setting Cooler',
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
        cooler.obj = CreateObject(cooler.model, offset.x, offset.y, offset.z, true, false, false)
        SetEntityHeading(cooler.obj, heading)
        PlaceObjectOnGroundProperly(cooler.obj)
        FreezeEntityPosition(cooler.obj, true)
        SetEntityCollision(cooler.obj, true, true)
        exports.ox_target:addLocalEntity(cooler.obj, tableoptions_start)
    end
end, false)