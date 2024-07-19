local QBCore = exports['qb-core']:GetCoreObject()


QBCore.Commands.Add("cevir", "Aracınızı düzeltir", {}, false, function(source, args)
    TriggerClientEvent('eksartt-aracevir:flipVehicle', source)
end)
