-- https://wiki.rage.mp/index.php?title=Vehicle_Colors for vehicle color reference

local fixes = {
    'Huff it, huff it, huff it, huff it, huff it',
    'That was the right color, right?',
    'If you want something nicer, get a mechanic',
    '*heinous sniffing noises*',
    'Did you shake it well enough?',
    'And you did it without your dad yelling at you',
    'Vanity isn\'t bad and whoever says it is are ugly'
}

local colors = {
    cleared =   { id = 156,     label = 'Default Alloy' },
    black =     { id = 1,       label = 'Black' },
    white =     { id = 111,     label = 'White' },
    red =       { id = 27,      label = 'Red' },
    orange =    { id = 38,      label = 'Orange' },
    green =     { id = 53,      label = 'Green' },
    blue =      { id = 64,      label = 'Blue' },
    yellow =    { id = 91,      label = 'Yellow' },
    purple =    { id = 145,     label = 'Purple' },
}

local getvehicleinfo = function(vehicle)
    local model = GetEntityModel(vehicle)
    local display = GetDisplayNameFromVehicleModel(model)
    local name = GetLabelText(display)
    return name
end

-- start repairs
local colorvehicle = function(vehicle, color)
    if lib.progressBar({
        duration = 5000, label = 'Coloring Vehicle',
        useWhileDead = false, canCancel = true,
        disable = {
            car = true, move = true
        },
        anim = {
            blendIn = 3.0,
            dict = 'anim@scripted@freemode@postertag@graffiti_spray@male@',
            clip = 'spray_can_var_01_male',
            blendOut = 3.0,
        },
        prop = {
            bone = 28422,
            model = `prop_cs_spray_can`,
            pos = vec3(0.0, 0.00, 0.07),
            rot = vec3(0.0, 0.0, 0.0)
        },
    }) then
        local response = fixes[math.random(1, #fixes)]
        local tx2 = { id = 'color_complete', title = "Vehicle Painted",
        description = response }
        DoNotif(tx2, Cor)
        lib.setVehicleProperties(vehicle, { color1 = color })
        lib.setVehicleProperties(vehicle, { color2 = color })
    else
        local tx3 = { id = 'color_stopped', title = "Painting Stopped",
        description = 'You stopped cleaning' }
        DoNotif(tx3, War)
    end
end

local vehicleinspection = function(vehicle)
    local name, detail = getvehicleinfo(vehicle),
    lib.getVehicleProperties(vehicle)
    lib.registerContext({
        id = 'color_veh_menu',
        title = name..': '..detail.plate,
        options = {
          {
            title = 'Select a color for the vehicle', readOnly = true,
          },
          {
            title = colors.cleared.label, readOnly = false,
            description = 'Just start over then',
            icon = 'spray-can-sparkles', iconColor = '#81827f',
            iconAnimation = 'beatFade',
            onSelect = function()
                colorvehicle(vehicle, colors.cleared.id)
            end,
          },
          {
            title = colors.black.label, readOnly = false,
            description = 'Blacker than black on black',
            icon = 'spray-can-sparkles', iconColor = '#32383d',
            iconAnimation = 'beatFade',
            onSelect = function()
                colorvehicle(vehicle, colors.black.id)
            end,
          },
          {
            title = colors.white.label, readOnly = false,
            description = 'Damn, that shit bright',
            icon = 'spray-can-sparkles', iconColor = '#fffff6',
            iconAnimation = 'beatFade',
            onSelect = function()
                colorvehicle(vehicle, colors.white.id)
            end,
          },
          {
            title = colors.red.label, readOnly = false,
            description = 'The fastest way to get pulled over',
            icon = 'spray-can-sparkles', iconColor = '#c00e1a',
            iconAnimation = 'beatFade',
            onSelect = function()
                colorvehicle(vehicle, colors.red.id)
            end,
          },
          {
            title = colors.orange.label, readOnly = false,
            description = 'This color brings out the stupid in my face',
            icon = 'spray-can-sparkles', iconColor = '#f78616',
            iconAnimation = 'beatFade',
            onSelect = function()
                colorvehicle(vehicle, colors.orange.id)
            end,
          },
          {
            title = colors.green.label, readOnly = false,
            description = 'As green as green could possibly be',
            icon = 'spray-can-sparkles', iconColor = '#155c2d',
            iconAnimation = 'beatFade',
            onSelect = function()
                colorvehicle(vehicle, colors.green.id)
            end,
          },
          {
            title = colors.blue.label, readOnly = false,
            description = '[insert_blue_joke_here_dontForget]',
            icon = 'spray-can-sparkles', iconColor = '#47578f',
            iconAnimation = 'beatFade',
            onSelect = function()
                colorvehicle(vehicle, colors.blue.id)
            end,
          },
          {
            title = colors.yellow.label, readOnly = false,
            description = 'Did you know that yellow is a color?',
            icon = 'spray-can-sparkles', iconColor = '#e0e13d',
            iconAnimation = 'beatFade',
            onSelect = function()
                colorvehicle(vehicle, colors.yellow.id)
            end,
          },
          {
            title = colors.purple.label, readOnly = false,
            description = 'What ever happened to the Saints?',
            icon = 'spray-can-sparkles', iconColor = '#621276',
            iconAnimation = 'beatFade',
            onSelect = function()
                colorvehicle(vehicle, colors.purple.id)
            end,
          },
        }
      })
    lib.showContext('color_veh_menu')
end

-- event to repair engine
RegisterNetEvent('mi_items:global:vehicle:color')
AddEventHandler('mi_items:global:vehicle:color', function(vehicle)
    --local color = lib.getVehicleProperties(vehicle)
    --print(color.color1)
    --lib.setVehicleProperties(vehicle, {color1 = 15})
    --lib.setVehicleProperties(vehicle, {color2 = 15})

    vehicleinspection(vehicle)
end)