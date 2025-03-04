--[[    Variables   ]]--

-- armor level 1
exports('armor1', function()
    local armor = Item.Armor.light
    if true then
        if lib.progressBar({
            duration = armor.time*1000,
            label = locale('eq_armor'),
            useWhileDead = false, allowFalling = false, allowRagdoll = false,
            allowCuffed = false, canCancel = true, disable = { car = false },
            anim = {
                dict = 'clothingshirt', clip = 'try_shirt_positive_d', flag = 49,
                blendIn = 4.0, blendOut = 4.0, playbackRate = 0
            },
        }) then
            lib.print.info('armored')
            SetPlayerMaxArmour(cache.ped, 100)
			SetPedArmour(cache.ped, armor.amt)
        else
            return
        end
    end
end)

-- armor level 2
exports('armor2', function()
    local armor = Item.Armor.medium
    if true then
        if lib.progressBar({
            duration = armor.time*1000,
            label = locale('eq_armor'),
            useWhileDead = false, allowFalling = false, allowRagdoll = false,
            allowCuffed = false, canCancel = true, disable = { car = false },
            anim = {
                dict = 'clothingshirt', clip = 'try_shirt_positive_d', flag = 49,
                blendIn = 4.0, blendOut = 4.0, playbackRate = 0
            },
        }) then
            SetPlayerMaxArmour(cache.ped, 100)
			SetPedArmour(cache.ped, armor.amt)
        else
            return
        end
    end
end)

-- armor level 3
exports('armor3', function()
    local armor = Item.Armor.heavy
    if true then
        if lib.progressBar({
            duration = armor.time*1000,
            label = locale('eq_armor'),
            useWhileDead = false, allowFalling = false, allowRagdoll = false,
            allowCuffed = false, canCancel = true, disable = { car = false },
            anim = {
                dict = 'clothingshirt', clip = 'try_shirt_positive_d', flag = 49,
                blendIn = 4.0, blendOut = 4.0, playbackRate = 0
            },
        }) then
            SetPlayerMaxArmour(cache.ped, 100)
			SetPedArmour(cache.ped, armor.amt)
        else
            return
        end
    end
end)