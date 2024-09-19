--[[

local issues = {
    engn = { },
    tire = { },
    body = { },
    dirt = { },
}

local getvehicleinfo = function(vehicle)
    local model = GetEntityModel(vehicle)
    local display = GetDisplayNameFromVehicleModel(model)
    local name = GetLabelText(display)
    return name
end

local getpercentage = function(percent, maxvalue)
    if tonumber(percent) and tonumber(maxvalue) then
        return (maxvalue*percent)/100
    end
end

local getprogcolor = function(percent)
    if percent >= 80 and percent >= 100 then
        return '#40C057'
    elseif percent <= 80 and percent >= 50 then
        return '#FFD43B'
    elseif percent <= 50 and percent >= 25 then
        return '#F76707'
    elseif percent <= 25 and percent >= 0 then
        return '#E03131'
    end
end

local vehicleinspection = function(vehicle)
    local name, detail = getvehicleinfo(vehicle),
    lib.getVehicleProperties(vehicle)
    lib.registerContext({
        id = 'inspect_veh_menu',
        title = name..': '..detail.plate,
        options = {
          {
            title = 'Progress Test: Oil', readOnly = true,
            progress = getpercentage(detail.oilLevel, 100),
            colorScheme = getprogcolor(getpercentage(detail.oilLevel, 100))
          },
          {
            title = 'Progress Test: Engine', readOnly = true,
            progress = getpercentage(detail.engineHealth, 100),
            colorScheme = getprogcolor(getpercentage(detail.engineHealth, 100))
          },
          {
            title = 'Progress Test: Fuel', readOnly = true,
            progress = getpercentage(detail.fuelLevel, 100),
            colorScheme = getprogcolor(getpercentage(detail.fuelLevel, 100))
          },
        }
      })
    lib.showContext('inspect_veh_menu')
end

RegisterNetEvent('mi_items:global:vehicle:inspect')
AddEventHandler('mi_items:global:vehicle:inspect', function(vehicle)
    local player = cache.ped
    SetVehicleDoorOpen(vehicle, 4, false, false) Wait(500)
    if lib.progressBar({
        duration = 5000, label = 'Inspecting Vehicle',
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
        -- load inspection menu
    else
        local tx3 = { id = 'fix_stopped', title = "Engine Repair Stopped",
        description = 'You stopped working on the engine' }
        DoNotif(tx3, War) ClearPedTasks(player)
        SetVehicleDoorShut(vehicle, 4, false)
    end
    vehicleinspection(vehicle)
end)

]]