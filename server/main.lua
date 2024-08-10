
-- get entity from netid
GetNetId = function(entity)
   Wait(100)
    local NetId = NetworkGetNetworkIdFromEntity(entity)
    if NetId == nil then
        lib.print.error('Unable to obtain NetID')
    else
        if Debug then lib.print.info(NetId) end
        return NetId
    end
end

GetEntity = function(entity)
   Wait(100)
    local EntId = NetworkGetEntityFromNetworkId(entity)
    if EntId == nil then
        lib.print.error('Unable to obtain NetID')
    else
        if Debug then lib.print.info(EntId) end
        return EntId
    end
end

