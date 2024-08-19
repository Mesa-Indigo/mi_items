local ped = { obj = nil, spawned = false}

local checkinv = function(item, data)
    local count = Inventory:Search('count', item)
    if count == 0 then
        return
    else
        lib.callback.await('miit:payout:activity', cache.ped, item, count, data)
    end
end

local loadvend = function()
    local vendor = World.Vend.cnbs
    lib.registerContext({
    id = 'vendor',
    title = 'Vendor Menu',
    options = {
            {
                title = 'Sativa Buds', icon = 'money-bills',
                onSelect = function()
                    checkinv('pc_sativa', vendor.jar_sat)
                end,
                metadata = { { label = 'Item Value', value = vendor.jar_sat } },
            },
            {
                title = 'Indica Buds', icon = 'money-bills',
                onSelect = function()
                    checkinv('pc_indica', vendor.jar_ind)
                end,
                metadata = { { label = 'Item Value', value = vendor.jar_ind } },
            },
            {
                title = 'Hybrid Buds', icon = 'money-bills',
                onSelect = function()
                    checkinv('pc_hybrid', vendor.jar_hyb)
                end,
                metadata = { { label = 'Item Value', value = vendor.jar_hyb } },
            },

            {
                title = 'Sativa Brick', icon = 'money-bills',
                onSelect = function()
                    checkinv('bc_sativa', vendor.brk_sat)
                end,
                metadata = { { label = 'Item Value', value = vendor.brk_sat } },
            },
            {
                title = 'Indica Brick', icon = 'money-bills',
                onSelect = function()
                    checkinv('bc_indica', vendor.brk_ind)
                end,
                metadata = { { label = 'Item Value', value = vendor.brk_ind } },
            },
            {
                title = 'Hybrid Brick', icon = 'money-bills',
                onSelect = function()
                    checkinv('bc_hybrid', vendor.brk_hyb)
                end,
                metadata = { { label = 'Item Value', value = vendor.brk_hyb } },
            },
        }
    })
    lib.showContext('vendor')
end

local vendops = {
    {
        name = 'vendor',
        label = 'talk to vendor',
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
    local coord = World.Vend.loc.cnbs
    local model, crd = lib.requestModel('a_m_y_soucent_01'), coord
    ped.obj = CreatePed(1, model, crd.x, crd.y, crd.z-1, crd.w, true, false)
    TaskStartScenarioInPlace(ped.obj, 'WORLD_HUMAN_AA_SMOKE', 0, true)
    FreezeEntityPosition(ped.obj, true)
    SetEntityHeading(ped.obj, crd.w)
    SetBlockingOfNonTemporaryEvents(ped.obj, true)
    SetEntityInvincible(ped.obj, true)
    Target:addLocalEntity(ped.obj, vendops)
end