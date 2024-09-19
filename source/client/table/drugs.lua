
RegisterNetEvent('miit:c:table:weed')
AddEventHandler('miit:c:table:weed', function(table, cnb1, cnb2, cnb3)

    local cknops = {
        {
            name = 'drug_load',
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

RegisterNetEvent('miit:c:table:cocaine')
AddEventHandler('miit:c:table:cocaine', function(table, ckn1, ckn2, ckn3)

    local cknops = {
        {
            name = 'drug_load',
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

RegisterNetEvent('miit:c:table:meth')
AddEventHandler('miit:c:table:meth', function(table, meth1, meth2, meth3)

    local methops = {
        {
            name = 'drug_load',
            label = locale('tbl_act_drugp'),
            icon = 'fa-solid fa-flask-vial',
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
            label = locale('tbl_set_clean'),
            icon = 'fa-solid fa-broom',
            canInteract = function(_, distance)
                return distance < 1.5
            end,
            onSelect = function()
                Placed = false
                TriggerServerEvent('miit:s:table:clean', table, { meth1, meth2, meth3 })
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

        meth1.obj = CreateObject(meth1.model, offset_m1.x,
        offset_m1.y, offset_m1.z, true, false, false)
        SetEntityHeading(meth1.obj, heading+90)
        PlaceObjectOnGroundProperly(meth1.obj)
        FreezeEntityPosition(meth1.obj, true)
        SetEntityCollision(meth1.obj, true, true)

        meth2.obj = CreateObject(meth2.model, offset_m2.x,
        offset_m2.y, offset_m2.z, true, false, false)
        SetEntityHeading(meth2.obj, heading+45)
        PlaceObjectOnGroundProperly(meth2.obj)
        FreezeEntityPosition(meth2.obj, true)
        SetEntityCollision(meth2.obj, true, true)

        meth3.obj = CreateObject(meth3.model, offset_m3.x,
        offset_m3.y, offset_m3.z, true, false, false)
        SetEntityHeading(meth3.obj, heading-10)
        PlaceObjectOnGroundProperly(meth3.obj)
        FreezeEntityPosition(meth3.obj, true)
        SetEntityCollision(meth3.obj, true, true)

        Target:addLocalEntity(meth1.obj, methops)
    end
end)