exports('cigarette', function()
    local maximum = GetEntityMaxHealth(cache.ped)
	local current = GetEntityHealth(cache.ped)
    if lib.progressBar({
        duration = 12000,
        label = 'Smoking Cigarette',
        useWhileDead = false, allowFalling = true, allowRagdoll = false,
        allowCuffed = false, canCancel = true, disable = { car = false },
        anim = {
            dict = 'amb@world_human_aa_smoke@male@idle_a', clip = 'idle_c', flag = 49,
            blendIn = 4.0, blendOut = 4.0, playbackRate = 0
        },
        prop = {
            model = 'prop_cs_ciggy_01', bone = 28422,
            pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0)
        }
    })
    then if not Item.Smoke.cigarette.dmg then return
        else
            SetEntityHealth(cache.ped, math.min(maximum,
            math.floor(current - maximum / 64)))
        end
    end
end)

exports('cigar', function()
    local maximum = GetEntityMaxHealth(cache.ped)
	local current = GetEntityHealth(cache.ped)
    if lib.progressBar({
        duration = Item.Smoke.cigar.time,
        label = 'Smoking Cigar',
        useWhileDead = false, allowFalling = true, allowRagdoll = false,
        allowCuffed = false, canCancel = true, disable = { car = false },
        anim = {
            dict = 'amb@world_human_aa_smoke@male@idle_a', clip = 'idle_c', flag = 49,
            blendIn = 4.0, blendOut = 4.0, playbackRate = 0
        },
        prop = {
            model = 'bzzz_cigarpack_cig001', bone = 28422,
            pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 180.0, 0.0)
        }
    })
    then if not Item.Smoke.cigar.dmg then return
        else
            SetEntityHealth(cache.ped, math.min(maximum,
            math.floor(current - maximum / 32)))
        end
    end
end)

exports('vape', function()
    local maximum = GetEntityMaxHealth(cache.ped)
	local current = GetEntityHealth(cache.ped)
    if lib.progressBar({
        duration = 7500,
        label = 'Hitting Vape',
        useWhileDead = false, allowFalling = true, allowRagdoll = false,
        allowCuffed = false, canCancel = true, disable = { car = false },
        anim = {
            dict = 'amb@world_human_smoking@male@male_b@base', clip = 'base', flag = 49,
            blendIn = 4.0, blendOut = 4.0, playbackRate = 0
        },
        prop = {
            model = 'xm3_prop_xm3_vape_01a', bone = 28422,
            pos = vec3(-0.02, -0.02, 0.02), rot = vec3(70.0, 110.0, 10.0)
        }
    })
    then if not Item.Smoke.vape.dmg then return
        else
            SetEntityHealth(cache.ped, math.min(maximum,
            math.floor(current - maximum / 128)))
        end
    end
end)