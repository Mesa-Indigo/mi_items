
-- load grill
RegisterNetEvent('miit:c:table:weed')
AddEventHandler('miit:c:table:weed', function(table, cnb1, cnb2, cnb3)

    local cknops = {
        {
            name = 'cocaine',
            label = locale('tbl_act_drugp'),
            icon = 'fa-solid fa-flask-vial',
            canInteract = function(_, distance)
                return distance < 1.5
            end,
            onSelect = function()
                local data = { id = 1 , 1 }
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
                TriggerServerEvent('miit:s:table:clean', table, { cnb1, cnb2, cnb3 })
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
        local offset_m2 = GetOffsetFromEntityInWorldCoords(table, 0.65, 0.0, 0.0)
        local offset_m3 = GetOffsetFromEntityInWorldCoords(table, -0.65, 0.0, 0.0)
        local heading = GetEntityHeading(table)

        cnb1.obj = CreateObject(cnb1.model, offset_m1.x,
        offset_m1.y, offset_m1.z, true, false, false)
        SetEntityHeading(cnb1.obj, heading+90)
        PlaceObjectOnGroundProperly(cnb1.obj)
        FreezeEntityPosition(cnb1.obj, true)
        SetEntityCollision(cnb1.obj, true, true)

        cnb2.obj = CreateObject(cnb2.model, offset_m2.x,
        offset_m2.y, offset_m2.z, true, false, false)
        SetEntityHeading(cnb2.obj, heading-20)
        PlaceObjectOnGroundProperly(cnb2.obj)
        FreezeEntityPosition(cnb2.obj, true)
        SetEntityCollision(cnb2.obj, true, true)

        cnb3.obj = CreateObject(cnb3.model, offset_m3.x,
        offset_m3.y, offset_m3.z, true, false, false)
        SetEntityHeading(cnb3.obj, heading+10)
        PlaceObjectOnGroundProperly(cnb3.obj)
        FreezeEntityPosition(cnb3.obj, true)
        SetEntityCollision(cnb3.obj, true, true)

        Target:addLocalEntity(cnb1.obj, cknops)
    end
end)