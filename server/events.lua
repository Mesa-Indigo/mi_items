local Inventory = exports.ox_inventory

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