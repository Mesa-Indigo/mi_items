RegisterNetEvent('miut:client:firework:small')
AddEventHandler('miut:client:firework:small', function(crds, obj)

    -- load anim dict
    local anim = lib.requestAnimDict('anim@mp_fireworks', 300)
    local ptfx = lib.requestNamedPtfxAsset('scr_indep_fireworks', 300)
    local efc = 'scr_indep_firework_trailburst'

    -- check to see if loaded
    while not HasAnimDictLoaded(anim) do
       Wait(10)
    end

    -- load particle effect
    if not HasNamedPtfxAssetLoaded(ptfx) then
        RequestNamedPtfxAsset(ptfx)
        while not HasNamedPtfxAssetLoaded(ptfx) do
        Wait(10)
        end
    end

    local times = Item.Fireworks.count

    Wait(Item.Fireworks.delay)
    repeat
        UseParticleFxAssetNextCall(ptfx)
        local part1 = StartNetworkedParticleFxNonLoopedAtCoord(
            efc, crds.x, crds.y, crds.z, 0.0, 0.0, 0.0, 1.0, false, false, false)
        times = times - 1
        Wait(2000)
    until(times == 0)
        DeleteObject(obj)
end)

exports('firework_s1', function()
    -- variables
    local crds = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 0.6, 0.0)
    local head = GetEntityHeading(cache.ped)
    -- spawn box
    local box = lib.callback('miut:s:spawn', false, function()
    end, crds, 'ind_prop_firework_03')
    -- set heading
    Cnt.SetObject(box, head)
    -- progress bar
    if lib.progressBar({
        duration = 5000,
        label = locale('itm_frwk_setp'),
        useWhileDead = false,
        canCancel = true,
        disable = { car = true, move = true },
        anim = { scenario = 'CODE_HUMAN_MEDIC_TEND_TO_DEAD' },
    })
    then
        -- if success, set off reaction
        if Debug then lib.print.info('firework obj planted') end
        TriggerEvent('miut:client:firework:small', crds, box)
        Wait(10000)
        DeleteObject(box)
    else
        -- if cancel, delete box w/ no reaction
        if Debug then lib.print.error('firework obj not planted') end
        DeleteObject(box)
    end
end)

exports('firework_s2', function()
    -- variables
    local crds = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 0.6, 0.0)
    local head = GetEntityHeading(cache.ped)
    -- spawn box
    local box = lib.callback('miut:s:spawn', false, function()
    end, crds, 'ind_prop_firework_04')
    -- set heading
    Cnt.SetObject(box, head)
    -- progress bar
    if lib.progressBar({
        duration = 5000,
        label = locale('itm_frwk_setp'),
        useWhileDead = false,
        canCancel = true,
        disable = { car = true, move = true },
        anim = { scenario = 'CODE_HUMAN_MEDIC_TEND_TO_DEAD' },
    })
    then
        -- if success, set off reaction
        if Debug then lib.print.info('firework obj planted') end
        TriggerEvent('miut:client:firework:small', crds, box)
        Wait(10000)
        DeleteObject(box)
    else
        -- if cancel, delete box w/ no reaction
        if Debug then lib.print.error('firework obj not planted') end
        DeleteObject(box)
    end
end)