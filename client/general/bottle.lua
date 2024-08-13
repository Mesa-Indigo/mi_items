exports('break_bottle_rancho', function()
    -- remove bottle from inv (s)
    lib.callback.await('miit:button:breakbottle:rancho', false, source)
    -- do animation
    if lib.progressBar({
        duration = 600,
        label = locale('us_bottle'),
        useWhileDead = false,
        canCancel = false,
        disable = {
            car = true,
            combat = false,
            move = false
        },
        anim = {
            dict = 'mp_common',
            clip = "givetake1_a",
        },
    }) then
        lib.callback.await('miit:item:add', 'WEAPON_BOTTLE', 1)
        lib.callback.await('miit:item:rem', 'rancho_beer', 1)
    end
end)

exports('break_bottle_dusche', function()
    -- remove bottle from inv (s)
    lib.callback.await('miit:button:breakbottle:dusche', false, source)
    -- do animation
    if lib.progressBar({
        duration = 600,
        label = locale('us_bottle'),
        useWhileDead = false,
        canCancel = false,
        disable = {
            car = true,
            combat = false,
            move = false
        },
        anim = {
            dict = 'mp_common',
            clip = "givetake1_a",
        },
    }) then
        lib.callback.await('miit:item:add', 'WEAPON_BOTTLE', 1)
        lib.callback.await('miit:item:rem', 'dusche_beer', 1)
    end
end)

exports('break_bottle_rstronzo', function()
    -- remove bottle from inv (s)
    lib.callback.await('miit:button:breakbottle:stronzo', false, source)
    -- do animation
    if lib.progressBar({
        duration = 600,
        label = locale('us_bottle'),
        useWhileDead = false,
        canCancel = false,
        disable = {
            car = true,
            combat = false,
            move = false
        },
        anim = {
            dict = 'mp_common',
            clip = "givetake1_a",
        },
    }) then
        lib.callback.await('miit:item:add', 'WEAPON_BOTTLE', 1)
        lib.callback.await('miit:item:rem', 'stronza_beer', 1)
    end
end)

exports('break_bottle_patriot', function()
    -- remove bottle from inv (s)
    lib.callback.await('miit:button:breakbottle:patriot', false, source)
    -- do animation
    if lib.progressBar({
        duration = 600,
        label = locale('us_bottle'),
        useWhileDead = false,
        canCancel = false,
        disable = {
            car = true,
            combat = false,
            move = false
        },
        anim = {
            dict = 'mp_common',
            clip = "givetake1_a",
        },
    }) then
        lib.callback.await('miit:item:add', 'WEAPON_BOTTLE', 1)
        lib.callback.await('miit:item:rem', 'patriot_beer', 1)
    end
end)