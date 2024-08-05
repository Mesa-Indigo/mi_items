local effects = {
    haze_red = 'BeastIntroScene', fuzzy_life = 'DeathFailNeutralIn', damn_clowns = 'DrugsTrevorClownsFight',
    fuckin_aliens = 'DrugsMichaelAliensFight', big_purp = 'InchPurple', wee_pinky = 'PPPink',
    nose_sniff = 'BikerFilter', trip_deez = 'DMT_flight', speed_boi = 'DefaultFlash'
}

exports('molly', function()
    if lib.progressBar({
        duration = 3000,
        label = 'Poppin a Pill',
        useWhileDead = false, allowFalling = true,
        allowRagdoll = false,
        allowCuffed = false, canCancel = true,
        disable = { car = false },
        anim = {
            dict = 'mp_suicide', clip = 'pill', flag = 49,
            blendIn = 4.0, blendOut = 4.0, playbackRate = 0
        },
    }) then
        local drug = Consume.Drugs.molly
        TriggerEvent('mi_items:drug:effects', effects.trip_deez, drug.duration, drug.trip)
    else
        return
    end
end)