exports('clothbag', function()
    -- progress for changing
    if lib.progressBar({
        duration = 5000,
        label = locale('itm_clth_menu'),
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
        -- bring outfit menu
    TriggerEvent('miit:c:clothing:outfitbag')
    end
end)