
-- queries
local dbq = {
    player = 'SELECT  `charId`,  `userId`,  `stateId`,  `firstName`,  `lastName`,  `gender`,  `dateOfBirth`,  `phoneNumber`,  `lastPlayed`,  `isDead`,  `x`,  `y`,  `z`,  `heading`,  `health`,  `armour`, LEFT(`statuses`, 256),  `deleted` FROM `overextended`.`characters`'
}

-- character information
lib.callback.register('miit:char:id', function(source)
    MySQL.query(dbq.player, { player.charId }, function(response)
        if response then
            for i = 1, #response do
                local row = response[i]
                print(row.plate, row.vin, row.model, row.class, row.stored)
            end
        end
    end)
end)