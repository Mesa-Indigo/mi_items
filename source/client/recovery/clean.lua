exports('clean_towel', function()
    if lib.progressBar({
        duration = 7500,
        label = locale('itm_towel'),
        useWhileDead = false,
        canCancel = true,
        disable = {
            car = true,
            move = false,
            combat = true
        },
        anim = {
            bone = 28422,
            dict = 'missheistdockssetup1clipboard@idle_a',
            clip = 'idle_a', flag = 49
        },
        prop = {
            model = `v_res_mbtowelfld`,
            pos = vec3(-0.1, -0.05, -0.1),
            rot = vec3(0.0, 0.0, 0.0)
        },
    }) then
        ClearPedWetness(cache.ped) ClearPedBloodDamage(cache.ped)
    end
end)