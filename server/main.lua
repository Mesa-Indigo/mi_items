
-- get entity from netid
GetNetId = function(entity)
    Citizen.Wait(100)
    local NetId = NetworkGetNetworkIdFromEntity(entity)
    if NetId == nil then
        print('Unable to obtain NetID')
    else
        if Debug then print(NetId) end
        return NetId
    end
end

GetEntity = function(entity)
    Citizen.Wait(100)
    local EntId = NetworkGetEntityFromNetworkId(entity)
    if EntId == nil then
        print('Unable to obtain NetID')
    else
        if Debug then print(EntId) end
        return EntId
    end
end

