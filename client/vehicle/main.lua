local toolbox = {
    obj = nil,
    model =  'imp_prop_tool_chest_01a'
}

local prog_setup = function(obj)
    local offset = GetOffsetFromEntityInWorldCoords(cache.ped, 1.1, 0.02, 0.0)
    local heading = GetEntityHeading(cache.ped)
    -- set progress bar
    if lib.progressBar({
        duration = 5000, label = 'Preparing Tool Box', useWhileDead = false,
        canCancel = true,
        disable = { car = true, move = true },
        anim = { scenario = 'CODE_HUMAN_MEDIC_TEND_TO_DEAD' },
    }) then
        -- create object
        local model = lib.requestModel(toolbox.model)
        toolbox.obj = CreateObject(model, offset.x, offset.y, offset.z, true, false, false)
        SetObject(toolbox.obj, heading-135)
        -- remove from inventory
        lib.callback.await('miit:item:add', 'small_toolkit', 1)
    end
end

local get_condition = function(percent)
    if percent >= 80 and percent <= 100 then
        return 'In good condition'
    elseif percent <= 80 and percent >= 50 then
        return 'In fair condition'
    elseif percent <= 50 and percent >= 25 then
        return 'In poor condition'
    elseif percent <= 25 and percent >= 0 then
        return 'Immediate attention needed'
    end
end

local menu_repairs = function(vehicle)
    local name, detail = GetVehInfo(vehicle),
    lib.getVehicleProperties(vehicle)
    lib.registerContext({
        id = 'veh_menu_repairs',
        title = 'Tool Kit: '..name,
        options = {
            {
                title = 'Engine Condition', readOnly = true, icon = 'gauge-high',
                description = get_condition(GetPercentage(detail.engineHealth, 10)),
                progress = GetPercentage(detail.engineHealth, 10),
                colorScheme = GetProgressColor(GetPercentage(detail.engineHealth, 10))
            },
            {
                title = 'Oil Level', readOnly = true, icon = 'oil-can',
                description = get_condition(GetPercentage(detail.oilLevel, 1000)),
                progress = GetPercentage(detail.oilLevel, 1000),
                colorScheme = GetProgressColor(GetPercentage(detail.oilLevel, 1000))
            },
            {
                title = 'Fuel Level', readOnly = true,  icon = 'gas-pump',
                description = get_condition(GetPercentage(detail.fuelLevel, 100)),
                progress = GetPercentage(detail.fuelLevel, 100),
                colorScheme = GetProgressColor(GetPercentage(detail.fuelLevel, 100))
            },
        }
      })
      lib.showContext('veh_menu_repairs')
      lib.print.info(GetPercentage(detail.engineHealth, 10))
      lib.print.info(GetPercentage(detail.oilLevel, 1000))
      lib.print.info(GetPercentage(detail.fuelLevel, 100))
end

--[[
RegisterCommand('vhr', function()
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
        menu_repairs(vehicle)
    end
end, false)
]]