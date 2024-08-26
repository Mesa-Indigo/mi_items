
-- player stamina
exports('ejunk', function()
    local time = Consume.Energy.ejunk.duration
    local bool = false
    
end)

RegisterCommand('timer', function()
    local timer = lib.timer(5000, function()
        print("timer ended")
    end, true)
     
    print(timer:getTimeLeft('ms')) -- 5000 miliseconds
    print(timer:getTimeLeft('s'))  -- 5.00 seconds
    print(timer:getTimeLeft('m'))  -- 0.08 minutes
    print(timer:getTimeLeft('h'))  -- 0.00 hours
    print(timer:getTimeLeft())     -- {ms = 5000, s = 5.00, m = 0.08, h = 0.00 }
end, false)