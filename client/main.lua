MI_Timer = function(time)
    local mili = time * 1000
    local timer = lib.timer(mili, function()
        print("timer ended")
     end)
end

-- load locale
lib.locale()

-- event to load options
AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() == resourceName) then
        TriggerEvent('mi_world:set:ped')
        TriggerEvent('mi_world:set:player')
        TriggerEvent('mi_world:set:vehicle')
      if Debug then print('loaded ' .. resourceName) end
    end
end)