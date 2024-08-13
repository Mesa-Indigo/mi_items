-- timed diving kit
-- unlimited diving kit
local maskmodel =
lib.requestModel('reh_prop_reh_rebreather_01a', 300)
local mask
local equip = { mask = 0, used = false }

equip.mask, equip.tank, equip.used = 0, 0, false

local systemon = function(player)
    while not HasModelLoaded(maskmodel) do
        Wait(10)
    end
    if not equip.used then
        if lib.progressBar({
            duration = Item.Diving.rebreather.time,
            label = locale('eq_rebreather'),
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

            mask = CreateObject(maskmodel, 1.0, 1.0, 1.0, true, true, false)
            local bone2 = GetPedBoneIndex(cache.ped, 12844)
            AttachEntityToEntity(mask, cache.ped, bone2, -0.07, 0.13, 0.0,
            180.0, 90.0, 0.0, true, true, false, false, 2, true)
            equip.mask = mask

            SetEnableScuba(cache.ped, false)
            SetPedMaxTimeUnderwater(cache.ped, Item.Diving.rebreather.duration)
            equip.used = true
        end
    end
end

local systemoff = function(player)
    if equip.used then
        if lib.progressBar({
            duration = Item.Diving.rebreather.time,
            label = locale('rm_rebreather'),
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

            DetachEntity(equip.mask, false, true)
            DeleteEntity(equip.mask)
            equip.mask = 0

            SetEnableScuba(cache.ped, false)
            SetPedMaxTimeUnderwater(cache.ped, 20.00)
            equip.used = false
        end
    end
end

exports('rebreather', function()
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