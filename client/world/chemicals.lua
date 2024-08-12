local barrels, model = 0, World.Chemicals.model
local barrelList = {}

local progress = function(object)
    if lib.progressBar({
        duration = World.Chemicals.duration, label = 'Examining Container',
        useWhileDead = false, canCancel = true,
        disable = {
            car = true, move = true
        },
        anim = { scenario = 'CODE_HUMAN_MEDIC_TEND_TO_DEAD' },
    }) then
        Wait(250)
        DeleteObject(object)
        barrels = barrels - 1
        lib.callback.await('miit:give:chemicals:reward')
    end
end

local attemp = function(object)
    TaskPlayAnim(cache.ped,'mini@repair','fixing_a_player',4.0,-4.0, 3500, 1, 1, true, true, true)
    local success = lib.skillCheck(
        {'easy', 'easy', 'medium' },
        {'q', 'w', 'e', 'r'}
    )
    if success then
        ClearPedTasksImmediately(cache.ped)
        progress(object)
    if not success then
        ClearPedTasksImmediately(cache.ped)
        end
    end
end

local chemops = {
    {
        name = 'give_chems',
        label = 'Attempt to Open',
        icon = 'fa-solid fa-hand-fist',
        canInteract = function(_, distance)
            return distance < 1.2
        end,
        onSelect = function(data)
            local object = data.entity
            attemp(object)
            if Debug then
            lib.print.info('collected: '..object) end
        end
    },
    {
        name = 'open_chems',
        label = 'Pry Open',
        icon = 'fa-solid fa-hammer',
        canInteract = function(_, distance)
            return distance < 1.2
        end,
        onSelect = function(data)
            local object = data.entity
            -- function to obtain chemical
            if Debug then
            lib.print.info('collected: '..object) end
        end
    }
}

local spawnobjects = function(data)
    -- spawn location
    local spawn = data.spawn
    -- while loop to ensure limit met
    while barrels < data.count do
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
        Target:addLocalEntity(object, chemops)
        -- insert object into list
        table.insert(barrelList, object)
        barrels = barrels + 1
        -- debug print for console
        if Debug then
            lib.print.info('chemical:barrel:created: '..object..' - '..barrels..' | '..ofx..', '..ofy)
        end
    end
end

RegisterNetEvent('miit:c:load:chemicals')
AddEventHandler('miit:c:load:chemicals', function()
    spawnobjects(World.Chemicals)
end)


Citizen.CreateThread(function()
    while barrels < World.Chemicals.count do
        TriggerServerEvent('miit:s:load:chemicals')
        Citizen.Wait(1000)
    end
end)