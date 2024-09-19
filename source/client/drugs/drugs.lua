local effects = {
    haze_red = 'BeastIntroScene', fuzzy_life = 'DeathFailNeutralIn', damn_clowns = 'DrugsTrevorClownsFight',
    fuckin_aliens = 'DrugsMichaelAliensFight', big_purp = 'InchPurple', wee_pinky = 'PPPink',
    nose_sniff = 'BikerFilter', trip_deez = 'DMT_flight', speed_boi = 'DefaultFlash'
}

SetDrugEffect = function(t, e)
    AnimpostfxStopAll() ShakeGameplayCam("DRUNK_SHAKE", 0.0)
    SetTimecycleModifierStrength(0.0)
    SetTimecycleModifier("spectator6") AnimpostfxPlay(e, 10000001, true)
    Wait(t)
    ShakeGameplayCam("DRUNK_SHAKE", 0.4)
    Wait(t/2)
    AnimpostfxStopAll() ShakeGameplayCam("DRUNK_SHAKE", 0.0)
    SetTimecycleModifierStrength(0.0)
end

exports('sativa', function()
    if lib.progressBar({
        duration = 3000,
        label = 'Smoking',
        useWhileDead = false, allowFalling = true,
        allowRagdoll = false,
        allowCuffed = false, canCancel = true,
        disable = { car = false },
        anim = {
            scenario = 'WORLD_HUMAN_SMOKING_POT'
        },
    }) then
        SetDrugEffect(Item.Drug.time, effects.wee_pinky)
    end
end)

exports('roll_sativa', function()
    local result1 = exports.ox_inventory:Search('count', 'rollpaper')
    if result1 > 0 then
        lib.callback.await('miit:item:rem', cache.ped, 'rollpaper', 1)
        if lib.progressBar({
            duration = 3000,
            label = 'Rolling Joint',
            useWhileDead = false, allowFalling = true,
            allowRagdoll = false,
            allowCuffed = false, canCancel = true,
            disable = { car = false },
            anim = {
                scenario = 'PROP_HUMAN_PARKING_METER'
            },
        }) then
            lib.callback.await('miit:item:satjoint')
        end
    end
end)

exports('indica', function()
    if lib.progressBar({
        duration = 3000,
        label = 'Smoking',
        useWhileDead = false, allowFalling = true,
        allowRagdoll = false,
        allowCuffed = false, canCancel = true,
        disable = { car = false },
        anim = {
            scenario = 'WORLD_HUMAN_SMOKING_POT'
        },
    }) then
        SetDrugEffect(Item.Drug.time, effects.wee_pinky)
    end
end)

exports('roll_sativa', function()
    local result1 = exports.ox_inventory:Search('count', 'rollpaper')
    if result1 > 0 then
        lib.callback.await('miit:item:rem', cache.ped, 'rollpaper', 1)
        if lib.progressBar({
            duration = 3000,
            label = 'Rolling Joint',
            useWhileDead = false, allowFalling = true,
            allowRagdoll = false,
            allowCuffed = false, canCancel = true,
            disable = { car = false },
            anim = {
                scenario = 'PROP_HUMAN_PARKING_METER'
            },
        }) then
            lib.callback.await('miit:item:indjoint')
        end
    end
end)

exports('hybrid', function()
    if lib.progressBar({
        duration = 3000,
        label = 'Smoking',
        useWhileDead = false, allowFalling = true,
        allowRagdoll = false,
        allowCuffed = false, canCancel = true,
        disable = { car = false },
        anim = {
            scenario = 'WORLD_HUMAN_SMOKING_POT'
        },
    }) then
        SetDrugEffect(Item.Drug.time, effects.wee_pinky)
    end
end)

exports('roll_sativa', function()
    local result1 = exports.ox_inventory:Search('count', 'rollpaper')
    if result1 > 0 then
        lib.callback.await('miit:item:rem', cache.ped, 'rollpaper', 1)
        if lib.progressBar({
            duration = 3000,
            label = 'Rolling Joint',
            useWhileDead = false, allowFalling = true,
            allowRagdoll = false,
            allowCuffed = false, canCancel = true,
            disable = { car = false },
            anim = {
                scenario = 'PROP_HUMAN_PARKING_METER'
            },
        }) then
            lib.callback.await('miit:item:hybjoint')
        end
    end
end)

exports('cocaine', function()
    if lib.progressBar({
        duration = 3000,
        label = 'Smoking',
        useWhileDead = false, allowFalling = true,
        allowRagdoll = false,
        allowCuffed = false, canCancel = true,
        disable = { car = false },
        anim = {
            scenario = 'WORLD_HUMAN_DRUG_DEALER'
        },
    }) then
        SetDrugEffect(Item.Drug.time, effects.wee_pinky)
    end
end)

exports('meth', function()
    if lib.progressBar({
        duration = 3000,
        label = 'Smoking',
        useWhileDead = false, allowFalling = true,
        allowRagdoll = false,
        allowCuffed = false, canCancel = true,
        disable = { car = false },
        anim = {
            scenario = 'WORLD_HUMAN_DRUG_DEALER'
        },
    }) then
        SetDrugEffect(Item.Drug.time, effects.wee_pinky)
    end
end)