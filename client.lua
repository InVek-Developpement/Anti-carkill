CreateThread(function()
    while true do 
        local timeToSleep = 200;
        local myCoord = GetEntityCoords(PlayerPedId())
        local closestVeh = GetClosestVehicle(myCoord.x, myCoord.y, myCoord.z, 4.0, 0, 71)
        if closestVeh ~= 0 and closestVeh > 1.0 then
            timeToSleep = 1;
            SetEntityNoCollisionEntity(closestVeh, PlayerPedId(), true)
        end
        Wait(timeToSleep)
    end
end)