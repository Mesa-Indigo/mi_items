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
        label = locale('cooler_dusche'),
        icon = 'fa-solid fa-wine-bottle',
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
    },
    {
        name = 'clear',
        label = locale('cooler_clean'),
        icon = 'fa-solid fa-broom',
        canInteract = function(_, distance)
            return distance < 1.5
        end,
        onSelect = function()
            if lib.progressBar({
                duration = 5000,
                label = locale('cooler_clean2'),
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
                Wait(350)
                DeleteObject(cooler.obj)
            end
        end
    }
}

exports('cooler', function()
    local offset = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 1.2, 0.0)
    local heading = GetEntityHeading(cache.ped)

    if lib.progressBar({
        duration = 5000,
        label = locale('cooler_set'),
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
        Util.SetObject(cooler.obj, heading)
        exports.ox_target:addLocalEntity(cooler.obj, tableoptions_start)
    end
end)