
local stylize = function(weapon)
    lib.registerContext({
        id = 'wpn_skin_menu',
        title = weapon.label,
        options = {
            {
                title = 'Default',
                icon = 'swatchbook', iconColor = '#A6A7AB',
                onSelect = function()
                    lib.callback.await('miit:weapon:tint', false, weapon, 0)
                end,
            },
            {
                title = 'Green',
                icon = 'swatchbook', iconColor = '#2F9E44',
                onSelect = function()
                    lib.callback.await('miit:weapon:tint', false, weapon, 1)
                end,
            },
            {
                title = 'Gold',
                icon = 'swatchbook', iconColor = '#FCC419',
                onSelect = function()
                    lib.callback.await('miit:weapon:tint', false, weapon, 2)
                end,
            },
            {
                title = 'Pink',
                icon = 'swatchbook', iconColor = '#F06595',
                onSelect = function()
                    lib.callback.await('miit:weapon:tint', false, weapon, 3)
                end,
            },
            {
                title = 'Tan',
                icon = 'swatchbook', iconColor = '#FFD8A8',
                onSelect = function()
                    lib.callback.await('miit:weapon:tint', false, weapon, 4)
                end,
            },
            {
                title = 'Blue',
                icon = 'swatchbook', iconColor = '#1C7ED6',
                onSelect = function()
                    lib.callback.await('miit:weapon:tint', false, weapon, 5)
                end,
            },
            {
                title = 'Orange',
                icon = 'swatchbook', iconColor = '#F76707',
                onSelect = function()
                    lib.callback.await('miit:weapon:tint', false, weapon, 6)
                end,
            },
            {
                title = 'Platinum',
                icon = 'swatchbook', iconColor = '#E9ECEF',
                onSelect = function()
                    lib.callback.await('miit:weapon:tint', false, weapon, 7)
                end,
            },
        }
    })
    lib.showContext('wpn_skin_menu')
end

RegisterCommand('gsmenu', function()
    local weapon = Inventory:getCurrentWeapon()
    lib.print.info(weapon)

    stylize(weapon)
end, false)

RegisterCommand('guntest', function()
    local weapon = Inventory:getCurrentWeapon()
    lib.print.info(weapon)

    lib.callback.await('miit:weapon:tint', false, weapon)
end, false)


-- load grill
RegisterNetEvent('miit:c:table:weapon')
AddEventHandler('miit:c:table:weapon', function(table, gun1, gun2, gun3)

    local gunops = {
        {
            name = 'gunc',
            label = locale('tbl_act_wepn1'),
            icon = 'fa-solid fa-swatchbook',
            canInteract = function(_, distance)
                return distance < 1.5
            end,
            onSelect = function()
                local weapon = Inventory:getCurrentWeapon()
                if weapon == nil then
                    print('need weapon')
                else
                    if lib.progressBar({
                        duration = 5000,
                        label = locale('tbl_act_wepn12'),
                        useWhileDead = false,
                        canCancel = false,
                        disable = {
                            car = true,
                            combat = false,
                            move = false
                        },
                        anim = {
                            scenario = 'PROP_HUMAN_PARKING_METER'
                        },
                    }) then
                        stylize(weapon)
                    end
                end
            end
        },
        {
            name = 'gunm',
            label = locale('tbl_act_wepn2'),
            icon = 'fa-solid fa-screwdriver-wrench',
            canInteract = function(_, distance)
                return distance < 1.5
            end,
            onSelect = function()
                local data = { id = 6 , 1 }
                Inventory:openInventory('crafting', data)
            end
        },
        {
            name = 'cleanup',
            label = locale('tbl_set_clean'),
            icon = 'fa-solid fa-broom',
            canInteract = function(_, distance)
                return distance < 1.5
            end,
            onSelect = function()
                Placed = false
                TriggerServerEvent('miit:s:table:clean', table, { gun1, gun2, gun3 })
            end
        },
    }

    if lib.progressBar({
        duration = 5000, label = 'Setting Up Weapon Toolkit', useWhileDead = false,
        canCancel = true,
        disable = { car = true, move = true },
        anim = {
            blendIn = 3.0, dict = 'mini@repair',
            clip = 'fixing_a_player', blendOut = 3.0,
        },
    }) then
        local offset_m1 = GetOffsetFromEntityInWorldCoords(table, 0.0, -0.1, 1.0)
        local offset_m2 = GetOffsetFromEntityInWorldCoords(table, 0.7, 0.0, 0.0)
        local offset_m3 = GetOffsetFromEntityInWorldCoords(table, -0.67, 0.0, 0.0)
        local heading = GetEntityHeading(table)

        gun1.obj = CreateObject(gun1.model, offset_m1.x,
        offset_m1.y, offset_m1.z, true, false, false)
        SetEntityHeading(gun1.obj, heading-90)
        PlaceObjectOnGroundProperly(gun1.obj)
        FreezeEntityPosition(gun1.obj, true)
        SetEntityCollision(gun1.obj, true, true)

        gun2.obj = CreateObject(gun2.model, offset_m2.x,
        offset_m2.y, offset_m2.z, true, false, false)
        SetEntityHeading(gun2.obj, heading+45)
        PlaceObjectOnGroundProperly(gun2.obj)
        FreezeEntityPosition(gun2.obj, true)
        SetEntityCollision(gun2.obj, true, true)

        gun3.obj = CreateObject(gun3.model, offset_m3.x,
        offset_m3.y, offset_m3.z, true, false, false)
        SetEntityHeading(gun3.obj, heading+45)
        PlaceObjectOnGroundProperly(gun3.obj)
        FreezeEntityPosition(gun3.obj, true)
        SetEntityCollision(gun3.obj, true, true)

        Target:addLocalEntity(gun1.obj, gunops)
    end
end)

