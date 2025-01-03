
Citizen.CreateThread(function()
    while true do 
       TriggerServerEvent('ic3d_moneylimit:checkmax', source)
		Citizen.Wait(300 * 1000) -- Verificar cada 5 minutos 
	end
end)
