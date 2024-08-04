

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

-- resource load
AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() == resourceName) then
        if Set.ped then Target:addGlobalPed(Data.Ped) end
      if Debug then print(locale('debug_')..'Ped Targeting') end
    end
end)