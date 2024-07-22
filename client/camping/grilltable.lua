local cooking = {
    table = { obj = nil, model = lib.requestModel('prop_ven_market_table1') },
    grill = { obj = nil, model = lib.requestModel('prop_bbq_2') },
    cool = { obj = nil, model = lib.requestModel('prop_coolbox_01') },
}

local grillops = {
    {
        name = 'startgrill',
        label = 'Start Grilling',
        icon = 'fa-solid fa-fire-burner',
        canInteract = function(_, distance)
            return distance < 2.2
        end,
        onSelect = function()
            -- open grilling menu
            --lib.callback.await('miit:table:patriot_beer:add')
        end
    },
}

local coolops = {
    {
        name = 'opencool',
        label = 'Open Cooler',
        icon = 'fa-solid fa-box-open',
        canInteract = function(_, distance)
            return distance < 2.2
        end,
        onSelect = function()
            -- delete stash with items inside
            -- delete tent
            -- delete target
            --lib.callback.await('miit:table:stronzo_beer:add')
        end
    },
}

local tableops = {
    {
        name = 'opencool',
        label = 'Clean up',
        icon = 'fa-solid fa-box-archive',
        canInteract = function(_, distance)
            return distance < 2.2
        end,
        onSelect = function()
            -- delete cooler stash with items inside
            -- delete grill
            -- delete table
            -- delete targets
            --lib.callback.await('miit:table:stronzo_beer:add')
        end
    },
}

local loadObjects = function()
    local player = cache.ped
    local offset_table = GetOffsetFromEntityInWorldCoords(player, 0.0, 1.2, 0.0)
    local heading = GetEntityHeading(player)

    cooking.table.obj = CreateObject(cooking.table.model, offset_table.x,
    offset_table.y, offset_table.z, true, false, false)
    SetEntityHeading(cooking.table.obj, heading)
    PlaceObjectOnGroundProperly(cooking.table.obj)
    FreezeEntityPosition(cooking.table.obj, true)
    SetEntityCollision(cooking.table.obj, true, true)

    local offset_grill = GetOffsetFromEntityInWorldCoords(cooking.table.obj, 0.0, 0.1, 1.0)
    local offset_cool = GetOffsetFromEntityInWorldCoords(cooking.table.obj, 1.0, 0.0, 0.0)

    cooking.grill.obj = CreateObject(cooking.grill.model, offset_grill.x,
    offset_grill.y, offset_grill.z, true, false, false)
    SetEntityHeading(cooking.grill.obj, heading)
    PlaceObjectOnGroundProperly(cooking.grill.obj)
    FreezeEntityPosition(cooking.grill.obj, true)
    SetEntityCollision(cooking.grill.obj, true, true)

    cooking.cool.obj = CreateObject(cooking.cool.model, offset_cool.x,
    offset_cool.y, offset_cool.z, true, false, false)
    SetEntityHeading(cooking.cool.obj, heading)
    PlaceObjectOnGroundProperly(cooking.cool.obj)
    FreezeEntityPosition(cooking.cool.obj, true)
    SetEntityCollision(cooking.cool.obj, true, true)
end

RegisterCommand('ctable', function()
    if lib.progressBar({
        duration = 5000,
        label = 'Setting Tent',
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
        loadObjects()
        exports.ox_target:addLocalEntity(cooking.table.obj, tableops)
    end
end, false)