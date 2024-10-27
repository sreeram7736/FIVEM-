ESX = nil

-- Retrieve the ESX object
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(10)
    end
end)

-- HUD update loop
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(100)  -- Update every 100ms

        local playerPed = PlayerPedId()
        local health = GetEntityHealth(playerPed) - 100  -- Normalize health to a 0-100 scale
        local armor = GetPedArmour(playerPed)

        -- Clamp values to avoid negative percentages
        health = math.max(0, health)
        armor = math.max(0, armor)

        -- Send data to the HTML interface
        SendNUIMessage({
            type = "updateHUD",
            health = health,
            armor = armor
        })
    end
end)
