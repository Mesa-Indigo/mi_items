local ped = { obj = nil, spawned = false}

local blip = function()
    local data = World.Vend
    local blip = AddBlipForCoord(data.loc.mtrl.x, data.loc.mtrl.y, 0)
    SetBlipSprite(blip, 478) SetBlipDisplay(blip, 4)
    SetBlipScale(blip, 0.6) SetBlipColour(blip, 47)
    SetBlipAsShortRange(blip, true) BeginTextCommandSetBlipName("STRING")
    AddTextComponentString('Material Vendor') EndTextCommandSetBlipName(blip)
end

local checkinv = function(item, data)
    local count = Inventory:Search('count', item)
    if count == 0 then
        return
    else
        lib.callback.await('miit:payout:activity', cache.ped, item, count, data)
    end
end

local loadvend = function()
    local vendor = World.Vend.mtrl
    lib.registerContext({
    id = 'vendor',
    title = 'Vendor Menu',
    options = {
            {
                title = 'Iron Ore', icon = 'money-bills',
                onSelect = function()
                    checkinv('ore_iron', vendor.ore_iron)
                end,
                metadata = { { label = 'Item Value', value = vendor.ore_iron } },
            },
            {
                title = 'Gold Ore', icon = 'money-bills',
                onSelect = function()
                    checkinv('ore_gold', vendor.ore_gold)
                end,
                metadata = { { label = 'Item Value', value = vendor.ore_gold } },
            },
            {
                title = 'Coal', icon = 'money-bills',
                onSelect = function()
                    checkinv('ore_coal', vendor.ore_coal)
                end,
                metadata = { { label = 'Item Value', value = vendor.ore_coal } },
            },
            {
                title = 'Uncut Ruby', icon = 'money-bills',
                onSelect = function()
                    checkinv('ruby_uncut', vendor.ruby_uncut)
                end,
                metadata = { { label = 'Item Value', value = vendor.ruby_uncut } },
            },
            {
                title = 'Uncut Sapphire', icon = 'money-bills',
                onSelect = function()
                    checkinv('sapphire_uncut', vendor.sapphire_uncut)
                end,
                metadata = { { label = 'Item Value', value = vendor.sapphire_uncut } },
            },
            {
                title = 'Uncut Emerald', icon = 'money-bills',
                onSelect = function()
                    checkinv('emerald_uncut', vendor.emerald_uncut)
                end,
                metadata = { { label = 'Item Value', value = vendor.emerald_uncut } },
            },
            {
                title = 'Uncut Diamond', icon = 'money-bills',
                onSelect = function()
                    checkinv('diamond_uncut', vendor.diamond_uncut)
                end,
                metadata = { { label = 'Item Value', value = vendor.diamond_uncut } },
            },
        }
    })
    lib.showContext('vendor')
end

local vendops = {
    {
        name = 'vendor',
        label = locale('int_vend_itm'),
        icon = 'fa-solid fa-hand-fist',
        canInteract = function(_, distance)
            return distance < 1.5
        end,
        onSelect = function()
            loadvend()
        end
    }
}

-- create ped
local createped = function()
    local coord = World.Vend.loc.mtrl
    local model, crd = lib.requestModel('a_m_y_vindouche_01'), coord
    ped.obj = CreatePed(1, model, crd.x, crd.y, crd.z-1, crd.w, true, false)
    TaskStartScenarioInPlace(ped.obj, 'WORLD_HUMAN_CLIPBOARD_FACILITY', 0, true)
    FreezeEntityPosition(ped.obj, true)
    SetEntityHeading(ped.obj, crd.w)
    SetBlockingOfNonTemporaryEvents(ped.obj, true)
    SetEntityInvincible(ped.obj, true)
    Target:addLocalEntity(ped.obj, vendops)
end

RegisterNetEvent('miit:c:vend:mining')
AddEventHandler('miit:c:vend:mining', function()
    if World.Vend.blip.mtrl then
        blip()
    else return
    end
    createped()
end)

TriggerServerEvent('miit:s:vend:mining')