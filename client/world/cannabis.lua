local cannabis, model = 0, World.Cannabis.model
local cannabisList = {}

local progress = function(object)
    if lib.progressBar({
        duration = World.Chemicals.duration, label = 'Collecting Cannabis',
        useWhileDead = false, canCancel = true,
        disable = {
            car = true, move = true
        },
        anim = { scenario = 'CODE_HUMAN_MEDIC_TEND_TO_DEAD' },
    }) then
        Wait(250)
        DeleteObject(object)
        cannabis = cannabis - 1
        lib.callback.await('miit:give:cannabis:reward')
    end
end

local chemops = {
    {
        name = 'give_weed',
        label = 'Collect Cannabis',
        icon = 'fa-solid fa-hand-fist',
        canInteract = function(_, distance)
            return distance < 1.5
        end,
        onSelect = function(data)
            local object = data.entity
            progress(object)
            if Debug then
            lib.print.info('collected: '..object) end
        end
    },
}

local spawnobjects = function(data, spawn)
    -- spawn location
    -- while loop to ensure limit met
    while cannabis < data.count do
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
        table.insert(cannabisList, object)
        cannabis = cannabis + 1
        -- debug print for console
        if Debug then
            lib.print.info('drug:weed:created: '..object..' - '..cannabis..' | '..ofx..', '..ofy)
        end
    end
end

RegisterNetEvent('miit:c:load:cannabis')
AddEventHandler('miit:c:load:cannabis', function()
    spawnobjects(World.Cannabis, World.Cannabis.spawn.loc1)
end)

TriggerServerEvent('miit:s:load:cannabis')




--[[
Citizen.CreateThread(function()
    while barrels <= 10 do
        spawnchems()
        Citizen.Wait(1000)
    end
end)
]]