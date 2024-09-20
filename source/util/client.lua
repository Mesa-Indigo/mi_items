
lib.locale()

Util.IGTime = function()
    local i = {
        s = GetClockSeconds(),
        m = GetClockMinutes(),
        h = GetClockHours()
    } return i
end

Util.IGDate = function()
    local i = {
        d = GetClockDayOfMonth(),
        w = GetClockDayOfWeek(),
        m = GetClockMonth()
    } return i
end

Util.VehicleInfo = function(v)
    local m = GetEntityModel(v)
    local d = GetDisplayNameFromVehicleModel(m)
    local n = GetLabelText(d)
    return n
end

Util.Delete = function(e)
    if not e then
    return end
    DeleteEntity(e)
    e = nil
end

Util.SetObject = function(o,h)
    SetEntityHeading(o, h)
    PlaceObjectOnGroundProperly(o)
    FreezeEntityPosition(o, true)
    SetEntityCollision(o, true, true)
end

Util.Teleport = function(p, x, y, z, w)
    DoScreenFadeOut(150)
    Wait(500)
    SetEntityCoords(p, x, y, z, false, false, false, false)
    SetEntityHeading(p, w)
    DoScreenFadeIn(150)
end

Util.GetPercentage = function(p, m)
    if tonumber(p) and tonumber(m) then
        return (m*p)/100
    end
end

Util.GetProgressColor = function(p)
    if p >= 80 and p <= 100 then
        return '#40C057' -- green
    elseif p <= 80 and p >= 50 then
        return '#FFD43B' -- yellow
    elseif p <= 50 and p >= 25 then
        return '#F76707' -- orange
    elseif p <= 25 and p >= 0 then
        return '#E03131' -- red
    end
end