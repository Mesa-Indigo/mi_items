
-- variables
local dict, anim = 'veh@driveby@first_person@bike@passenger@throw', 'drop_grenade'

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

-- smoke effect
RegisterNetEvent('miit:c:smokebomb')
AddEventHandler('miit:c:smokebomb', function()
    -- location
    local crd = GetEntityCoords(cache.ped)
    -- smoke effect
    smokeeffect(crd)
    -- effect
    local zone = lib.getNearbyPlayers(crd, 3.0, false)
    lib.print.info(zone)
    if zone then
        SetTimecycleModifier("spectator6")
        AnimpostfxPlay('DefaultFlash', 10000001, true)
        ShakeGameplayCam("DRUNK_SHAKE", 0.8)
        Wait(2500)
        AnimpostfxStopAll()
        SetTimecycleModifierStrength(0.0)
        ShakeGameplayCam("DRUNK_SHAKE", 0.0)
    end
end)


RegisterCommand('smokebomb', function()
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
end, false)