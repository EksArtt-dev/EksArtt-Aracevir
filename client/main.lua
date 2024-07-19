local QBCore = exports['qb-core']:GetCoreObject()


RegisterNetEvent('eksartt-aracevir:flipVehicle', function()
    local playerPed = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(playerPed, false)

    if vehicle ~= 0 then
        local uprightValue = GetEntityUprightValue(vehicle)
        if uprightValue < 0.0 then
            SetVehicleOnGroundProperly(vehicle)
            QBCore.Functions.Notify("Araç düzeltildi!", "success")
        else
            QBCore.Functions.Notify("Aracınız takla atmış değil!", "error")
        end
    else
        QBCore.Functions.Notify("Araçta değilsiniz!", "error")
    end
end)
