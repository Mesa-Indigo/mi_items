local fixes = {
    'Looks like there was a skittle in the engine',
    'You gave the engine a stern talking to',
    'You put some gas in it, apparently',
    'Yeah, I\'m pretty sure that goes there, totally',
    'Don\'t look at me. I fixed planes, not cars',
    'Who needs a manual when you can just hit it?',
    'Just tell your mechanic you don\'t know what happened'
}

-- start repairs
local vehiclerepairs = function(vehicle)
    SetVehicleDoorOpen(vehicle, 4, false, false)
    Wait(500)
    TaskPlayAnim(cache.ped,'random@train_tracks','idle_e',4.0,-4.0, -1, 1, 1, true, true, true)
    Wait(5000)
    local tx1 = { id = 'fix_unneeded', title = "Inspecting For Damages",
        description = 'It seems there is an issue with the engine' }
    DoNotif(tx1, War)
    local success = lib.skillCheck({'easy', 'easy', 'easy'}, {'q', 'w', 'e', 'r'})
    if not success then
        local tx2 = { id = 'fix_notfound', title = "No Damages Found",
        description = 'You couldn\'t find any issues with the engine' }
        DoNotif(tx2, Err) ClearPedTasks(cache.ped)
    else
        Wait(500)
        if lib.progressBar({
            duration = 5000, label = 'Repairing Engine',
            useWhileDead = false, canCancel = true,
            disable = {
                car = true, move = true
            },
            anim = {
                blendIn = 3.0, dict = 'mini@repair',
                clip = 'fixing_a_player', blendOut = 3.0,
            },
            prop = {
                model = `prop_tool_adjspanner`,
                pos = vec3(0.07, 0.055, 0.01),
                rot = vec3(280.0, 10.0, 310.0)
            },
        }) then
            local response = fixes[math.random(1, #fixes)]
            local tx2 = { id = 'fix_complete', title = "Engine Repaired",
            description = response }
            DoNotif(tx2, Cor) ClearPedTasks(cache.ped)
            SetVehicleEngineHealth(vehicle, 1000)
            SetVehicleOilLevel(vehicle, 1000)
            SetVehicleDoorShut(vehicle, 4, false)
        else
            local tx3 = { id = 'fix_stopped', title = "Engine Repair Stopped",
            description = 'You stopped working on the engine' }
            DoNotif(tx3, War) ClearPedTasks(cache.ped)
        end
    end
end

-- event to repair engine
RegisterNetEvent('mi_items:global:vehicle:repair')
AddEventHandler('mi_items:global:vehicle:repair', function(vehicle)
    local health = GetVehicleEngineHealth(vehicle)
    if health == 1000.0 then
        local data = { id = 'fix_unneeded', title = "No Engine Damage Noted",
        description = 'This vehicle\'s engine has no need for repairs' }
        DoNotif(data, Cor)
    elseif health <= 999.99 then
        vehiclerepairs(vehicle)
    end
end)