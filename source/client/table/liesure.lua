
-- load grill
RegisterNetEvent('miit:c:table:grill')
AddEventHandler('miit:c:table:grill', function(table, grill, cooler, pan)

    local grillops = {
        {
            name = 'grill',
            label = locale('tbl_act_grill'),
            icon = 'fa-solid fa-fire-burner',
            canInteract = function(_, distance)
                return distance < 1.5
            end,
            onSelect = function()
                local data = { id = 4 , 1 }
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
                TriggerServerEvent('miit:s:table:clean', table, { grill, cooler, pan })
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
        local offset_grill = GetOffsetFromEntityInWorldCoords(table, 0.0, 0.1, 1.0)
        local offset_cool = GetOffsetFromEntityInWorldCoords(table, 0.7, 0.0, 0.0)
        local offset_pan = GetOffsetFromEntityInWorldCoords(table, -0.6, 0.0, 0.0)
        local heading = GetEntityHeading(table)

        grill.obj = CreateObject(grill.model, offset_grill.x,
        offset_grill.y, offset_grill.z, true, false, false)
        SetEntityHeading(grill.obj, heading)
        PlaceObjectOnGroundProperly(grill.obj)
        FreezeEntityPosition(grill.obj, true)
        SetEntityCollision(grill.obj, true, true)

        cooler.obj = CreateObject(cooler.model, offset_cool.x,
        offset_cool.y, offset_cool.z, true, false, false)
        SetEntityHeading(cooler.obj, heading+45)
        PlaceObjectOnGroundProperly(cooler.obj)
        FreezeEntityPosition(cooler.obj, true)
        SetEntityCollision(cooler.obj, true, true)

        pan.obj = CreateObject(pan.model, offset_pan.x,
        offset_pan.y, offset_pan.z, true, false, false)
        SetEntityHeading(pan.obj, heading-45)
        PlaceObjectOnGroundProperly(pan.obj)
        FreezeEntityPosition(pan.obj, true)
        SetEntityCollision(pan.obj, true, true)
        
        Target:addLocalEntity(grill.obj, grillops)
    end
end)


-- load grill
RegisterNetEvent('miit:c:table:drinks')
AddEventHandler('miit:c:table:drinks', function(table, alc1, alc2, alc3)

    local drinkops = {
        {
            name = 'drink',
            label = locale('tbl_act_drink'),
            icon = 'fa-solid fa-champagne-glasses',
            canInteract = function(_, distance)
                return distance < 1.5
            end,
            onSelect = function()
                local data = { id = 4 , 1 }
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
                TriggerServerEvent('miit:s:table:clean', table, { alc1, alc2, alc3 })
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
        local offset1 = GetOffsetFromEntityInWorldCoords(table, 0.0, -0.1, 1.05)
        local offset2 = GetOffsetFromEntityInWorldCoords(table, 0.8, 0.0, 0.0)
        local offset3 = GetOffsetFromEntityInWorldCoords(table, -0.8, 0.0, 0.0)
        local heading = GetEntityHeading(table)

        alc1.obj = CreateObject(alc1.model, offset1.x,
        offset1.y, offset1.z, true, false, false)
        SetEntityHeading(alc1.obj, heading)
        PlaceObjectOnGroundProperly(alc1.obj)
        FreezeEntityPosition(alc1.obj, true)
        SetEntityCollision(alc1.obj, true, true)

        alc2.obj = CreateObject(alc2.model, offset2.x,
        offset2.y, offset2.z, true, false, false)
        SetEntityHeading(alc2.obj, heading+180)
        PlaceObjectOnGroundProperly(alc2.obj)
        FreezeEntityPosition(alc2.obj, true)
        SetEntityCollision(alc2.obj, true, true)

        alc3.obj = CreateObject(alc3.model, offset3.x,
        offset3.y, offset3.z, true, false, false)
        SetEntityHeading(alc3.obj, heading+90)
        PlaceObjectOnGroundProperly(alc3.obj)
        FreezeEntityPosition(alc3.obj, true)
        SetEntityCollision(alc3.obj, true, true)
        
        Target:addLocalEntity(alc1.obj, drinkops)
    end
end)