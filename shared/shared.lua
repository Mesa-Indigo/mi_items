-- global variables
Shared, Data, Utils = {}, {}, {}
Target, Inventory = exports.ox_target, exports.ox_inventory

-- debug option
Debug = true

-- locale option | 'en', 'nl'
Locale = 'en'


-- function for clothing bag item to obtain outfits
-- change export if you use a different clothing system than illenium-appearance
RegisterNetEvent('miit:c:clothing:outfitbag')
AddEventHandler('miit:s:clothing:outfitbag', function()

    TriggerEvent('illenium-appearance:client:openOutfitMenu')
    --exports['illenium-appearance']openOutfitMenu()

end)
