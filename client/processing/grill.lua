
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