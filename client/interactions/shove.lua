
-- event to shove entity
RegisterNetEvent('mi_items:global:gen:shove')
AddEventHandler('mi_items:global:gen:shove', function(ent)
    local dir, rot, bone = vector3(0.0, 0.0, 15.0), vector3(0.0, 0.0, 1500.0), 24818
    TaskPlayAnim(cache.ped,'melee@unarmed@streamed_core','shove',4.0,-4.0, 800, 1, 1, true, true, true)

    SetPedToRagdoll(ent, 5000, 2000, 0, false, false, false)
    ApplyForceToEntity(ent, 2,
    dir.x, dir.y, dir.z, -- direction of
    rot.x, rot.y, rot.z, -- rotation of
    bone, -- bone to target
    false, false, false, false, true)

end)