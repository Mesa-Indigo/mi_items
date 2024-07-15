exports('bandage_basic', function()
    local player = cache.ped
    local maxHealth = GetEntityMaxHealth(player)
	local health = GetEntityHealth(player)
    if lib.progressBar({
        duration = 5000,
        label = 'Applying Bandage',
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
            model = `prop_ld_health_pack`,
            pos = vec3(-0.1, -0.05, -0.1),
            rot = vec3(0.0, 0.0, 0.0)
        },
    }) then 
        SetEntityHealth(player, math.min(maxHealth, math.floor(health + maxHealth / 16)))
    end
end)