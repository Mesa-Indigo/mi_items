
-- load grill
RegisterNetEvent('miit:c:table:cocaine')
AddEventHandler('miit:c:table:cocaine', function(table, ckn1, ckn2, ckn3)

    local cknops = {
        {
            name = 'cocaine',
            label = locale('tbl_act_drugp'),
            icon = 'fa-solid fa-flask-vial',
            canInteract = function(_, distance)
                return distance < 1.5
            end,
            onSelect = function()
                local data = { id = 3 , 1 }
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
                TriggerServerEvent('miit:s:table:clean', table, { ckn1, ckn2, ckn3 })
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
        local offset_m3 = GetOffsetFromEntityInWorldCoords(table, -0.55, 0.0, 0.0)
        local heading = GetEntityHeading(table)

        ckn1.obj = CreateObject(ckn1.model, offset_m1.x,
        offset_m1.y, offset_m1.z, true, false, false)
        SetEntityHeading(ckn1.obj, heading+0)
        PlaceObjectOnGroundProperly(ckn1.obj)
        FreezeEntityPosition(ckn1.obj, true)
        SetEntityCollision(ckn1.obj, true, true)

        ckn2.obj = CreateObject(ckn2.model, offset_m2.x,
        offset_m2.y, offset_m2.z, true, false, false)
        SetEntityHeading(ckn2.obj, heading-20)
        PlaceObjectOnGroundProperly(ckn2.obj)
        FreezeEntityPosition(ckn2.obj, true)
        SetEntityCollision(ckn2.obj, true, true)

        ckn3.obj = CreateObject(ckn3.model, offset_m3.x,
        offset_m3.y, offset_m3.z, true, false, false)
        SetEntityHeading(ckn3.obj, heading+10)
        PlaceObjectOnGroundProperly(ckn3.obj)
        FreezeEntityPosition(ckn3.obj, true)
        SetEntityCollision(ckn3.obj, true, true)

        Target:addLocalEntity(ckn1.obj, cknops)
    end
end)