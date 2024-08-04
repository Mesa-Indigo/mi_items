local forceTypes = {
    MinForce = 0,
    MaxForceRot = 1,
    MinForce2 = 2,
    MaxForceRot2 = 3,
    ForceNoRot = 4,
    ForceRotPlusForce = 5
}

local entity = PlayerPedId()
local forceType = forceTypes.MaxForceRot2
 -- sends the entity straight up into the sky:
local direction = vector3(0.0, 1500.0, 0.0)
local rotation = vector3(0.0, 0.0, 15.0)
local boneIndex = 0
local isDirectionRel = false
local ignoreUpVec = true
local isForceRel = true
local p12 = false
local p13 = true

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