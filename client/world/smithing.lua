local smelter = {
    coords = vec3(1075.45, -1979.45, 31.4),
	size = vec3(3.5, 1.25, 0.6),
	rotation = 325.0,
}

local loadmenu = function()
    lib.registerContext({
        id = 'menu_smelter', title = 'Smelter Menu',
        canCloser = true,
        options = {
          {
            title = 'Iron Bars', icon = 'box', iconColor = '#989A9D',
            description = 'Recipe: ',
            onSelect = function()

            end,
          },
          {
            title = 'Steel Bars', icon = 'box', iconColor = '#C7CCD3',
            description = 'Recipe: ',
            onSelect = function()

            end,
          },
          {
            title = 'Gold Bars', icon = 'box', iconColor = '#F1DE74',
            description = 'Recipe: ',
            onSelect = function()

            end,
          },

        }
      })
    lib.showContext('menu_smelter')
end

local options = {
    name = 'smelt',
    icon = 'fa-solid fa-industry',
    label = 'Open Smelting Menu',
    canInteract = function(_, distance)
        return distance < 1.5
    end,
    onSelect = function()
        loadmenu()
    end
}

local loadzone = function(coords, size, rotation)
    local zone = exports.ox_target:addBoxZone({
        coords = coords,
        size = size,
        rotation = rotation,
        debug = Debug,
        options = options
    })
end

RegisterCommand('smelt', function()
    local player = cache.ped
    local amount = 3

    if lib.progressBar({
        duration = 1000*amount,
        label = 'Smelting',
        useWhileDead = false,
        canCancel = true,
        disable = {
            car = true,
            move = true
        },
        anim = {
            blendIn = 3.0, dict = 'mp_fbi_heist',
            clip = 'loop', blendOut = 3.0,
        },
    }) then
        lib.print.info('smelt: '..amount)
    end
end, false)

-- to set
AddEventHandler('onResourceStart', function()
    if World.Smithing then
        --loadzone(smelter.coords, smelter.size, smelter.rotation)
    end
end)
