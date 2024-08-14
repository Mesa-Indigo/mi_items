local table = { obj = nil, model = lib.requestModel('bkr_prop_weed_table_01b') }

--[[
    local data = { id = 3 , 1 }
    Inventory:openInventory('crafting', data)
]]

local cleanup = function()
    if lib.progressBar({
        duration = 5000,
        label = 'Cleaning Up Table',
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
        DeleteObject(table.obj)
    end
end

local tableops = {
    {
        name = 'cleanup',
        label = 'Clean up table',
        icon = 'fa-solid fa-broom',
        canInteract = function(_, distance)
            return distance < 1.5
        end,
        onSelect = function()
            cleanup()
        end
    },
}


local loadTable = function()
    local offset_table = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 1.2, 0.0)
    local heading = GetEntityHeading(cache.ped)

    table.obj = CreateObject(table.model, offset_table.x,
    offset_table.y, offset_table.z, true, false, false)
    SetEntityHeading(table.obj, heading)
    PlaceObjectOnGroundProperly(table.obj)
    FreezeEntityPosition(table.obj, true)
    SetEntityCollision(table.obj, true, true)
end

RegisterCommand('ctable', function()
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
        loadTable()
        Target:addLocalEntity(table.obj, tableops)
    end
end, false)