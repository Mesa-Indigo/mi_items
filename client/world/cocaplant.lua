local coca, model = 0, World.Cocaplant.model
local cocaList = {}


local progress = function(object)
    if lib.progressBar({
        duration = World.Chemicals.duration, label = locale('side_obtng_ccne'),
        useWhileDead = false, canCancel = true,
        disable = {
            car = true, move = true
        },
        anim = { scenario = 'CODE_HUMAN_MEDIC_TEND_TO_DEAD' },
    }) then
        Wait(250)
        DeleteObject(object)
        coca = coca - 1
        lib.callback.await('miit:give:cocaleaf:reward')
    end
end

local weedops = {
    {
        name = 'give_coca',
        label = locale('side_obtn_ccne'),
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

local spawnobjects = function(data)
    -- spawn location
    -- while loop to ensure limit met
    while coca < data.count do
        Wait(data.timer)
        local ofcd = data.space
        -- offset math for locations
        local ofx = data.spawn+math.random(ofcd.x.min, ofcd.x.max)
        local ofy = data.spawn+math.random(-50, 50)
        -- creation of objects
        lib.requestModel(model, 1000)
        local object = CreateObject(model, ofx.x, ofy.y, data.spawn.z, true, true, false)
        local head = math.random(45,235)
        -- set object physics
        SetObject(object, head)
        -- set target
        Target:addLocalEntity(object, weedops)
        -- insert object into list
        table.insert(cocaList, object)
        coca = coca + 1
        -- debug print for console
        if Debug then
            lib.print.info('cocaplant:coca:created: '..coca..' - '..coca..' | '..ofx..', '..ofy)
        end
    end
end

RegisterNetEvent('miit:c:load:cocaplant')
AddEventHandler('miit:c:load:cocaplant', function()
    spawnobjects(World.Cocaplant)
end)

--TriggerServerEvent('miit:s:load:cocaplant')