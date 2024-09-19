-- explosive bomb - comparative size to gas pump explosion
exports('bombbag_exp', function()
    local timer = false
    local defused = false
    local bombzone, bomb
    local model = lib.requestModel('tr_prop_tr_bag_bombs_01a')
    local crds = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 0.6, 0.0)
    local objcrds = crds
    local head = GetEntityHeading(cache.ped)

    if lib.progressBar({
        duration = 10000,
        label = 'Planting Bomb',
        useWhileDead = false,
        canCancel = true,
        disable = {
            car = true,
        },
        anim = {
            scenario = 'CODE_HUMAN_MEDIC_TEND_TO_DEAD',
        },
    }) then
        bomb = CreateObject(model, crds.x, crds.y, crds.z, true, false, false)
        SetEntityHeading(bomb, head)
        PlaceObjectOnGroundProperly(bomb)
        FreezeEntityPosition(bomb, true)
        SetEntityCollision(bomb, true, true)
        SetEntityAsMissionEntity(bomb, true, true)

        local input = lib.inputDialog(
        'Set Bomb Timer', {{type = 'slider', label = 'Timer',
        required = true, min = 1, max = 30 }})

        timer = true
        SetTimeout(input[1] * 10000, function()
            timer = false

            if not defused then
                AddExplosion(objcrds.x, objcrds.y, objcrds.z, 9, 100.0, true, false, 0.5)
                DeleteEntity(bomb)
                exports.ox_target:removeZone(bombzone)
            end
        end)
    end

    bombzone = exports.ox_target:addBoxZone({
        coords = vec3(objcrds.x, objcrds.y, objcrds.z-1),
        size = vec3(0.7, 0.5, 0.6),
        rotation = head,
        debug = Debug,
        options = {
            {
                name = 'disarmb1',
                icon = 'fa-solid fa-scissors',
                label = 'Disarm Bomb',
                onSelect = function()
                    defused = true
                    DeleteEntity(bomb)
                    exports.ox_target:removeZone(bombzone)
                end,
                canInteract = function(_, distance)
                    return distance < 2.0
                end
            }
        }
    })
end)