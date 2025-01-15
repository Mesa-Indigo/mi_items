
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

RegisterCommand('vehinsp', function()
    local coords = GetEntityCoords(cache.ped)
  local vehicle = lib.getClosestVehicle(coords, 4.0, true)

  if not vehicle then
      local txt = { id = 'veh_notclose', title = 'Unable to Deploy Tool Kit',
      description = 'You need to be close to a vehicle to use this tool' }
      Util.Notify(txt, Err)
  else
    vehicleinspection(vehicle)
  end
end, false)