
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
lib.callback.register('miit:give:mining:reward', function(source)
    local chance = World.Mining.reward
    local reward = World.Mining.ores[math.random(1, #World.Mining.ores)]
    local amount = math.random(chance.min, chance.max)
    Inventory:AddItem(source, reward, amount)
end)

-- mining bonus items
lib.callback.register('miit:give:mining:bonus', function(source)
    local chance = World.Mining.reward
    local reward = World.Mining.gems[math.random(1, #World.Mining.gems)]
    local amount = math.random(chance.min, chance.max)
    Inventory:AddItem(source, reward, amount)
end)

lib.callback.register('miit:toolbox:remove', function(source)
    Inventory:RemoveItem(source, 'small_toolkit', 1)
end)

lib.callback.register('miit:toolbox:add', function(source)
    Inventory:AddItem(source, 'small_toolkit', 1)
end)

lib.callback.register('miit:item:add', function(source, item, count)
    Inventory:AddItem(source, item, count)
end)

lib.callback.register('miit:item:rem', function(source, item, count)
    Inventory:RemoveItem(source, item, count)
end)