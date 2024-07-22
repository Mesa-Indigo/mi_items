local fire = {
    obj = nil, model = lib.requestModel('prop_beach_fire'),
}

local fireops = {
    {
        name = 'warm',
        label = 'Warm up',
        icon = 'fa-solid fa-heart',
        canInteract = function(_, distance)
            return distance < 2.2
        end,
        onSelect = function()
            -- open tent stash
            --lib.callback.await('miit:table:patriot_beer:add')
        end
    },
    {
        name = 'douse',
        label = 'Douse fire',
        icon = 'fa-solid fa-fill-drip',
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

--[[
WIP

RegisterCommand('cfire', function()
    local player = cache.ped
    local offset = GetOffsetFromEntityInWorldCoords(player, 0.0, 1.3, -1.6)
    local heading = GetEntityHeading(player)

    if lib.progressBar({
        duration = 5000,
        label = 'Starting Fire',
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
        fire.obj = CreateObject(fire.model, offset.x, offset.y, offset.z, true, false, false)
        SetEntityHeading(fire.obj, heading)
        --PlaceObjectOnGroundProperly(fire.obj)
        FreezeEntityPosition(fire.obj, true)
        SetEntityCollision(fire.obj, true, true)
        exports.ox_target:addLocalEntity(fire.obj, fireops)
    end
end, false)
]]