RegisterNetEvent('miit:c:table:crime')
AddEventHandler('miit:c:table:crime', function(table, crm1, crm2, crm3)

    local crmops = {
        {
            name = 'crime',
            label = locale('tbl_act_crmac'),
            icon = 'fa-solid fa-eye-slash',
            canInteract = function(_, distance)
                return distance < 1.5
            end,
            onSelect = function()
                local data = { id = 7 , 1 }
                Inventory:openInventory('crafting', data)
            end
        },
        {
            name = 'cleanup',
            label = locale('tbl_set_clean'),
            icon = 'fa-solid fa-broom',
            canInteract = function(_, distance)
                return distance < 1.5
            end,
            onSelect = function()
                Placed = false
                TriggerServerEvent('miit:s:table:clean', table, { crm1, crm2, crm3 })
            end
        },
    }

    if lib.progressBar({
        duration = 5000, label = locale('tbl_set_tkit'), useWhileDead = false,
        canCancel = true,
        disable = { car = true, move = true },
        anim = {
            blendIn = 3.0, dict = 'mini@repair',
            clip = 'fixing_a_player', blendOut = 3.0,
        },
    }) then
        local offset_m1 = GetOffsetFromEntityInWorldCoords(table, 0.0, -0.1, 1.0)
        local offset_m2 = GetOffsetFromEntityInWorldCoords(table, 0.7, 0.0, 0.0)
        local offset_m3 = GetOffsetFromEntityInWorldCoords(table, -0.67, 0.0, 0.0)
        local heading = GetEntityHeading(table)

        crm1.obj = CreateObject(crm1.model, offset_m1.x,
        offset_m1.y, offset_m1.z, true, false, false)
        SetEntityHeading(crm1.obj, heading+90)
        PlaceObjectOnGroundProperly(crm1.obj)
        FreezeEntityPosition(crm1.obj, true)
        SetEntityCollision(crm1.obj, true, true)

        crm2.obj = CreateObject(crm2.model, offset_m2.x,
        offset_m2.y, offset_m2.z, true, false, false)
        SetEntityHeading(crm2.obj, heading+45)
        PlaceObjectOnGroundProperly(crm2.obj)
        FreezeEntityPosition(crm2.obj, true)
        SetEntityCollision(crm2.obj, true, true)

        crm3.obj = CreateObject(crm3.model, offset_m3.x,
        offset_m3.y, offset_m3.z, true, false, false)
        SetEntityHeading(crm3.obj, heading-10)
        PlaceObjectOnGroundProperly(crm3.obj)
        FreezeEntityPosition(crm3.obj, true)
        SetEntityCollision(crm3.obj, true, true)

        Target:addLocalEntity(crm1.obj, crmops)
    end
end)