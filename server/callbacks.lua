
-- bottle breaking 
lib.callback.register('miit:button:breakbottle:rancho', function(source)
    Inventory:RemoveItem(source, 'rancho_beer', 1)
end)

lib.callback.register('miit:button:breakbottle:dusche', function(source)
    Inventory:RemoveItem(source, 'dusche_beer', 1)
end)

lib.callback.register('miit:button:breakbottle:stronzo', function(source)
    Inventory:RemoveItem(source, 'stronzo_beer', 1)
end)

lib.callback.register('miit:button:breakbottle:patriot', function(source)
    Inventory:RemoveItem(source, 'patriot_beer', 1)
end)

lib.callback.register('miit:button:breakbottle:add', function(source)
    Inventory:AddItem(source, 'WEAPON_BOTTLE', 1)
end)

-- give beer cause fuckem
lib.callback.register('miit:table:rancho_beer:add', function(source)
    Inventory:AddItem(source, 'rancho_beer', 1)
end)

lib.callback.register('miit:table:dusche_beer:add', function(source)
    Inventory:AddItem(source, 'dusche_beer', 1)
end)

lib.callback.register('miit:table:stronzo_beer:add', function(source)
    Inventory:AddItem(source, 'stronzo_beer', 1)
end)

lib.callback.register('miit:table:patriot_beer:add', function(source)
    Inventory:AddItem(source, 'patriot_beer', 1)
end)

-- camping items
lib.callback.register('miit:stash:tent:add', function(source)
    Inventory:AddItem(source, 'patriot_beer', 1)
end)

lib.callback.register('miit:stash:cooler:add', function(source)
    Inventory:AddItem(source, 'patriot_beer', 1)
end)

lib.callback.register('miit:stash:tent:remove', function(source)
    Inventory:AddItem(source, 'patriot_beer', 1)
end)

lib.callback.register('miit:stash:cooler:add', function(source)
    Inventory:AddItem(source, 'patriot_beer', 1)
end)

-- mining reward items
lib.callback.register('miit:give:mine:reward', function(source)
    local list = { 'crystal_uncut', 'ore_iron', 'ore_gold', 'ore_coal' }
    local reward = list[math.random(1, #list)]
    local amount = math.random(1,3)
    Inventory:AddItem(source, reward, amount)
end)

lib.callback.register('miit:toolbox:remove', function(source)
    Inventory:RemoveItem(source, 'small_toolkit', 1)
end)

lib.callback.register('miit:toolbox:add', function(source)
    Inventory:AddItem(source, 'small_toolkit', 1)
end)

lib.callback.register('miit:s:spawn:obj', function(source, model, coord)
    local obj = CreateObject(model, coord.x, coord.y, coord.z, true, false, false)
end)


lib.callback.register('miit:s:spawn:obj', function(source, crds, model)
    local obj = nil
    obj = CreateObject(model, crds.x, crds.y, crds.z-1, true, false, false)
    local NetId = NetworkGetEntityFromNetworkId(obj)
    return NetId
end)