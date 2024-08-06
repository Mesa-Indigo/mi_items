

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
            TriggerEvent('mi_items:global:gen:shove', ped)
        end
    },
}
