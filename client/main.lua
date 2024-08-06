-- load locale
lib.locale()

-- resource load
AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() == resourceName) then
    if Shared.Set.vehicle then Target:addGlobalVehicle(Data.Vehicle) end
        if Debug then print(locale('debug_')..'Vehicle Targeting') end
    if Shared.Set.ped then Target:addGlobalPed(Data.Ped) end
        if Debug then print(locale('debug_')..'Ped Targeting') end
    end
end)