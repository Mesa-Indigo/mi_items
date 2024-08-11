local rocks, model = 0, World.Mining.model
local rockList = {}

local progress = function(object)
    if lib.progressBar({
        duration = World.Mining.duration, label = 'Mining Rock',
        useWhileDead = false, canCancel = true,
        disable = {
            car = true, move = true
        },
        anim = {
            blendIn = 3.0, dict = 'melee@large_wpn@streamed_core',
            clip = 'ground_attack_on_spot', blendOut = 3.0,
        },
        prop = {
            bone = 57005,
            model = `prop_tool_pickaxe`,
            pos = vec3(0.0, -0.20, -0.05),
            rot = vec3(80.0, -20.0, 175.0)
        },
    }) then
        Wait(250)
        DeleteObject(object)
        rocks = rocks - 1
        lib.callback.await('miit:give:mining:reward')
    end
end

local chemops = {
    {
        name = 'give_mtrl',
        label = 'Mine Rock',
        icon = 'fa-solid fa-hammer',
        canInteract = function(_, distance)
            return distance < 2.0
        end,
        onSelect = function(data)
            local object = data.entity
            progress(object)
            if Debug then
            lib.print.info('collected: '..object) end
        end
    }
}

local spawnobjects = function(data)
    -- spawn location
    local spawn = data.spawn
    -- while loop to ensure limit met
    while rocks < data.count do
        Wait(data.timer)
        local ofcd = data.space
        -- offset math for locations
        local ofx = spawn+math.random(ofcd.x.min, ofcd.x.max)
        local ofy = spawn+math.random(-50, 50)
        -- creation of objects
        lib.requestModel(model, 1000)
        local object = CreateObject(model, ofx.x, ofy.y, spawn.z+0.5, true, true, false)
        local head = math.random(45,235)
        -- set object physics
        SetObject(object, head)
        -- set rotation
        --local tilt = math.random(5, 75)
        --SetEntityRotation(object, 0.0, tilt, 0.0, 2, true)
        -- set target
        Target:addLocalEntity(object, chemops)
        -- insert object into list
        table.insert(rockList, object)
        rocks = rocks + 1
        -- debug print for console
        if Debug then
            lib.print.info('chem:barrel:created: '..object..' - '..rocks..' | '..ofx..', '..ofy)
        end
    end
end

RegisterNetEvent('miit:c:mining:load:rocks')
AddEventHandler('miit:c:mining:load:rocks', function()
    spawnobjects(World.Mining)
end)

TriggerServerEvent('miit:s:mining:load:rocks')


--[[
Citizen.CreateThread(function()
    while barrels <= 10 do
        spawnchems()
        Citizen.Wait(1000)
    end
end)
]]