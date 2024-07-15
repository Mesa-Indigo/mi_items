RegisterNetEvent('miut:client:firework:small')
AddEventHandler('miut:client:firework:small', function(crds, obj)

    -- load anim dict
    local anim = lib.requestAnimDict('anim@mp_fireworks', 300)
    local ptfx = lib.requestNamedPtfxAsset('scr_indep_fireworks', 300)
    local efc = 'scr_indep_firework_trailburst'

    -- check to see if loaded
    while not HasAnimDictLoaded(anim) do
        Citizen.Wait(10)
    end

    -- load particle effect
    if not HasNamedPtfxAssetLoaded(ptfx) then
        RequestNamedPtfxAsset(ptfx)
        while not HasNamedPtfxAssetLoaded(ptfx) do
        Wait(10)
        end
    end

    local times = 5

    Citizen.Wait(10000)
    repeat
        UseParticleFxAssetNextCall("scr_indep_fireworks")
        local part1 = StartNetworkedParticleFxNonLoopedAtCoord(
            efc, crds.x, crds.y, crds.z, 0.0, 0.0, 0.0, 1.0, false, false, false)
        times = times - 1
        Citizen.Wait(2000)
    until(times == 0)
        DeleteObject(obj)
end)

exports('firew_small1', function()
    -- variables
    local textS = { id = 'f1', title = 'Firework Planted', desc = 'I dare you to stare into it' }
    local textE = { id = 'f0', title = 'Cancelled Action', desc = 'How lame' }
    local player = cache.ped
    local crds = GetOffsetFromEntityInWorldCoords(player, 0.0, 0.6, 0.0)
    local head = GetEntityHeading(player)
    -- spawn box
    local box = lib.callback('miut:server:spawn:obj', false, function()
    end, crds, 'ind_prop_firework_02')
    -- set heading
    SetEntityHeading(box, head)
    PlaceObjectOnGroundProperly(box)
    FreezeEntityPosition(box, true)
    SetEntityCollision(box, true, true)
    -- progress bar
    if lib.progressBar({
        duration = 5000,
        label = 'Setting up Firework',
        useWhileDead = false,
        canCancel = true,
        disable = { car = true, move = true },
        anim = { scenario = 'CODE_HUMAN_MEDIC_TEND_TO_DEAD' },
    })
    then
        -- if success, set off reaction
        if Debug then print('firework obj planted') end
        TriggerEvent('notif', textS, Cor )
        TriggerEvent('miut:client:firework:small', crds, box)
    else
        -- if cancel, delete box w/ no reaction
        if Debug then print('firework obj not planted') end
        TriggerEvent('notif', textE, Err )
        DeleteObject(box)
    end
end)