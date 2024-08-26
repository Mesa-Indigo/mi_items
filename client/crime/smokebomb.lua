
-- variables
local dict, anim = 'veh@driveby@first_person@bike@passenger@throw', 'drop_grenade'
local sdict, sanim = 'anim@heists@ornate_bank@thermal_charge', 'cover_eyes_intro'

local smokeeffect = function(coord)
    local smoke
    local fxdict, fxpartcle = "core", "exp_grd_bzgas_smoke"

    RequestNamedPtfxAsset(fxdict)
    while not HasNamedPtfxAssetLoaded(fxdict) do
        Citizen.Wait(0)
    end
    local a = 0
    while a < 1 do
        UseParticleFxAssetNextCall(fxdict)
        smoke = StartParticleFxLoopedAtCoord(fxpartcle, coord.x, coord.y, coord.z-0.8,
        0.0, 0.0, 0.0, 2.0, false, false, false, false)
        a = a + 1
        Citizen.Wait(750)
    end
    StopParticleFxLooped(smoke, true)
end

local visualeffects = function(effect, shake)
    SetTimecycleModifier("spectator6")
    AnimpostfxPlay(effect, 10000001, true)
    ShakeGameplayCam("DRUNK_SHAKE", shake)
end

local stun = function(ped)
    TaskPlayAnim(ped, sdict, sanim, 8.0, 8.0, -1, 49, 0, false, false, false)
    local playinganim = true
    if playinganim then
        TaskPlayAnim(ped, sdict, sanim, 8.0, 8.0, -1, 49, 0, false, false, false)
    else
        TaskPlayAnim(ped, sdict, sanim, 8.0, 8.0, -1, 49, 0, false, false, false)
    end
end

local stopeffects = function(ped)
    AnimpostfxStopAll()
    SetTimecycleModifierStrength(0.0)
    ShakeGameplayCam("DRUNK_SHAKE", 0.0)
    ClearPedTasksImmediately(ped)
end

-- smoke effect
RegisterNetEvent('miit:c:smokebomb')
AddEventHandler('miit:c:smokebomb', function()
    -- location
    local crd = GetEntityCoords(cache.ped)
    -- smoke fx
    smokeeffect(crd)
    -- apply visual effects to nearby players in radius
    -- exclude player who used item
    local zone = lib.getNearbyPlayers(crd, 1.5, false)
    -- because debug
    if Debug then
        lib.print.info(zone)
    end
    for _, char in pairs(zone) do
        -- visual effects
        lib.print.info(char.ped)
        --stun(char.ped)
        visualeffects('DefaultFlash', 0.6)
        Wait(2500)
        stopeffects(char.ped)
    end
end)


exports('smokebomb', function()
    if lib.progressBar({
        duration = 200, label = locale('itm_crm_smkbm'), useWhileDead = false,
        canCancel = true,
        disable = { car = true, move = false, combat = false },
        anim = {
            blendIn = 3.0, dict = dict,
            clip = anim, blendOut = 3.0,
        },
    }) then
        TriggerServerEvent('miit:s:smokebomb')
    end
end)