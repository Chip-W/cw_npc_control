Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0) -- prevent crashing

		-- These natives have to be called every frame.
		SetVehicleDensityMultiplierThisFrame(0.25) -- set traffic density to 0 
		SetPedDensityMultiplierThisFrame(1.50) -- set npc/ai peds density to 0
		SetRandomVehicleDensityMultiplierThisFrame(0.25) -- set random vehicles (car scenarios / cars driving off from a parking spot etc.) to 0
		SetParkedVehicleDensityMultiplierThisFrame(0.05) -- set random parked vehicles (parked car scenarios) to 0
		SetScenarioPedDensityMultiplierThisFrame(1.0, 1.0) -- set random npc/ai peds or scenario peds to 0
		SetGarbageTrucks(true) -- Stop garbage trucks from randomly spawning
		SetRandomBoats(true) -- Stop random boats from spawning in the water.
		SetCreateRandomCops(false) -- disable random cops walking/driving around.
		SetCreateRandomCopsNotOnScenarios(false) -- stop random cops (not in a scenario) from spawning.
		SetCreateRandomCopsOnScenarios(false) -- stop random cops (in a scenario) from spawning.
		
		-- local x,y,z = table.unpack(GetEntityCoords(PlayerPedId()))
		-- ClearAreaOfVehicles(x, y, z, nil, false, false, false, false, false)
		-- RemoveVehiclesFromGeneratorsInArea(x - 0.0, y - 0.0, z - 0.0, x + 0.0, y + 0.0, z + 0.0);
	end
end)


Citizen.CreateThread(function()
	for i = 1, 15 do
		Citizen.InvokeNative(0xDC0F817884CDD856, i, false)
	end
end)
