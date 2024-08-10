
-- get entity from netid
Utils.GetNetId = function(entity)
    Citizen.Wait(100)
    local NetId = NetworkGetNetworkIdFromEntity(entity)
    if NetId == nil then
        print('Unable to obtain NetID')
    else
        if Debug then print(NetId) end
        return NetId
    end
end

Utils.GetEntity = function(entity)
    Citizen.Wait(100)
    local EntId = NetworkGetEntityFromNetworkId(entity)
    if EntId == nil then
        print('Unable to obtain NetID')
    else
        if Debug then print(EntId) end
        return EntId
    end
end

-- create object function
-- mission entity sets to belong to this script
Utils.CreateObject = function(model, coord)
    CreateObject(model, coord.x,
    coord.y, coord.z, true, false, false)
end

-- delete object function
-- returns error if object not found
Utils.DeleteObject = function(obj)
    if not obj then
        print(locale('debug')..'No presented object to delete')
    return end
    DeleteEntity(obj)
    obj = nil
end