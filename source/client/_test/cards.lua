--[[


-- functions
local load = function()
    lib.registerContext({
        id = 'card_menu',
        title = 'ID Card',
        options = {
            {
                title = 'Photo',
                description = 'first / last name',
                icon = 'image-portrait',
                readOnly = true
            },
            {
                title = 'insert_name',
                description = 'General Information',
                icon = 'id-card',
                readOnly = true,
                metadata = {
                    { label = 'Gender', value = 'Male' },
                    { label = 'Blood Type', value = '-A' }
                },
            },
            {
                title = 'insert_home_info',
                description = 'Residency',
                icon = 'house-chimney',
                readOnly = true,
            },
        }
        })

    lib.showContext('card_menu')
end

-- show card
exports('card', function()
    
end)

RegisterCommand('idcard', function()
    if lib.progressBar({
        duration = 2000,
        label = locale('itm_card'),
        useWhileDead = false,
        canCancel = true,
        disable = {
            car = true,
            move = false,
            combat = true
        },
        anim = {
            dict = 'mp_common',
            clip = 'givetake1_a', flag = 49
        },
        prop = {
            bone = 57005,
            model = `alcaprop_id_card`,
            pos = vec3(0.14, 0.04, -0.02),
            rot = vec3(208.0, 6.0, 2.0)
        },
    }) then
        load()
    end
end, false)

]]