local toolbox = {
    obj = nil, model = lib.requestModel('prop_toolchest_01'),
}

SetObject = function(obj)
    PlaceObjectOnGroundProperly(obj)
    FreezeEntityPosition(obj, true)
    SetEntityCollision(obj, true, true)
end

local prog_setup = function(obj)
    local offset = GetOffsetFromEntityInWorldCoords(cache.ped, 1.1, 0.02, 0.0)
    local heading = GetEntityHeading(cache.ped)

    if lib.progressBar({
        duration = 5000, label = 'Loading Tool Box', useWhileDead = false,
        canCancel = true,
        disable = { car = true, move = true },
        anim = { scenario = 'CODE_HUMAN_MEDIC_TEND_TO_DEAD' },
    }) then
        -- create object
        toolbox.obj = CreateObject(toolbox.model, offset.x, offset.y, offset.z, true, false, false)
        SetEntityHeading(toolbox.obj, heading-135)
        SetObject(toolbox.obj)
        -- remove from inventory
        lib.callback.await('miit:toolbox:remove')
        -- open menu for kit type repair

        -- when leaving menu, give back item
    end
end

RegisterCommand('vhr', function()

    -- get vehicle details
    local coords = GetEntityCoords(cache.ped)
    local vehicle = lib.getClosestVehicle(coords, 4.0, true)
    local name = Utils.GetVehInfo(vehicle)
    print(name)

    if not vehicle then
        print('not close')
    else
        prog_setup(toolbox.obj)
    end
end, false)