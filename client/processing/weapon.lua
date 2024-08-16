local stylize = function(weapon)

end

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
            label = 'Stylize Weapon',
            icon = 'fa-solid fa-fire-swatchbook',
            canInteract = function(_, distance)
                return distance < 1.5
            end,
            onSelect = function()
                
            end
        },
        {
            name = 'gunm',
            label = 'Create Attachments',
            icon = 'fa-solid fa-fire-screwdriver-wrench',
            canInteract = function(_, distance)
                return distance < 1.5
            end,
            onSelect = function()
                local data = { id = 2 , 1 }
                Inventory:openInventory('crafting', data)
            end
        },
        {
            name = 'cleanup',
            label = 'Clean up table',
            icon = 'fa-solid fa-broom',
            canInteract = function(_, distance)
                return distance < 1.5
            end,
            onSelect = function()
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