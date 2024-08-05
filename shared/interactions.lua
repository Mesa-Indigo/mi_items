-- Force Reference    
----------------
-- https://gtaforums.com/topic/885669-precisely-define-object-physics/
-- https://github.com/ArduousDev/TheForce/blob/master/theforce.lua#L93
-- https://gtaforums.com/topic/887362-apply-forces-and-momentums-to-entityobject/

--------------------------------
-- shove

-- force is the force exerted against the entity
-- ragtime is the times needed for ragdoll
Data.Shove = {
    type = 2,
    force = 20.0,
    ragtime = { a = 1500, b = 3000 }
}
