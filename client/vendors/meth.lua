local ped = { obj = nil, spawned = false}

local blip = function()
    local data = World.Vend
    local blip = AddBlipForCoord(data.loc.meth.x, data.loc.meth.y, 0)
    SetBlipSprite(blip, 514) SetBlipDisplay(blip, 4)
    SetBlipScale(blip, 0.6) SetBlipColour(blip, 18)
    SetBlipAsShortRange(blip, true) BeginTextCommandSetBlipName("STRING")
    AddTextComponentString('Meth Vendor') EndTextCommandSetBlipName(blip)
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
    local vendor = World.Vend.meth
    lib.registerContext({
    id = 'vendor',
    title = 'Vendor Menu',
    options = {
            {
                title = 'Powdered Meth', icon = 'money-bills',
                onSelect = function()
                    checkinv('pd_meth', vendor.pd_meth)
                end,
                metadata = { { label = 'Item Value', value = vendor.pd_meth } },
            },
            {
                title = 'Crystal Meth', icon = 'money-bills',
                onSelect = function()
                    checkinv('cr_meth', vendor.cr_meth)
                end,
                metadata = { { label = 'Item Value', value = vendor.cr_meth } },
            },
            {
                title = 'Brick of Crystal Meth', icon = 'money-bills',
                onSelect = function()
                    checkinv('bc_meth', vendor.bc_meth)
                end,
                metadata = { { label = 'Item Value', value = vendor.bc_meth } },
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
    local coord = World.Vend.loc.meth
    local model, crd = lib.requestModel('a_m_y_acult_01'), coord
    ped.obj = CreatePed(1, model, crd.x, crd.y, crd.z-1, crd.w, true, false)
    TaskStartScenarioInPlace(ped.obj, 'WORLD_HUMAN_AA_SMOKE', 0, true)
    FreezeEntityPosition(ped.obj, true)
    SetEntityHeading(ped.obj, crd.w)
    SetBlockingOfNonTemporaryEvents(ped.obj, true)
    SetEntityInvincible(ped.obj, true)
    Target:addLocalEntity(ped.obj, vendops)
end

RegisterNetEvent('miit:c:vend:meth')
AddEventHandler('miit:c:vend:meth', function()
    if World.Vend.blip.ccne then
        blip()
    else return
    end
    createped()
end)

TriggerServerEvent('miit:s:vend:meth')