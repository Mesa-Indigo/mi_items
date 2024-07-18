local table = {
    obj = nil,
    model = lib.requestModel('h4_prop_h4_table_isl_01a'),
    glass = lib.requestModel('prop_glass_stack_08'),

    rum = lib.requestModel('prop_rum_bottle'),
    vod = lib.requestModel('prop_vodka_bottle'),
    wsk = lib.requestModel('prop_cs_whiskey_bottle'),
    teq = lib.requestModel('prop_tequila_bottle'),
    cog = lib.requestModel('prop_bottle_cognac'),
    brb = lib.requestModel('prop_bottle_brandy'),

}

lib.registerContext({
    id = 'foldtable_create',
    title = 'Table Options',
    options = {
        {
        title = 'Set up Rum Shots',
        description = 'Why\'s the rum always gone?',
        icon = 'whiskey-glass',
        onSelect = function()
          print("Rum")
        end,
      },
      {
        title = 'Set up Tequila Shots',
        description = 'Lets go fuck up that bush over there.',
        icon = 'whiskey-glass',
        onSelect = function()
          print("Tequila")
        end,
      },
      {
        title = 'Set up Vodka Shots',
        description = 'Something to punch you in the mouth.',
        icon = 'whiskey-glass',
        onSelect = function()
          print("Tequila")
        end,
      },
      {
        title = 'Set up Whiskey Shots',
        description = 'Lets get fucked up, cowboy style.',
        icon = 'whiskey-glass',
        onSelect = function()
          print("Tequila")
        end,
      },
    }
  })

local tableoptions_start = {
    {
        name = 'tablecreate',
        label = 'Table Options',
        icon = 'fa-solid fa-box-open',
        canInteract = function(_, distance)
            return distance < 1.5
        end,
        onSelect = function()
            lib.showContext('foldtable_create')
        end
    }
}
  
RegisterCommand('table_fold', function()
    local player = cache.ped
    local offset = GetOffsetFromEntityInWorldCoords(player, 0.0, 1.2, 0.0)
    local heading = GetEntityHeading(player)

    if lib.progressBar({
        duration = 5000,
        label = 'Setting Table',
        useWhileDead = false,
        canCancel = true,
        disable = {
            car = true,
            move = true
        },
        anim = {
            scenario = 'CODE_HUMAN_MEDIC_TEND_TO_DEAD',
        },
    }) then
        table.obj = CreateObject(table.model, offset.x, offset.y, offset.z, true, false, false)
        SetEntityHeading(table.obj, heading)
        PlaceObjectOnGroundProperly(table.obj)
        FreezeEntityPosition(table.obj, true)
        SetEntityCollision(table.obj, true, true)
        exports.ox_target:addLocalEntity(table.obj, tableoptions_start)
        lib.showContext('foldtable_create')
    end
end, false)