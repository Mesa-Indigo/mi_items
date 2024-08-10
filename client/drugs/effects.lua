local ped = { obj = nil, spawn = false }
local models = { 's_m_m_movspace_01', 's_m_y_clown_01', 'ig_orleans', }

-- general drug effects
RegisterNetEvent('mi_items:drug:effects')
AddEventHandler('mi_items:drug:effects', function(effect, time, trip)
    DeletePed(ped.obj)
    AnimpostfxStopAll() ShakeGameplayCam("DRUNK_SHAKE", 0.0)
    SetTimecycleModifierStrength(0.0)
    -- initial hit
    SetTimecycleModifier("spectator6") AnimpostfxPlay(effect, 10000001, true)

    --start
    if trip then
        ShakeGameplayCam("DRUNK_SHAKE", 0.8)
        local choice = models[math.random(1, #models)] local model = lib.requestModel(choice)
        local crd, ofst, head = GetEntityCoords(cache.ped), math.random(4, 9), GetEntityHeading(cache.ped)
        ped.obj = CreatePed(1, model, crd.x+ofst, crd.y+ofst, crd.z-1, head-180, false, false)
        ped.spawn = true SetEntityInvincible(ped.obj, true)
        TaskGoToEntity(ped.obj, cache.ped, 10000, 3.5, 1.25, 1, 1)
    end
    Wait(time*1000)

    -- delete ped
    if trip then
        DeletePed(ped.obj)
        ClearPedTasks(ped.obj)
        ped.spawn = false
    end

    -- winding down
    ShakeGameplayCam("DRUNK_SHAKE", 0.4)
    Wait(time*1000/2)

    -- effect stops
    AnimpostfxStopAll() ShakeGameplayCam("DRUNK_SHAKE", 0.0)
    SetTimecycleModifierStrength(0.0)
end)