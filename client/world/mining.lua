local rocks = {
    'cs_x_rublrge', 'cs_x_rublrgd', 'cs_x_rublrga'
}

local vehicle = { model = 'bobcatxl', loc = vec4(2687.501, 2768.189, 37.585, 152.78) }

local foreman = {
    ped = nil, spawn = false, model = 's_m_y_construct_01',
    loc = vec4(2696.114, 2768.574, 37.877, 94.968),
}

local spawns = {
    [1] = vec3(2951.349, 2732.997, 44.641), [2] = vec3(2974.869, 2781.313, 38.825),
    [3] = vec3(2945.104, 2772.254, 39.206), [4] = vec3(2927.815, 2799.937, 41.329),
    [5] = vec3(3025.864, 2764.761, 55.415), [6] = vec3(2952.192, 2699.734, 54.939),
    [7] = vec3(3054.195, 2729.955, 63.930), [8] = vec3(3025.157, 2877.916, 85.523),
    [9] = vec3(3025.941, 2992.944, 72.004), [10] = vec3(2983.627, 2869.067, 61.114),
    [11] = vec3(3022.759, 3033.391, 90.390), [12] = vec3(2966.989, 2802.650, 41.408)
}

local minerock = function(data)
    if lib.progressBar({
        duration = 5000, label = 'Mining Rock',
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
            pos = vec3(0.0, -0.20, -0.10),
            rot = vec3(80.0, -20.0, 175.0)
        },
    }) then
        local tx2 = { id = 'fix_complete', title = "Engine Repaired",
        description = 'did' } DoNotif(tx2, Cor)

    else
        local tx3 = { id = 'fix_complete', title = "Engine Repaired",
        description = 'did' }
        DoNotif(tx3, War)
    end
end

local options = {
    {
        name = 'mining', icon = 'fa-solid fa-hammer',
        label = locale('side_obtn_rock'),
        --items = 'tirekit',
        canInteract = function(_, distance)
            return distance < 2.0
        end,
        onSelect = function(data)
            local object = data.entity
            if Debug then print('Rock: '..object) end
            minerock(object)
        end
    },
}

local testload = function(spawn)
    for _, obs in pairs(spawn) do
        local model = rocks[math.random(1, #rocks)]
        local head = math.random(1,360)
        local ob = CreateObject(model, obs.x, obs.y, obs.z, true, false, false)
        SetEntityHeading(ob, head)
        PlaceObjectOnGroundProperly(ob)
        FreezeEntityPosition(ob, true)
        SetEntityCollision(ob, true, true)
        exports.ox_target:addLocalEntity(ob, options)
    end
end

testload(spawns)