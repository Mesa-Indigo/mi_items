local getrotation = function(rotation)
    -- Convert rotation angles from degrees to radians
    local retz = math.rad(rotation.z) -- Yaw
    local retx = math.rad(rotation.x) -- Pitch

    -- Calculate the absolute value of the cosine of the pitch
    local absx = math.abs(math.cos(retx))

    -- Calculate and return the direction vector
    return vector3(
        -math.sin(retz) * absx, -- X component
        math.cos(retz) * absx,  -- Y component
        math.sin(retx)          -- Z component (vertical)
    )
end

-- event to repair engine
RegisterNetEvent('mi_items:global:gen:shove')
AddEventHandler('mi_items:global:gen:shove', function(ent)
    local dir, rot, bone = vector3(0.0, 1500.0, 0.0), vector3(0.0, 0.0, 15.0), 0
    SetPedToRagdoll(ent, 1000, 1000, 0, false, false, false)
    ApplyForceToEntity(ent, forceType,
    dir.x, dir.y, dir.z, -- direction of
    rot.x, rot.y, rot.z, -- rotation of
    bone, -- bone to target
    false, false, false, false, true)
end)