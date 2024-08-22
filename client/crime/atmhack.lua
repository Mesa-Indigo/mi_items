
-- variables
local atms = {
    'prop_atm_02', 'prop_fleeca_atm'
}

local anim = {
    dict = 'anim@heists@ornate_bank@hack',
    begn = 'hack_enter',
    hack = 'hack_loop',
    finl = 'hack_exit',
}

-- functions
local start = function()
    if lib.progressBar({
        duration = 5000, label = 'Repairing Engine',
        useWhileDead = false, canCancel = true,
        disable = {
            car = true, move = true
        },
        anim = {
            blendIn = 3.0, dict = anim.dict, flag = 01,
            clip = anim.begn, blendOut = 3.0,
        },
        prop = {
            {
                model = `prop_tool_adjspanner`,
                pos = vec3(0.07, 0.055, 0.01),
                rot = vec3(280.0, 10.0, 310.0)
            }
        },
    }) then
        print('weh')
    end
end

-- options
local atmops = {
    {
        name = 'vendor',
        label = 'talk to vendor',
        icon = 'fa-solid fa-hand-fist',
        canInteract = function(_, distance)
            return distance < 1.5
        end,
        onSelect = function(data)
            TriggerEvent('miit:crime:atm', data)
        end
    }
}

-- load target
Target:addModel(atms, atmops)

-- hacking process
RegisterNetEvent('miit:crime:atm')
AddEventHandler('miit:crime:atm', function(data)
    local crd = data.coords
    local hed = GetEntityHeading(data.entity)
    print(crd, hed)
    TaskGoToEntity(cache.ped, data.entity, 2000, 0.3, 1.0, 1073741824, 0)
    --TaskTurnPedToFaceEntity(cache.ped, data.entity, 3000)
end)