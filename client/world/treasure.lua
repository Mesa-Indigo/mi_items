local chest, model = 0, World.Diving.model
local chestList = {}

local chestops = {
    {
        name = 'give_trsr',
        label = locale('side_obtn_trsr'),
        icon = 'fa-solid fa-hand-fist',
        canInteract = function(_, distance)
            return distance < 3.0
        end,
        onSelect = function(data)
            local object = data.entity
            if Debug then
                lib.print.info('collected: '..object) end
            Wait(250)
            DeleteObject(object)
            chest = chest - 1
            lib.callback.await('miit:give:diving:reward')
        end
    }
}

local spawnobjects = function(data)
    -- spawn location
    local spawn = data.spawn
    -- while loop to ensure limit met
    while chest < data.count do
        Wait(data.timer)
        local ofcd = data.space
        -- offset math for locations
        local ofx = spawn+math.random(ofcd.x.min, ofcd.x.max)
        local ofy = spawn+math.random(-50, 50)
        -- creation of objects
        lib.requestModel(model, 1000)
        local object = CreateObject(model, ofx.x, ofy.y, spawn.z, true, true, false)
        local head = math.random(45,235)
        -- set object physics
        SetObject(object, head)
        -- set rotation
        --local tilt = math.random(5, 75)
        --SetEntityRotation(object, 0.0, tilt, 0.0, 2, true)
        -- set target
        Target:addLocalEntity(object, chestops)
        -- insert object into list
        table.insert(chestList, object)
        chest = chest + 1
        -- debug print for console
        if Debug then
            lib.print.info('treasure:chest:created: '..object..' - '..chest..' | '..ofx..', '..ofy)
        end
    end
end

RegisterNetEvent('miit:c:load:diving')
AddEventHandler('miit:c:load:diving', function()
    spawnobjects(World.Diving)
end)

--TriggerServerEvent('miit:s:load:diving')