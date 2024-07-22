-- start repairs
local repairVehicle = function(vehicle)
    SetVehicleDoorOpen(vehicle, 4, false, false)
    Citizen.Wait(500)
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
        if Debug then
            print('vehicle repaired')
        end
        SetVehicleDoorShut(vehicle, 4, false)
        Citizen.Wait(200)
        SetVehicleFixed(vehicle)
    else
        if Debug then
            print('vehicle not repaired')
        end
        print('Do stuff when cancelled')
        Citizen.Wait(1000)
        SetVehicleDoorShut(vehicle, 4, false)
    end
end

exports('repair_veheng', function()
    -- export system
end)

