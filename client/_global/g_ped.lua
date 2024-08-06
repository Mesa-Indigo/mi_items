

-- options
Data.Ped = {
    {
        name = 'gen_shove', icon = 'fa-solid fa-person-falling-burst',
        label = locale('init_gen_shove'),
        canInteract = function(_, distance)
            return distance < 2.0
        end,
        onSelect = function(data)
            local ped = data.entity
            if Debug then print('Ped: '..ped) end

        end
    },

    {
        name = 'gen_shove', icon = 'fa-solid fa-shield-halved',
        label = locale('init_ped_police'),
        canInteract = function(_, distance)
            return distance < 2.0
        end,
        onSelect = function(data)
            local ped = data.entity
            if Debug then print('Ped: '..ped) end

        end
    },
    {
        name = 'gen_shove', icon = 'fa-solid fa-notes-medical',
        label = locale('init_ped_ems'),
        canInteract = function(_, distance)
            return distance < 2.0
        end,
        onSelect = function(data)
            local ped = data.entity
            if Debug then print('Ped: '..ped) end

        end
    },
    {
        name = 'gen_shove', icon = 'fa-solid fa-fire-extinguisher',
        label = locale('init_ped_fire'),
        canInteract = function(_, distance)
            return distance < 2.0
        end,
        onSelect = function(data)
            local ped = data.entity
            if Debug then print('Ped: '..ped) end

        end
    },
    {
        name = 'gen_shove', icon = 'fa-solid fa-gun',
        label = locale('init_ped_gang'),
        canInteract = function(_, distance)
            return distance < 2.0
        end,
        onSelect = function(data)
            local ped = data.entity
            if Debug then print('Ped: '..ped) end

        end
    },
}

Target:addGlobalPed(Data.Ped)