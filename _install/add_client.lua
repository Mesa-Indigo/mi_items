---@diagnostic disable: undefined-global

-- parachute tool 
client.parachute = false
Item('parachute', function(data, slot)
	if not client.parachute then
		ox_inventory:useItem(data, function(data)
			if data then
				local chute = `GADGET_PARACHUTE`
				SetPlayerParachuteTintIndex(PlayerData.id, -1)
				GiveWeaponToPed(cache.ped, chute, 0, true, false)
				SetPedGadget(cache.ped, chute, true)
				lib.requestModel(1269906701)
				client.parachute = {CreateParachuteBagObject(cache.ped, true, true), slot?.metadata?.type or -1}
				if slot.metadata.type then
					SetPlayerParachuteTintIndex(PlayerData.id, slot.metadata.type)
				end
			end
		end)
	end
end)

-- phone object
Item('phone', function(data, slot)
	local success, result = pcall(function()
		return exports.npwd:isPhoneVisible()
	end)

	if success then
		exports.npwd:setPhoneVisible(not result)
	end
end)

-- liesure
Item('cooler', function(data, slot)
	ox_inventory:useItem(data, function(data)
		exports['mi_items']:cooler()
	end)
end)

-- table tools
Item('fold_table', function(data, slot)
	ox_inventory:useItem(data, function(data)
		exports['mi_items']:fold_table()
	end)
end)

-- note tools
Item('notebook', function(data, slot)
	ox_inventory:useItem(data, function(data)
		exports['mi_items']:notebook()
	end)
end)

Item('note', function(data, slot)
	ox_inventory:useItem(data, function(data)
		exports['mi_items']:note(data)
	end)
end)

-- armor tools
Item('armor1', function(data, slot)
	ox_inventory:useItem(data, function(data)
		exports['mi_items']:armor1()
	end)
end)

Item('armor2', function(data, slot)
	ox_inventory:useItem(data, function(data)
		exports['mi_items']:armor2()
	end)
end)

Item('armor3', function(data, slot)
	ox_inventory:useItem(data, function(data)
		exports['mi_items']:armor3()
	end)
end)

Item('shield_riot', function(data, slot)
	ox_inventory:useItem(data, function(data)
		exports['mi_items']:shield_riot()
	end)
end)

-- recovery
Item('bandage_basic', function(data, slot)
	ox_inventory:useItem(data, function(data)
		exports['mi_items']:bandage_basic()
	end)
end)

-- recovery
Item('ejunk', function(data, slot)
	ox_inventory:useItem(data, function(data)
		exports['mi_items']:ejunk()
	end)
end)

-- vehicles
Item('spraykit', function(data, slot)
	ox_inventory:useItem(data, function(data)
		exports['mi_items']:spraykit()
	end)
end)

Item('enginekit', function(data, slot)
	ox_inventory:useItem(data, function(data)
		exports['mi_items']:enginekit()
	end)
end)

Item('tirekit', function(data, slot)
	ox_inventory:useItem(data, function(data)
		exports['mi_items']:tirekit()
	end)
end)

Item('cleankit', function(data, slot)
	ox_inventory:useItem(data, function(data)
		exports['mi_items']:cleankit()
	end)
end)

-- diving
Item('rebreather', function(data, slot)
	ox_inventory:useItem(data, function(data)
		exports['mi_items']:rebreather()
	end)
end)

Item('divegear', function(data, slot)
	ox_inventory:useItem(data, function(data)
		exports['mi_items']:divegear()
	end)
end)

Item('towel', function(data, slot)
	ox_inventory:useItem(data, function(data)
		exports['mi_items']:towel()
	end)
end)

-- crime things
Item('bombbag_exp', function(data, slot)
	ox_inventory:useItem(data, function(data)
		exports['mi_items']:bombbag_exp()
	end)
end)

Item('smokebomb', function(data, slot)
	ox_inventory:useItem(data, function(data)
		exports['mi_items']:smokebomb()
	end)
end)

-- drugs
Item('pc_cocaine', function(data, slot)
	ox_inventory:useItem(data, function(data)
		exports['mi_items']:cocaine()
	end)
end)

Item('cr_meth', function(data, slot)
	ox_inventory:useItem(data, function(data)
		exports['mi_items']:meth()
	end)
end)

Item('jt_sativa', function(data, slot)
	ox_inventory:useItem(data, function(data)
		exports['mi_items']:sativa()
	end)
end)

Item('jt_indica', function(data, slot)
	ox_inventory:useItem(data, function(data)
		exports['mi_items']:indica()
	end)
end)

Item('jt_hybrid', function(data, slot)
	ox_inventory:useItem(data, function(data)
		exports['mi_items']:hybrid()
	end)
end)

-- fun stuff
Item('firework_s1', function(data, slot)
	ox_inventory:useItem(data, function(data)
		exports['mi_items']:firework_s1()
	end)
end)

Item('firework_s2', function(data, slot)
	ox_inventory:useItem(data, function(data)
		exports['mi_items']:firework_s2()
	end)
end)

-- smoking
Item('smk_brand69', function(data, slot)
	ox_inventory:useItem(data, function(data)
		exports['mi_items']:cigarette()
	end)
end)

Item('smk_debonaire', function(data, slot)
	ox_inventory:useItem(data, function(data)
		exports['mi_items']:cigarette()
	end)
end)

Item('smk_redwood', function(data, slot)
	ox_inventory:useItem(data, function(data)
		exports['mi_items']:cigarette()
	end)
end)

Item('vpe_elect1', function(data, slot)
	ox_inventory:useItem(data, function(data)
		exports['mi_items']:vape()
	end)
end)

Item('vpe_elect2', function(data, slot)
	ox_inventory:useItem(data, function(data)
		exports['mi_items']:vape()
	end)
end)

Item('vpe_elect3', function(data, slot)
	ox_inventory:useItem(data, function(data)
		exports['mi_items']:vape()
	end)
end)

Item('cgr_estancia', function(data, slot)
	ox_inventory:useItem(data, function(data)
		exports['mi_items']:cigar()
	end)
end)