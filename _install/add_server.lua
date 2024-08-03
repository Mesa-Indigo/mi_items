---@diagnostic disable: undefined-global

Item('case_beer_rancho', function(data, slot)
	ox_inventory:useItem(data, function(data)
		exports['mi_utils']:case_beer_rancho()
	end)
end)