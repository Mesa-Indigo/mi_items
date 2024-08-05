local effects = {
    haze_red = 'BeastIntroScene', fuzzy_life = 'DeathFailNeutralIn', damn_clowns = 'DrugsTrevorClownsFight',
    fuckin_aliens = 'DrugsMichaelAliensFight', big_purp = 'InchPurple', wee_pinky = 'PPPink',
    nose_sniff = 'BikerFilter', trip_deez = 'DMT_flight', speed_boi = 'DefaultFlash'
}

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
        local drug = Consume.Drugs.cocaine
        TriggerEvent('mi_items:drug:effects', effects.nose_sniff, drug.duration, drug.trip)
    else
        return
    end
end)