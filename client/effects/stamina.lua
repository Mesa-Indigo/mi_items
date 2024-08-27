
-- player stamina
exports('ejunk', function()
    local time = Consume.Energy.ejunk.duration
    local bool = false
    
end)

local timetest = function()
    local timer = lib.timer(5000, function()
        print("timer ended")
    end, true)
     
    print(timer:getTimeLeft('ms')) -- 5000 miliseconds
    print(timer:getTimeLeft('s'))  -- 5.00 seconds
    print(timer:getTimeLeft('m'))  -- 0.08 minutes
    print(timer:getTimeLeft('h'))  -- 0.00 hours
    print(timer:getTimeLeft())     -- {ms = 5000, s = 5.00, m = 0.08, h = 0.00 }
end


RegisterCommand('timer', function()
    if lib.progressBar({
        duration = 2000,
        label = 'Taking Pill',
        useWhileDead = false,
        canCancel = true,
        disable = {
            car = true,
        },
        anim = {
            dict = 'mp_suicide', clip = 'pill', flag = 49,
            blendIn = 4.0, blendOut = 4.0, playbackRate = 0
        },
    }) then print('Do stuff when complete') else print('Do stuff when cancelled') end
end, false)