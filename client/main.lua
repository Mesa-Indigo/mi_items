-- will work on this later

-- load locale
lib.locale()

Target = exports.ox_target
local plr, ped, veh = Shared.Set.player, Shared.Set.ped, Shared.Set.vehicle

-- resource load
AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() == resourceName) then

        if veh == true then  end
            if Debug then print(locale('debug_')..'Vehicle Targeting') end

        if ped == true then  end
            if Debug then print(locale('debug_')..'Ped Targeting') end

        --if Shared.Set.ped then Target:addGlobalPed(Data.Player) end
            --if Debug then print(locale('debug_')..'Ped Targeting') end
    end
end)

Target:addGlobalVehicle(Data.Vehicle)
Target:addGlobalPed(Data.Ped)