
-- get NetID from entity
Svr.GetNetId = function(entity)
    Citizen.Wait(100)
    local NetId = NetworkGetNetworkIdFromEntity(entity)
    if NetId == nil then
        lib.print.error(locale('err_entity')..entity)
    else
        if Debug then print(NetId) end
        return NetId
    end
end

-- get NetID from entity
Svr.GetEntity = function(NetId)
    Citizen.Wait(100)
    local entity = NetworkGetEntityFromNetworkId(NetId)
    if entity == nil then
        lib.print.error(locale('err_entity')..NetId)
    else
        if Debug then print(entity) end
        return entity
    end
end