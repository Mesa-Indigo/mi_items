local ped = { obj = nil, spawned = false}

local blip = function()
    local data = World.Vend
    local blip = AddBlipForCoord(data.loc.rcyl.x, data.loc.rcyl.y, 0)
    SetBlipSprite(blip, 728) SetBlipDisplay(blip, 4)
    SetBlipScale(blip, 0.6) SetBlipColour(blip, 43)
    SetBlipAsShortRange(blip, true) BeginTextCommandSetBlipName("STRING")
    AddTextComponentString('Recycling Vendor') EndTextCommandSetBlipName(blip)
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
    local vendor = World.Vend.rcyl
    lib.registerContext({
    id = 'vendor',
    title = 'Vendor Menu',
    options = {
            {
                title = 'Iron Scrap', icon = 'money-bills',
                onSelect = function()
                    checkinv('scrap_iron', vendor.scrap_iron)
                end,
                metadata = { { label = 'Item Value', value = vendor.scrap_iron } },
            },
            {
                title = 'Aluminium Scrap', icon = 'money-bills',
                onSelect = function()
                    checkinv('scrap_aluminium', vendor.scrap_aluminium)
                end,
                metadata = { { label = 'Item Value', value = vendor.scrap_aluminium } },
            },
            {
                title = 'Bolts & Fittings', icon = 'money-bills',
                onSelect = function()
                    checkinv('scrap_bolts', vendor.scrap_bolts)
                end,
                metadata = { { label = 'Item Value', value = vendor.scrap_bolts } },
            },
            {
                title = 'Wood Planks', icon = 'money-bills',
                onSelect = function()
                    checkinv('scrap_wood', vendor.scrap_wood)
                end,
                metadata = { { label = 'Item Value', value = vendor.scrap_wood } },
            },
            {
                title = 'Plastic Scrap', icon = 'money-bills',
                onSelect = function()
                    checkinv('scrap_plastic', vendor.scrap_plastic)
                end,
                metadata = { { label = 'Item Value', value = vendor.scrap_plastic } },
            },
            {
                title = 'Glass Bottle', icon = 'money-bills',
                onSelect = function()
                    checkinv('scrap_bottle', vendor.scrap_bottle)
                end,
                metadata = { { label = 'Item Value', value = vendor.scrap_bottle } },
            },
            {
                title = 'Bundle of Wires', icon = 'money-bills',
                onSelect = function()
                    checkinv('scrap_wires', vendor.scrap_wires)
                end,
                metadata = { { label = 'Item Value', value = vendor.scrap_wires } },
            }
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
    local coord = World.Vend.loc.rcyl
    local model, crd = lib.requestModel('s_m_m_dockwork_01'), coord
    ped.obj = CreatePed(1, model, crd.x, crd.y, crd.z-1, crd.w, true, false)
    TaskStartScenarioInPlace(ped.obj, 'WORLD_HUMAN_CLIPBOARD_FACILITY', 0, true)
    FreezeEntityPosition(ped.obj, true)
    SetEntityHeading(ped.obj, crd.w)
    SetBlockingOfNonTemporaryEvents(ped.obj, true)
    SetEntityInvincible(ped.obj, true)
    Target:addLocalEntity(ped.obj, vendops)
end

RegisterNetEvent('miit:c:vend:recycling')
AddEventHandler('miit:c:vend:recycling', function()
    if World.Vend.blip.rcyl then
        blip()
    else return
    end
    createped()
end)

TriggerServerEvent('miit:s:vend:recycling')