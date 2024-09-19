local shield, holding = nil, {shield = 0, used = false}
local playinganim = false

local rioton = function()
    local shieldmod = lib.requestModel('prop_ballistic_shield')
    local dict = lib.requestAnimDict('anim@random@shop_clothes@watches', 200)
    while not HasModelLoaded(shieldmod) do
        Wait(10)
    end
    while not HasAnimDictLoaded(dict) do
        Wait(100)
    end
    if not holding.used then
        if lib.progressBar({
            duration = 5000,
            label = locale('eq_riotshield'),
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
                move = true,
            },
            anim = {
                dict = 'clothingshirt',
                clip = 'try_shirt_positive_d'
            },
        }) then
            local plycrd = GetOffsetFromEntityInWorldCoords(GetPlayerPed(cache.ped), 0.0, 0.0, -5.0)
            shield = CreateObject(shieldmod, plycrd.x, plycrd.y, plycrd.z, true, false, false)
            AttachEntityToEntity(shield, GetPlayerPed(PlayerId()), GetPedBoneIndex(GetPlayerPed(PlayerId()),
            45509),0.25, 0.25, -0.059, 305.0, 155.0, 87.5, true, true, true, true, 0, true)
            holding.shield = shield
            holding.used = true
            
            
            TaskPlayAnim(cache.ped, dict, 'base', 8.0, 8.0, -1, 49, 0, false, false, false)
            playinganim = true
            if playinganim then
                TaskPlayAnim(cache.ped, dict, 'base', 8.0, 8.0, -1, 49, 0, false, false, false)
            else
                TaskPlayAnim(cache.ped, dict, 'base', 8.0, 8.0, -1, 49, 0, false, false, false)
            end
        end
    end
end

local riotoff = function()
    if holding.used then
        if lib.progressBar({
            duration = 5000,
            label = locale('rm_riotshield'),
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
                move = true,
            },
            anim = {
                dict = 'clothingshirt',
                clip = 'try_shirt_positive_d'
            },
        }) then
            ClearPedTasksImmediately(cache.ped)
            DetachEntity(holding.shield, false, true)
            DeleteEntity(holding.shield)
            holding.shield = 0
            holding.used = false
            playinganim = false
        end
    end
end

exports('shield_riot', function()
    if not holding.used then
        rioton()
    elseif holding.used then
        riotoff()
    else return end
end)