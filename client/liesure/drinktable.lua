local cooking = {
    table = { obj = nil, model = lib.requestModel('bkr_prop_weed_table_01b') },
    prop = { obj = nil, model = lib.requestModel('prop_bar_shots') },
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
            local data = { id = 3 , 1 }
        Inventory:openInventory('crafting', data)
        end
    },
}

local loadObjects = function()
    local offset_table = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 1.2, 0.0)
    local heading = GetEntityHeading(cache.ped)

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

RegisterCommand('dtable', function()
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
        Target:addLocalEntity(cooking.table.obj, tableops)
        Target:addLocalEntity(cooking.grill.obj, grillops)
    end
end, false)