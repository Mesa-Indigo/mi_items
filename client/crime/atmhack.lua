
-- variables
local atms = {
    'prop_atm_02', 'prop_fleeca_atm'
}

local anim = {
    dict = 'anim@heists@humane_labs@emp@hack_door',
    hack = 'hack_loop',
}

local disabled = false

-- options
local atmops = {
    {
        name = 'vendor',
        label = locale('itm_atm_hack'),
        icon = 'fa-solid fa-network-wired',
        items = 'hacktool_phone',
        canInteract = function(_, distance)
            return distance < 1.5 and not disabled
        end,
        onSelect = function(data)
            TriggerEvent('miit:crime:atm', data)
            disabled = true
            Wait(Item.ATM.wait)
            disabled = false
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
    if Debug then
        lib.print.info(crd, hed)
    end
    TaskGoToEntity(cache.ped, data.entity, 2000, 0.75, 1.0, 1073741824, 0)
    Wait(1000)
    local dur = math.random(Item.ATM.time.min, Item.ATM.time.max)
    if lib.progressBar({
        duration = dur, label = locale('itm_atm_hackg'),
        useWhileDead = false, canCancel = true,
        disable = {
            car = true, move = true
        },
        anim = {
            blendIn = 3.0, dict = anim.dict, flag = 01,
            clip = anim.hack, blendOut = 3.0,
        },
        prop = {
            {
                bone = 28422,
                model = 'prop_police_phone',
                pos = vec3(0.0, 0.0, 0.0301),
                rot = vec3(0.0, 0.0, 0.0)
            }
        },
    }) then
        local atm = Item.ATM.reward
        lib.callback.await('miit:give:atmhack:reward', atm.min, atm.max)
    end
end)