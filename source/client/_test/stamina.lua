--[[


-- player stamina
exports('ejunk', function()
    
end)

local setpill = function(entity)
    SetPlayerInvincible(entity, true)
    Wait(1000)
    local state = GetPlayerInvincible(entity)
    print(state)
    Wait(15000)
    SetPlayerInvincible(entity, false)
end

RegisterCommand('morphine', function()
    if lib.progressBar({
        duration = 2000,
        label = 'Taking Pill',
        useWhileDead = false,
        canCancel = true,
        disable = {
            car = true,
        },
        anim = {
            dict = 'mp_suicide', clip = 'pill', flag = 49,
            blendIn = 4.0, blendOut = 4.0, playbackRate = 0
        },
    }) then
        setpill(cache.ped)
    end
end, false)

]]