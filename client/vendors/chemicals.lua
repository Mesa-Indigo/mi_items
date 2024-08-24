local ped = { obj = nil, spawned = false}

local blip = function()
    local data = World.Vend
    local blip = AddBlipForCoord(data.loc.chem.x, data.loc.chem.y, 0)
    SetBlipSprite(blip, 499) SetBlipDisplay(blip, 4)
    SetBlipScale(blip, 0.6) SetBlipColour(blip, 30)
    SetBlipAsShortRange(blip, true) BeginTextCommandSetBlipName("STRING")
    AddTextComponentString('Chemicals Vendor') EndTextCommandSetBlipName(blip)
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
    local vendor = World.Vend.chem
    lib.registerContext({
    id = 'vendor',
    title = 'Vendor Menu',
    options = {
            {
                title = 'Sulfur', icon = 'money-bills',
                onSelect = function()
                    checkinv('chem_sulfur', vendor.chem_sulfur)
                end,
                metadata = { { label = 'Item Value', value = vendor.chem_sulfur } },
            },
            {
                title = 'Potassium Nitrate', icon = 'money-bills',
                onSelect = function()
                    checkinv('chem_potnitr', vendor.chem_potnitr)
                end,
                metadata = { { label = 'Item Value', value = vendor.chem_potnitr } },
            },
            {
                title = 'Psuedoephedrine', icon = 'money-bills',
                onSelect = function()
                    checkinv('chem_psdnrn', vendor.chem_psdnrn)
                end,
                metadata = { { label = 'Item Value', value = vendor.chem_psdnrn } },
            },
            {
                title = 'Iodine', icon = 'money-bills',
                onSelect = function()
                    checkinv('chem_iodine', vendor.chem_iodine)
                end,
                metadata = { { label = 'Item Value', value = vendor.chem_iodine } },
            },
            {
                title = 'Phosphorus', icon = 'money-bills',
                onSelect = function()
                    checkinv('chem_phsrus', vendor.chem_phsrus)
                end,
                metadata = { { label = 'Item Value', value = vendor.chem_phsrus } },
            },
            {
                title = 'Ammonia', icon = 'money-bills',
                onSelect = function()
                    checkinv('chem_amonia', vendor.chem_amonia)
                end,
                metadata = { { label = 'Item Value', value = vendor.chem_amonia } },
            },
            {
                title = 'Acetone', icon = 'money-bills',
                onSelect = function()
                    checkinv('chem_actone', vendor.chem_actone)
                end,
                metadata = { { label = 'Item Value', value = vendor.chem_actone } },
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
    local coord = World.Vend.loc.chem
    local model, crd = lib.requestModel('s_m_m_scientist_01'), coord
    ped.obj = CreatePed(1, model, crd.x, crd.y, crd.z-1, crd.w, true, false)
    TaskStartScenarioInPlace(ped.obj, 'WORLD_HUMAN_CLIPBOARD_FACILITY', 0, true)
    FreezeEntityPosition(ped.obj, true)
    SetEntityHeading(ped.obj, crd.w)
    SetBlockingOfNonTemporaryEvents(ped.obj, true)
    SetEntityInvincible(ped.obj, true)
    Target:addLocalEntity(ped.obj, vendops)
end

RegisterNetEvent('miit:c:vend:chemicals')
AddEventHandler('miit:c:vend:chemicals', function()
    if World.Vend.blip.chem then
        blip()
    else return
    end
    createped()
end)

TriggerServerEvent('miit:s:vend:chemicals')