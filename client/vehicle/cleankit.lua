local fixes = {
    'Aint that all cleanly and stuff, look at that',
    'I know what you are thinking, but don\'t eat the soap',
    'So easy even the LSPD can\'t mess it up',
    'I dare you to suck on the rag',
    'Can I have the bucket? I need it for hydration purposes',
    'And you did it without your dad yelling at you',
    'Vanity isn\'t bad and whoever says it is are ugly'
}

-- start repairs
local cleanvehicle = function(vehicle, player)
    if lib.progressBar({
        duration = 5000, label = 'Cleaning Vehicle',
        useWhileDead = false, canCancel = true,
        disable = {
            car = true, move = true
        },
        anim = {
            blendIn = 3.0,
            dict = 'amb@world_human_maid_clean@',
            clip = 'base',
            blendOut = 3.0,
        },
        prop = {
            bone = 28422,
            model = `prop_sponge_01`,
            pos = vec3(0.0, 0.0, -0.01),
            rot = vec3(90.0, 0.0, 0.0)
        },
    }) then
        local response = fixes[math.random(1, #fixes)]
        local tx2 = { id = 'clean_complete', title = "Vehicle Cleaned",
        description = response }
        DoNotif(tx2, Cor)
        SetVehicleDirtLevel(vehicle, 0.0)
        RemoveDecalsFromVehicle(vehicle)
    else
        local tx3 = { id = 'clean_stopped', title = "Cleaning Stopped",
        description = 'You stopped cleaning' }
        DoNotif(tx3, War) ClearPedTasks(player)
    end
end

-- event to repair engine
RegisterNetEvent('mi_items:c:vehicle:clean')
AddEventHandler('mi_items:c:vehicle:clean', function(vehicle)


    local player = cache.ped
    local dirt = GetVehicleDirtLevel(vehicle)
    if dirt == 0.0 then
        local data = { id = 'fix_unneeded', title = "No Dirt Found",
        description = 'As sparkly as they come' }
        DoNotif(data, Cor)
    elseif dirt >= 0.0 then
        cleanvehicle(vehicle, player)
    end
end)

RegisterCommand('carclean', function()
-- get vehicle details
local coords = GetEntityCoords(cache.ped)
local vehicle = lib.getClosestVehicle(coords, 4.0, true)

if not vehicle then
    local txt = { id = 'veh_notclose', title = 'Unable to Deploy Tool Kit',
    description = 'You need to be close to a vehicle to use this tool' }
    DoNotif(txt, Err)
else
    --prog_setup(toolbox.obj)
    --TaskTurnPedToFaceEntity(cache.ped, vehicle, 2000)
    TriggerServerEvent('mi_items:s:vehicle:clean', vehicle)
end
end, false)