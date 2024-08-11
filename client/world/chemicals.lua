local barrelList = {}
local barrels = 0

local model = 'xm3_prop_xm3_barrel_01a'

local chemops = {
    {
        name = 'give_chems',
        label = 'Collect Chemicals',
        icon = 'fa-solid fa-flask-vial',
        canInteract = function(_, distance)
            return distance < 1.2
        end,
        onSelect = function(data)
            local object = data.entity
            lib.print.info('collect: '..object)
            
        end
    },
    {
        name = 'dest_chems',
        label = 'Destroy Chemicals',
        icon = 'fa-solid fa-trash',
        canInteract = function(_, distance)
            return distance < 1.2
        end,
        onSelect = function(data)
            local object = data.entity
            lib.print.info('collect: '..object)
            DeleteObject(object)
            barrels = barrels - 1
        end
    },
}

local spawnchems = function()
    -- spawn location
    local spawn = World.Chemicals.spawn
    -- while loop to ensure limit met
    while barrels < World.Chemicals.count do
        Wait(World.Chemicals.timer)
        local ofcd = World.Chemicals.space
        -- offset math for locations
        local ofx = spawn+math.random(ofcd.x.min, ofcd.x.max)
        local ofy = spawn+math.random(-50, 50)
        -- creation of objects
        lib.requestModel(model, 500)
        local object = CreateObject(model, ofx.x, ofy.y, spawn.z+0.5, true, true, false)
        local head = math.random(45,235)
        -- set object physics
        SetObject(object, head)
        -- set rotation
        local tilt = math.random(5, 75)
        SetEntityRotation(object, 0.0, tilt, 0.0, 2, true)
        -- set target
        Target:addLocalEntity(object, chemops)
        -- insert object into list
        table.insert(barrelList, object)
        barrels = barrels + 1
        -- debug print for console
        lib.print.info('chem:barrel:created: '..object..' - '..barrels..' | '..ofx..', '..ofy)
    end
end

spawnchems()

--[[
Citizen.CreateThread(function()
    while barrels <= 10 do
        spawnchems()
        Citizen.Wait(1000)
    end
end)
]]