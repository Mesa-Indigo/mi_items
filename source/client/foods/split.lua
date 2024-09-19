
-- methods for splitting "food" into pieces

exports('cutfood_dragonfruit', function()
    if lib.progressBar({
        duration = 2500,
        label = locale('food_cut'),
        useWhileDead = false,
        canCancel = false,
        disable = {
            car = true,
            combat = false,
            move = false
        },
        anim = {
            scenario = 'PROP_HUMAN_PARKING_METER'
        },
    }) then
        lib.callback.await('miit:item:rem', cache.ped, 'dragonfruit', 1)
        Wait(300)
        lib.callback.await('miit:item:add', cache.ped, 'dragonfruit_piece', 3)
    end
end)

exports('cutfood_pineapple', function()
    if lib.progressBar({
        duration = 2500,
        label = locale('food_cut'),
        useWhileDead = false,
        canCancel = false,
        disable = {
            car = true,
            combat = false,
            move = false
        },
        anim = {
            scenario = 'PROP_HUMAN_PARKING_METER'
        },
    }) then
        lib.callback.await('miit:item:rem', cache.ped, 'pineapple', 1)
        Wait(300)
        lib.callback.await('miit:item:add', cache.ped, 'pineapple_piece', 5)
    end
end)

exports('cutfood_nectarine', function()
    if lib.progressBar({
        duration = 2500,
        label = locale('food_cut'),
        useWhileDead = false,
        canCancel = false,
        disable = {
            car = true,
            combat = false,
            move = false
        },
        anim = {
            scenario = 'PROP_HUMAN_PARKING_METER'
        },
    }) then
        lib.callback.await('miit:item:rem', cache.ped, 'nectarine', 1)
        Wait(300)
        lib.callback.await('miit:item:add', cache.ped, 'nectarine_piece', 4)
    end
end)

exports('cutfood_sunkist', function()
    if lib.progressBar({
        duration = 2500,
        label = locale('food_cut'),
        useWhileDead = false,
        canCancel = false,
        disable = {
            car = true,
            combat = false,
            move = false
        },
        anim = {
            scenario = 'PROP_HUMAN_PARKING_METER'
        },
    }) then
        lib.callback.await('miit:item:rem', cache.ped, 'sunkist', 1)
        Wait(300)
        lib.callback.await('miit:item:add', cache.ped, 'sunkist_piece', 3)
    end
end)