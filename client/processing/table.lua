local table = { obj = nil, model = lib.requestModel('bkr_prop_weed_table_01b') }

local setup = {
    grill = { obj = nil, model = lib.requestModel('prop_bbq_2') },
    cool = { obj = nil, model = lib.requestModel('v_res_mchopboard') },
    pan = { obj = nil, model = lib.requestModel('v_ret_fh_fry02') },

    alc1 = { obj = nil, model = lib.requestModel('ng_proc_paper_news_globe') },
    alc2 = { obj = nil, model = lib.requestModel('prop_clubset') },
    alc3 = { obj = nil, model = lib.requestModel('prop_bar_caddy') },

    meth1 = { obj = nil, model = lib.requestModel('tr_prop_meth_smashedtray_02') },
    meth2 = { obj = nil, model = lib.requestModel('bkr_prop_meth_sacid') },
    meth3 = { obj = nil, model = lib.requestModel('tr_prop_meth_pseudoephedrine') },

    gun1 = { obj = nil, model = lib.requestModel('prop_tool_bluepnt') },
    gun2 = { obj = nil, model = lib.requestModel('prop_paint_spray01a') },
    gun3 = { obj = nil, model = lib.requestModel('h4_prop_h4_case_supp_01a') },

    crm1 = { obj = nil, model = lib.requestModel('m23_2_prop_m32_blueprt_01a') },
    crm2 = { obj = nil, model = lib.requestModel('m23_2_prop_m32_bag_weapons_01a') },
    crm3 = { obj = nil, model = lib.requestModel('prop_mp_drug_package') },

    ckn1 = { obj = nil, model = lib.requestModel('h4_prop_h4_coke_scale_02') },
    ckn2 = { obj = nil, model = lib.requestModel('bkr_prop_coke_cut_02') },
    ckn3 = { obj = nil, model = lib.requestModel('h4_prop_h4_coke_stack_01a') },

    cnb1 = { obj = nil, model = lib.requestModel('bkr_prop_weed_scales_01a') },
    cnb2 = { obj = nil, model = lib.requestModel('prop_weed_block_01') },
    cnb3 = { obj = nil, model = lib.requestModel('sf_prop_sf_weed_01_small_01a') },
}
--[[
    local data = { id = 3 , 1 }
    Inventory:openInventory('crafting', data)
]]

Placed = false

