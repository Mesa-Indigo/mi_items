
-- create container w/ meta on to decide type of food


-- create note item
RegisterCommand('mre', function()
    local container = {}

    Wait(300)
    lib.callback.await('miit:item:add', cache.ped, 'mealready', 1)
end, false)
