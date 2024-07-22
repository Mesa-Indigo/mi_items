MI_Timer = function(time)
    local mili = time * 1000
    local timer = lib.timer(mili, function()
        print("timer ended")
     end)
end