local tableops = {
    {
        name = 'clean',
        label = locale('tbl_set_clean'),
        icon = 'fa-solid fa-broom',
        canInteract = function(_, distance)
            return distance < 1.5 and Placed
        end,
        onSelect = function()
            Placed = false
            TriggerServerEvent('miit:s:table:clean', table.obj, {})
        end
    },

    {
        name = 'grill',
        label = locale('tbl_set_grill'),
        icon = 'fa-solid fa-fire-burner',
        items  = 'tkit_grill',
        canInteract = function(_, distance)
            return distance < 1.5 and not Placed
        end,
        onSelect = function()
            Placed = true
            lib.callback.await('miit:item:rem', cache.ped, 'tkit_grill', 1)
            TriggerServerEvent('miit:s:table:grill', table.obj, setup.grill, setup.cool, setup.pan)
        end
    },

    {
        name = 'drink',
        label = locale('tbl_set_drink'),
        icon = 'fa-solid fa-champagne-glasses',
        items  = 'tkit_alch',
        canInteract = function(_, distance)
            return distance < 1.5 and not Placed
        end,
        onSelect = function()
            Placed = true
            lib.callback.await('miit:item:rem', cache.ped, 'tkit_alch', 1)
            TriggerServerEvent('miit:s:table:drinks', table.obj, setup.alc1, setup.alc2, setup.alc3)
        end
    },

    {
        name = 'gunk',
        label = locale('tbl_set_wepns'),
        icon = 'fa-solid fa-gun',
        items  = 'tkit_weap',
        canInteract = function(_, distance)
            return distance < 1.5 and not Placed
        end,
        onSelect = function()
            Placed = true
            lib.callback.await('miit:item:rem', cache.ped, 'tkit_weap', 1)
            TriggerServerEvent('miit:s:table:weapon', table.obj, setup.gun1, setup.gun2, setup.gun3)
        end
    },

    {
        name = 'crime',
        label = locale('tbl_set_crime'),
        icon = 'fa-solid fa-mask',
        items  = 'tkit_crim',
        canInteract = function(_, distance)
            return distance < 1.5 and not Placed
        end,
        onSelect = function()
            Placed = true
            lib.callback.await('miit:item:rem', cache.ped, 'tkit_crim', 1)
            TriggerServerEvent('miit:s:table:crime', table.obj, setup.crm1, setup.crm2, setup.crm3)
        end
    },

    {
        name = 'weed',
        label = locale('tbl_set_weedk'),
        icon = 'fa-solid fa-flask-vial',
        items  = 'tkit_weed',
        canInteract = function(_, distance)
            return distance < 1.5 and not Placed
        end,
        onSelect = function()
            Placed = true
            lib.callback.await('miit:item:rem', cache.ped, 'tkit_weed', 1)
            TriggerServerEvent('miit:s:table:weed', table.obj, setup.cnb1, setup.cnb2, setup.cnb3)
        end
    },

    {
        name = 'coke',
        label = locale('tbl_set_cocak'),
        icon = 'fa-solid fa-flask-vial',
        items  = 'tkit_coke',
        canInteract = function(_, distance)
            return distance < 1.5 and not Placed
        end,
        onSelect = function()
            Placed = true
            lib.callback.await('miit:item:rem', cache.ped, 'tkit_coke', 1)
            TriggerServerEvent('miit:s:table:cocaine', table.obj, setup.ckn1, setup.ckn2, setup.ckn3)
        end
    },

    {
        name = 'meth',
        label = locale('tbl_set_methk'),
        icon = 'fa-solid fa-flask-vial',
        items  = 'tkit_meth',
        canInteract = function(_, distance)
            return distance < 1.5 and not Placed
        end,
        onSelect = function()
            Placed = true
            lib.callback.await('miit:item:rem', cache.ped, 'tkit_meth', 1)
            TriggerServerEvent('miit:s:table:meth', table.obj, setup.meth1, setup.meth2, setup.meth3)
        end
    },
}

RegisterNetEvent('miit:c:table:setup')
AddEventHandler('miit:c:table:setup', function()
    if lib.progressBar({
        duration = 5000,
        label = 'Setting Table',
        useWhileDead = false,
        canCancel = true,
        disable = {
            car = true,
            move = true
        },
        anim = {
            scenario = 'CODE_HUMAN_MEDIC_TEND_TO_DEAD',
        },
    }) then
        lib.callback.await('miit:item:rem', cache.ped, 'fold_table', 1)

        local offset_table = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 1.2, 0.0)
        local heading = GetEntityHeading(cache.ped)

        table.obj = CreateObject(table.model, offset_table.x,
        offset_table.y, offset_table.z, true, false, false)
        SetEntityHeading(table.obj, heading)
        PlaceObjectOnGroundProperly(table.obj)
        FreezeEntityPosition(table.obj, true)
        SetEntityCollision(table.obj, true, true)

        print(table.model)
        Target:addLocalEntity(table.obj, tableops)
    end
end)

RemoveOps = function()
    Target:removeLocalEntity(table.obj, tableops)
end

RegisterNetEvent('miit:c:table:clean')
AddEventHandler('miit:c:table:clean', function(obj, objects)
    if lib.progressBar({
        duration = 5000, label = 'Cleaning Up Table', useWhileDead = false,
        canCancel = true,
        disable = { car = true, move = true },
        anim = {
            blendIn = 3.0, dict = 'mini@repair',
            clip = 'fixing_a_player', blendOut = 3.0,
        },
    }) then
        for _, object in pairs(objects) do
            DeleteObject(object.obj)
        end
        Wait(150)
        DeleteObject(obj)
        lib.callback.await('miit:item:add', cache.ped, 'fold_table', 1)
    end
end)


exports('fold_table', function()
    TriggerServerEvent('miit:s:table:setup')
end)