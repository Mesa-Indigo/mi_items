
-- get vehicle data
Utils.GetVehInfo = function(vehicle)
    local model = GetEntityModel(vehicle)
    local display = GetDisplayNameFromVehicleModel(model)
    local name = GetLabelText(display)
    return name
end

-- set object orientation & physics
Utils.SetObject = function(obj, head)
    SetEntityHeading(obj, head)
    PlaceObjectOnGroundProperly(obj)
    FreezeEntityPosition(obj, true)
    SetEntityCollision(obj, true, true)
end

-- teleport function
Utils.Teleport = function(ped, x, y, z, w)
    DoScreenFadeOut(100)
    Citizen.Wait(1000)
    SetEntityCoords(ped, x, y, z, false, false, false, false)
    SetEntityHeading(ped, w)
    DoScreenFadeIn(750)
end

-- load shell function
Utils.CreateShell = function(shell, model, coord, head)
    shell = CreateObject(model, coord.x,
    coord.y, coord.z, true, false, false)
    SetEntityHeading(shell, head)
    FreezeEntityPosition(shell, true)
end

-- delete shell function
Utils.DeleteShell = function(shell)
    if not shell then
        print('not shell to delete') return end
    DeleteEntity(shell)
    shell = nil
end

-- convert current value and max value to percentage
Utils.GetPercentage = function(percent, maxvalue)
    if tonumber(percent) and tonumber(maxvalue) then
        return (maxvalue*percent)/100
    end
end

-- set color for progress bar in context menu
Utils.GetProgressColor = function(percent)
    if percent >= 80 and percent <= 100 then
        return '#40C057'
    elseif percent <= 80 and percent >= 50 then
        return '#FFD43B'
    elseif percent <= 50 and percent >= 25 then
        return '#F76707'
    elseif percent <= 25 and percent >= 0 then
        return '#E03131'
    end
end