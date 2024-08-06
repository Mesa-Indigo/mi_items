

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
            TriggerEvent('mi_items:global:vehicle:color', vehicle)
        end
    },
    {
        name = 'veh_int', icon = 'fa-solid fa-toolbox',
        label = locale('init_veh_tire'),
        items = 'tirekit',
        canInteract = function(_, distance)
            return distance < 2.0
        end,
        onSelect = function(data)
            local vehicle = data.entity
            if Debug then print('Vehicle: '..vehicle) end
            TriggerEvent('mi_items:global:vehicle:tires', vehicle)
        end
    },
    {
        name = 'veh_int', icon = 'fa-solid fa-clipboard-question',
        label = locale('init_veh_inspection'),
        items = 'inspectionkit',
        canInteract = function(_, distance)
            return distance < 2.0
        end,
        onSelect = function(data)
            local vehicle = data.entity
            if Debug then print('Vehicle: '..vehicle) end
            TriggerEvent('mi_items:global:vehicle:inspect', vehicle)
        end
    },
}

