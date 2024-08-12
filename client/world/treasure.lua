local tsrobj = {
    'xm_prop_x17_chest_closed',         -- small wooden chest
    'm23_1_prop_m31_crate_04a',         -- small metal chest
    'prop_suitcase_03b',                -- small suitcase 1
    'prop_suitcase_01b',                -- small suitcase 2
    'sm_prop_smug_crate_s_tobacco',     -- small smuggling case
    'ba_prop_battle_vinyl_case',        -- small vynl case
    'v_res_m_spanishbox',               -- small spanish case
    'prop_water_corpse_01',             -- female corpse
    'prop_water_corpse_02',             -- male corpse
}

local locations = {
    [1] = vec3(2657.511, -1430.931, -23.677),
    [2] = vec4(-1863.908, -1292.946, -36.148, 243.085),
    [3] = vec4(-2014.197, -1267.880, -117.879, 330.764),
    [4] = vec4(-2085.880, -851.030, -33.200, 19.471),
}

local vendors = {
    'u_m_m_partytarget', 'u_m_m_filmdirector', 'u_m_m_bikehire_01', 'u_f_y_mistress',
    's_m_y_baywatch_01', 's_f_y_baywatch_01'
}

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
        table.insert(rockList, object)
        rocks = rocks + 1
        -- debug print for console
        if Debug then
            lib.print.info('material:rock:created: '..object..' - '..rocks..' | '..ofx..', '..ofy)
        end
    end
end

RegisterNetEvent('miit:c:load:mining')
AddEventHandler('miit:c:load:mining', function()
    spawnobjects(World.Mining)
end)


Citizen.CreateThread(function()
    while rocks < World.Mining.count do
        TriggerServerEvent('miit:s:load:mining')
        Citizen.Wait(1000)
    end
end)