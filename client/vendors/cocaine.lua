local ped = { obj = nil, spawned = false}

local blip = function()
    local data = World.Vend
    local blip = AddBlipForCoord(data.loc.ccne.x, data.loc.ccne.y, 0)
    SetBlipSprite(blip, 514) SetBlipDisplay(blip, 4)
    SetBlipScale(blip, 0.6) SetBlipColour(blip, 62)
    SetBlipAsShortRange(blip, true) BeginTextCommandSetBlipName("STRING")
    AddTextComponentString('Cocaine Vendor') EndTextCommandSetBlipName(blip)
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
    local vendor = World.Vend.ccne
    lib.registerContext({
    id = 'vendor',
    title = 'Vendor Menu',
    options = {
            {
                title = 'Cocaine', icon = 'money-bills',
                onSelect = function()
                    checkinv('pc_cocaine', vendor.pc_cocaine)
                end,
                metadata = { { label = 'Item Value', value = vendor.pc_cocaine } },
            },
            {
                title = 'Brick of Cocaine', icon = 'money-bills',
                onSelect = function()
                    checkinv('bc_cocaine', vendor.bc_cocaine)
                end,
                metadata = { { label = 'Item Value', value = vendor.bc_cocaine } },
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
    local coord = World.Vend.loc.ccne
    local model, crd = lib.requestModel('g_m_y_lost_02'), coord
    ped.obj = CreatePed(1, model, crd.x, crd.y, crd.z-1, crd.w, true, false)
    TaskStartScenarioInPlace(ped.obj, 'WORLD_HUMAN_AA_SMOKE', 0, true)
    FreezeEntityPosition(ped.obj, true)
    SetEntityHeading(ped.obj, crd.w)
    SetBlockingOfNonTemporaryEvents(ped.obj, true)
    SetEntityInvincible(ped.obj, true)
    Target:addLocalEntity(ped.obj, vendops)
end

RegisterNetEvent('miit:c:vend:cocaine')
AddEventHandler('miit:c:vend:cocaine', function()
    if World.Vend.blip.ccne then
        blip()
    else return
    end
    createped()
end)

TriggerServerEvent('miit:s:vend:cocaine')