
Item('armor1', function(data, slot)
	ox_inventory:useItem(data, function(data)
		exports['mi_utils']:armor1()
	end)
end)

Item('armor2', function(data, slot)
	ox_inventory:useItem(data, function(data)
		exports['mi_utils']:armor2()
	end)
end)

Item('armor3', function(data, slot)
	ox_inventory:useItem(data, function(data)
		exports['mi_utils']:armor3()
	end)
end)

Item('shield_riot', function(data, slot)
	ox_inventory:useItem(data, function(data)
		exports['mi_utils']:shield_riot()
	end)
end)

Item('bandage_basic', function(data, slot)
	ox_inventory:useItem(data, function(data)
		exports['mi_utils']:bandage_basic()
	end)
end)

Item('repair_veheng', function(data, slot)
	ox_inventory:useItem(data, function(data)
		exports['mi_utils']:repair_veheng()
	end)
end)

Item('phone', function(data, slot)
	local success, result = pcall(function()
		return exports.npwd:isPhoneVisible()
	end)

	if success then
		exports.npwd:setPhoneVisible(not result)
	end
end)