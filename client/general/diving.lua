-- unlimited diving kit
local maskmodel, tankmodel = 
lib.requestModel('p_d_scuba_mask_s', 300),
lib.requestModel('p_s_scuba_tank_s', 300)
local mask, tank
local equip = { mask = 0, tank = 0, used = false }

equip.mask, equip.tank, equip.used = 0, 0, false

local systemon = function(player)
    while not HasModelLoaded(maskmodel)
    and not HasModelLoaded(tankmodel) do
        Wait(10)
    end
    if not equip.used then
        if lib.progressBar({
            duration = 5000,
            label = 'Equipping Dive Gear',
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
                move = true,
            },
            anim = {
                dict = 'clothingshirt',
                clip = 'try_shirt_positive_d'
            },
        }) then
            tank = CreateObject(tankmodel, 1.0, 1.0, 1.0, true, true, false)
            local bone1 = GetPedBoneIndex(cache.ped, 24818)
            AttachEntityToEntity(tank, cache.ped, bone1, -0.25, -0.25, 0.0,
            180.0, 90.0, 0.0, true, true, false, false, 2, true)
            equip.tank = tank
    
            mask = CreateObject(maskmodel, 1.0, 1.0, 1.0, true, true, false)
            local bone2 = GetPedBoneIndex(cache.ped, 12844)
            AttachEntityToEntity(mask, cache.ped, bone2, 0.0, 0.0, 0.0,
            180.0, 90.0, 0.0, true, true, false, false, 2, true)
            equip.mask = mask
    
            SetEnableScuba(cache.ped, true)
            SetPedMaxTimeUnderwater(cache.ped, Item.Diving.divekit.duration)
            equip.used = true
            SetModelAsNoLongerNeeded(maskmodel) SetModelAsNoLongerNeeded(tankmodel)
        end
    end
end

local systemoff = function(player)
    if equip.used then
        if lib.progressBar({
            duration = 5000,
            label = 'Removing Dive Gear',
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
                move = true,
            },
            anim = {
                dict = 'clothingshirt',
                clip = 'try_shirt_positive_d'
            },
        }) then
            DetachEntity(equip.tank, false, true)
            DeleteEntity(equip.tank)
            equip.tank = 0

            DetachEntity(equip.mask, false, true)
            DeleteEntity(equip.mask)
            equip.mask = 0

            SetEnableScuba(cache.ped, false)
            SetPedMaxTimeUnderwater(cache.ped, 20.00)
            equip.used = false
        end
    end
end

exports('divegear', function()
    if Item.Diving.restrict then
        if not equip.used then
            if IsPedSwimming(cache.ped) or IsPedSwimmingUnderWater(cache.ped) then
                -- notify
            else
                systemon(cache.ped)
            end
        elseif equip.used then
            if IsPedSwimming(cache.ped) or IsPedSwimmingUnderWater(cache.ped) then
                -- notify
            else
                systemoff(cache.ped)
            end
        else return end
    elseif not Item.Diving.restrict then
        if not equip.used then
            systemon(cache.ped)
        elseif equip.used then
            systemoff(cache.ped)
        end
    else return end
end)