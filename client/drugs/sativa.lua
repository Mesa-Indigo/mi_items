local effects = {
    haze_red = 'BeastIntroScene', fuzzy_life = 'DeathFailNeutralIn', damn_clowns = 'DrugsTrevorClownsFight',
    fuckin_aliens = 'DrugsMichaelAliensFight', big_purp = 'InchPurple', wee_pinky = 'PPPink',
    nose_sniff = 'BikerFilter', trip_deez = 'DMT_flight', speed_boi = 'DefaultFlash'
}

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
        local drug = Consume.Drugs.sativa
        TriggerEvent('mi_items:drug:effects', effects.damn_clowns, drug.duration, drug.trip)
    else
        return
    end
end)

exports('roll_sativa', function()
    local paper = lib.callback.await('miit:item:check', 'pc_sativa')
    if paper >= 1 then 
        if lib.progressBar({
            duration = 3000,
            label = 'Rolling Joint',
            useWhileDead = false, allowFalling = true,
            allowRagdoll = false,
            allowCuffed = false, canCancel = true,
            disable = { car = false },
            anim = {
                scenario = 'WORLD_HUMAN_SMOKING_POT'
            },
        }) then
            -- give item 
        else
            return
        end
    end
    
end)