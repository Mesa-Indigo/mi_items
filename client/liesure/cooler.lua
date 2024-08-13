local cooler = {
    obj = nil, model = lib.requestModel('v_ret_fh_coolbox'),
}

local tableoptions_start = {
    {
        name = 'givebeer1',
        label = locale('cooler_patriot'),
        icon = 'fa-solid fa-wine-bottle',
        canInteract = function(_, distance)
            return distance < 1.5
        end,
        onSelect = function()
            lib.callback.await('miit:item:add', 'patriot_beer', 1)
        end
    },
    {
        name = 'givebeer2',
        label = locale('cooler_stronzo'),
        icon = 'fa-solid fa-wine-bottle',
        canInteract = function(_, distance)
            return distance < 1.5
        end,
        onSelect = function()
            lib.callback.await('miit:item:add', 'stronzo_beer', 1)
        end
    },
    {
        name = 'givebeer3',
        label = 'Take Dusche Beer',
        icon = locale('cooler_dusche'),
        canInteract = function(_, distance)
            return distance < 1.5
        end,
        onSelect = function()
            lib.callback.await('miit:item:add', 'dusche_beer', 1)
        end
    },
    {
        name = 'givebeer4',
        label = locale('cooler_rancho'),
        icon = 'fa-solid fa-wine-bottle',
        canInteract = function(_, distance)
            return distance < 1.5
        end,
        onSelect = function()
            lib.callback.await('miit:item:add', 'rancho_beer', 1)
        end
    }
}

RegisterCommand('cooler', function()
    local offset = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 1.2, 0.0)
    local heading = GetEntityHeading(cache.ped)

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