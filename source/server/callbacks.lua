
lib.callback.register('miut:s:spawn', function(source, crds, model)
    CreateObject(model, crds.x, crds.y, crds.z-1, true, false, false)
end)

lib.callback.register('miit:item:add', function(source, item, count)
    Inventory:AddItem(source, item, count)
end)

lib.callback.register('miit:item:rem', function(source, item, count)
    Inventory:RemoveItem(source, item, count)
end)

lib.callback.register('miit:item:dur', function(source, item)
    local result = Inventory:GetSlotWithItem(source, item, nil, false)
    Inventory:SetDurability(source, result, 100)
end)

lib.callback.register('miit:item:check', function(source, item)
    local count = Inventory:Search(source, item, nil)
    print(count)
    return count
end)

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

-- joints
lib.callback.register('miit:item:satjoint', function(source)
    Inventory:RemoveItem(source, 'pc_sativa', 1)
    Inventory:AddItem(source, 'jt_sativa', 4)
end)

lib.callback.register('miit:item:indjoint', function(source)
    Inventory:RemoveItem(source, 'pc_indica', 1)
    Inventory:AddItem(source, 'jt_indica', 4)
end)

lib.callback.register('miit:item:hybjoint', function(source)
    Inventory:RemoveItem(source, 'pc_hybrid', 1)
    Inventory:AddItem(source, 'jt_hybrid', 4)
end)

-- set weapon tint
lib.callback.register('miit:weapon:tint', function(source, weapon, tint)
    weapon.metadata.tint = tint
    Inventory:SetMetadata(source, weapon.slot, weapon.metadata)
end)

lib.callback.register('miit:create:note', function(source, head, cont)
    local meta = {
        description = head,
        header = head, context = cont
    }
    Inventory:AddItem(source, 'note', 1, meta)
end)

-- for meta item needs / notes & trading cards
--[[
-- create note object
lib.callback.register('miit:item:add', function(source, header, content)
    -- hook for item creation
    local hookId = exports.ox_inventory:registerHook('createItem', function(payload)
        local gtavcard = tradingcardmeta[payload.metadata.type]
        if not gtavcard then return end
        return gtavcard
    end, {
        itemFilter = {
            lstradingcard = true
        }
    })
    -- create item
end)
]]