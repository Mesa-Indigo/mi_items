local fixes = {
    'I\'m sure tires are supposed to be slanted',
    'You gave the axel a stern talking to',
    'You put some air in it, apparently',
    'Yeah, I\'m pretty sure that goes there, totally',
    'Don\'t look at me. I fixed planes, not cars',
    'Who needs a manual when you can just hit it?',
    'Just tell your mechanic you don\'t know what happened'
}

------------------------------------------------
-- WIP - do not use this yet
------------------------------------------------

local wheels = {
    [0] = 'wheel_lf', [1] = 'wheel_rf',
    [2] = 'wheel_lm', [3] = 'wheel_rm',
    [4] = 'wheel_lr', [5] = 'wheel_rr',
}

local nearbytire = function(vehicle)
    local coords = GetEntityCoords(cache.ped) local index
    for winx, wbn in pairs(wheels) do
        local bnix = GetEntityBoneIndexByName(vehicle, wbn)
        if bnix ~= -1 then
            local pos = GetWorldPositionOfEntityBone(vehicle, bnix)
            if #(coords - pos) <= 1.5 then
                index = winx
            end
        end
    end
    return index
end

-- start repairs
local repairtire = function(vehicle, player)
    if lib.progressBar({
        duration = 5000, label = 'Repairing Tires',
        useWhileDead = false, canCancel = true,
        disable = {
            car = true, move = true
        },
        anim = {
            scenario = 'CODE_HUMAN_MEDIC_TEND_TO_DEAD',
        },
        prop = {
            model = `prop_tool_adjspanner`,
            pos = vec3(0.07, 0.055, 0.01),
            rot = vec3(280.0, 10.0, 310.0)
        },
    }) then
        local response = fixes[math.random(1, #fixes)]
        local tx2 = { id = 'tire_complete', title = "Tires Repaired",
        description = response }
        DoNotif(tx2, Cor)
        local tire = nearbytire(vehicle)
        SetVehicleTyreFixed(vehicle, tire)
    else
        local tx3 = { id = 'tire_stopped', title = "Repair Stopped",
        description = 'You stopped repairing the tire' }
        DoNotif(tx3, War) ClearPedTasks(player)
    end
end

-- event to repair engine
RegisterNetEvent('mi_items:global:vehicle:tires')
AddEventHandler('mi_items:global:vehicle:tires', function(vehicle)
    local player = cache.ped
    local burst, fix
    local tires1 = { 0, 1, 4, 5, 2, 3, 45, 47 }
    for _,check in pairs(tires1) do
        burst = IsVehicleTyreBurst(vehicle, check, false)
        if burst == true then
            fix = true
        end
    end
    if not fix then
        local tx1 = { id = 'tire_notneeded', title = "Repair Not Needed",
        description = 'Your tires are in good health' }
        DoNotif(tx1, Cor)
    elseif fix then
        repairtire(vehicle, player)
     end
end)