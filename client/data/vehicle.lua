local prop, options
local text1 = { id = 'eng_repair1', title = 'Repairing Enging', desc = 'You begin working on the car' }
local textS = { id = 'eng_repairS', title = 'Engine Repaired', desc = 'You have finished the repairs' }
local textE = { id = 'eng_repairS', title = 'Stopped Repairs', desc = 'You stopped the repairs' }
local toolkit = lib.requestModel('xs_prop_x18_tool_box_01a', 300)
local tool = { equipped = false, used = false}


-- target vehicle
local targVehicle = function()
    local plrcd = GetEntityCoords(cache.ped)
    local vehicle = lib.getClosestVehicle(plrcd, 5, true)
    return vehicle
end

local createProp = function(player)
    local cd, rt = vec3(0.41,0.0,0.0), vec3(110.0,90.0,180.0)
    prop = CreateObject(toolkit, 0.0, 0.0, 0.0, true, false, false)
    local bone = GetPedBoneIndex(player, 18905)
    AttachEntityToEntity(prop, player, bone, cd.x, cd.y, cd.z,
    rt.x, rt.y, rt.z, true, true, false, false, 2, true)
end

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
        TriggerEvent('notif', textS, Cor )
    else
        if Debug then
            print('vehicle not repaired')
        end
        print('Do stuff when cancelled')
        Citizen.Wait(1000)
        SetVehicleDoorShut(vehicle, 4, false)
        TriggerEvent('notif', textE, Err )
    end
end

options = {
    {
        name  = 'eng_repair', label = 'Repair Engine',
        icon = 'fa-solid fa-screwdriver-wrench',
        canInteract = function(_, distance)
            return distance < 1.5
        end,
        onSelect = function(vehicle)
            TriggerEvent('notif', text1, Inf ) DeleteProp(prop)
            tool.equipped, tool.used = false, true
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
                TriggerEvent('notif', textS, Cor )
            else
                if Debug then
                    print('vehicle not repaired')
                end
                print('Do stuff when cancelled')
                Citizen.Wait(1000)
                SetVehicleDoorShut(vehicle, 4, false)
                TriggerEvent('notif', textE, Err )
            end
            exports.ox_target:removeLocalEntity(vehicle, options)
        end
    }
}

-- remove target options for now
-- open menu for repairing body or engine
local equip = function(player)
    while not HasModelLoaded(toolkit) do
        Citizen.Wait(10)
    end
    if not tool.equipped then
        createProp(player)
    end
    tool.equipped = true
end

local notEquip = function(player)
    if tool.equipped and not tool.used then
        DeleteProp(prop)
    end
    tool.equipped = false
end

exports('repair_veheng', function()
    local vehicle = targVehicle()
    if not tool.equipped then
        equip(cache.ped)
        exports.ox_target:addLocalEntity(vehicle, options)
        -- repair?
    elseif tool.equipped then
        notEquip()
        -- remove option
        exports.ox_target:removeLocalEntity(vehicle, options)
    end
end)

