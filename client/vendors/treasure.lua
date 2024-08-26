local ped = { obj = nil, spawned = false}

local blip = function()
    local data = World.Vend
    local blip = AddBlipForCoord(data.loc.trsr.x, data.loc.trsr.y, 0)
    SetBlipSprite(blip, 500) SetBlipDisplay(blip, 4)
    SetBlipScale(blip, 0.6) SetBlipColour(blip, 46)
    SetBlipAsShortRange(blip, true) BeginTextCommandSetBlipName("STRING")
    AddTextComponentString('Treasure Vendor') EndTextCommandSetBlipName(blip)
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
    local vendor = World.Vend.trsr
    lib.registerContext({
    id = 'vendor',
    title = 'Vendor Menu',
    options = {
            {
                title = 'Gold Doubloons', icon = 'money-bills',
                onSelect = function()
                    checkinv('trsr_doubloons', vendor.trsr_doubloons)
                end,
                metadata = { { label = 'Item Value', value = vendor.trsr_doubloons } },
            },
            {
                title = 'Sharks Tooth', icon = 'money-bills',
                onSelect = function()
                    checkinv('trsr_sharkstooth', vendor.trsr_sharkstooth)
                end,
                metadata = { { label = 'Item Value', value = vendor.trsr_sharkstooth } },
            },
            {
                title = 'Sand Dollar', icon = 'money-bills',
                onSelect = function()
                    checkinv('trsr_sanddollar', vendor.trsr_sanddollar)
                end,
                metadata = { { label = 'Item Value', value = vendor.trsr_sanddollar } },
            },
            {
                title = 'Sea Glass', icon = 'money-bills',
                onSelect = function()
                    checkinv('trsr_seaglass', vendor.trsr_seaglass)
                end,
                metadata = { { label = 'Item Value', value = vendor.trsr_seaglass } },
            },
            {
                title = 'Pearls', icon = 'money-bills',
                onSelect = function()
                    checkinv('trsr_pearls', vendor.trsr_pearls)
                end,
                metadata = { { label = 'Item Value', value = vendor.trsr_pearls } },
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
    local coord = World.Vend.loc.trsr
    local model, crd = lib.requestModel('a_m_m_beach_01'), coord
    ped.obj = CreatePed(1, model, crd.x, crd.y, crd.z-1, crd.w, true, false)
    TaskStartScenarioInPlace(ped.obj, 'WORLD_HUMAN_CLIPBOARD_FACILITY', 0, true)
    FreezeEntityPosition(ped.obj, true)
    SetEntityHeading(ped.obj, crd.w)
    SetBlockingOfNonTemporaryEvents(ped.obj, true)
    SetEntityInvincible(ped.obj, true)
    Target:addLocalEntity(ped.obj, vendops)
end

RegisterNetEvent('miit:c:vend:treasure')
AddEventHandler('miit:c:vend:treasure', function()
    if World.Vend.blip.trsr then
        blip()
    else return
    end
    createped()
end)

TriggerServerEvent('miit:s:vend:treasure')