
-- get NetID from entity
Utils.GetNetId = function(entity)
    Citizen.Wait(100)
    local NetId = NetworkGetEntityFromNetworkId(entity)
    if NetId == nil then
        print('Unable to obtain NetID')
    else
        if Debug then print(NetId) end
        return NetId
    end
end

-- create object function
-- mission entity sets to belong to this script
Utils.CreateObject = function(obj, model, coord)
    obj = CreateObject(model, coord.x,
    coord.y, coord.z, true, false, false)
    SetEntityAsMissionEntity(obj, true, false)
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