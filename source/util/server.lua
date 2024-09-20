
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

Util.DiscordLog = function(s, m)
    if Webhook == nil then return end
    local net = {
        ["color"] = '139741DD',
        ["title"] = GetPlayerName(s),
        ["description"] = m,
        ["footer"] = {
            ["text"] = os.date('%H:%M - %d. %m. %Y', os.time()),
            ["icon_url"] = 'https://media.discordapp.net/attachments/1270909597414326342/1285242598184976467/Logo.png',
        },
    }
    PerformHttpRequest(Webhook, function(err, text, headers) end,
    'POST', json.encode({ username = resource, embeds = net }),
    { ['Content-Type'] = 'application/json' })
end

Util.LoadProp = function(o, m, c)
    o = CreateObject(m, c.x, c.y, c.z, true, false, false)
    SetEntityAsMissionEntity(o, true, false)
end

Util.SpawnVehicle = function(m, c, t)
    local v = CreateVehicleServerSetter(m, t, c.x, c.y, c.z-0.5, c.w)
    return v
end