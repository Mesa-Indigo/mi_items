
-- load grill
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