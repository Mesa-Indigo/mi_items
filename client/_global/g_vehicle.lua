

-- options
Data.Vehicle = {
    {
        name = 'veh_int', icon = 'fa-solid fa-screwdriver-wrench',
        label = locale('init_veh_repair'),
        items = 'enginekit',
        canInteract = function(_, distance)
            return distance < 3.0
        end,
        onSelect = function(data)
            local vehicle = data.entity
            if Debug then print('Vehicle: '..vehicle) end
            TriggerEvent('mi_items:global:vehicle:repair', vehicle)
        end
    },
    {
        name = 'veh_int', icon = 'fa-solid fa-soap',
        label = locale('init_veh_clean'),
        items = 'cleankit',
        canInteract = function(_, distance)
            return distance < 2.0
        end,
        onSelect = function(data)
            local vehicle = data.entity
            if Debug then print('Vehicle: '..vehicle) end
            TriggerEvent('mi_items:global:vehicle:clean', vehicle)
        end
    },
    {
        name = 'veh_int', icon = 'fa-solid fa-spray-can-sparkles',
        label = locale('init_veh_recolor'),
        items = 'spraykit',
        canInteract = function(_, distance)
            return distance < 2.0
        end,
        onSelect = function(data)
            local vehicle = data.entity
            if Debug then print('Vehicle: '..vehicle) end
        end
    },
}

-- resource load
AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() == resourceName) then
        if Set.vehicle then Target:addGlobalVehicle(Data.Vehicle) end
      if Debug then print(locale('debug_')..'Vehicle Targeting') end
    end
end)