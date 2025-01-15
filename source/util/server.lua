
lib.locale()
-- lib.versionCheck('https://github.com/Mesa-Indigo/script_here')

local resource = GetCurrentResourceName()

Util.GetNetID = function(e)
    Citizen.Wait(100)
    local i = NetworkGetNetworkIdFromEntity(e)
    if i == nil then
        lib.print.error(locale('err_entity')..e)
    else
        if Debug then print(i) end
        return i
    end
end

Util.GetEntity = function(i)
    Citizen.Wait(100)
    local e = NetworkGetEntityFromNetworkId(i)
    if e == nil then
        lib.print.error(locale('err_entity')..i)
    else
        if Debug then print(e) end
        return e
    end
end

Util.LoadProp = function(o, m, c)
    o = CreateObject(m, c.x, c.y, c.z, true, false, false)
    SetEntityAsMissionEntity(o, true, false)
end

Util.SpawnVehicle = function(m, c, t)
    local v = CreateVehicleServerSetter(m, t, c.x, c.y, c.z-0.5, c.w)
    return v
end