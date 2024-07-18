local Inventory = exports.ox_inventory

-- system for bottle breaking 
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