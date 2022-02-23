ESX = exports['es_extended']:getSharedObject()

RegisterCommand('cam', function(source, args)
    local src = source 
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer.job.name == "police" then 
        TriggerClientEvent("securitycam:client:ActiveCamera", src, tonumber(args[1]))
    else
        TriggerClientEvent('esx:showNotification', src, 'You are not on duty!')
    end
end, false)