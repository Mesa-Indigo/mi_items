--[[    Variables   ]]--

-- armor level 1
exports('armor1', function()
    local player = cache.ped
    if true then
        if lib.progressBar({
            duration = Data.Armor.light.dur,
            label = 'Equipping Light Body Armor',
            useWhileDead = false, allowFalling = false, allowRagdoll = false,
            allowCuffed = false, canCancel = true, disable = { car = false },
            anim = {
                dict = 'clothingshirt', clip = 'try_shirt_positive_d', flag = 49,
                blendIn = 4.0, blendOut = 4.0, playbackRate = 0
            },
        }) then
            SetPlayerMaxArmour(player, 100)
			SetPedArmour(player, Data.Armor.light.amt)
        else
            return
        end
    end
end)

-- armor level 2
exports('armor2', function()
    local player = cache.ped
    if true then
        if lib.progressBar({
            duration = Data.Armor.medium.dur,
            label = 'Equipping Medium Body Armor',
            useWhileDead = false, allowFalling = false, allowRagdoll = false,
            allowCuffed = false, canCancel = true, disable = { car = false },
            anim = {
                dict = 'clothingshirt', clip = 'try_shirt_positive_d', flag = 49,
                blendIn = 4.0, blendOut = 4.0, playbackRate = 0
            },
        }) then
            SetPlayerMaxArmour(player, 100)
			SetPedArmour(player, Data.Armor.medium.amt)
        else
            return
        end
    end
end)

-- armor level 3
exports('armor3', function()
    local player = cache.ped
    if true then
        if lib.progressBar({
            duration = Data.Armor.heavy.dur,
            label = 'Equipping Heavy Body Armor',
            useWhileDead = false, allowFalling = false, allowRagdoll = false,
            allowCuffed = false, canCancel = true, disable = { car = false },
            anim = {
                dict = 'clothingshirt', clip = 'try_shirt_positive_d', flag = 49,
                blendIn = 4.0, blendOut = 4.0, playbackRate = 0
            },
        }) then
            SetPlayerMaxArmour(player, 100)
			SetPedArmour(player, Data.Armor.heavy.amt)
        else
            return
        end
    end
end)