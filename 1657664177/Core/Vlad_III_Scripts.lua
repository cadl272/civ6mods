-----------------------------------------------
-- VLAD_III FUNCTIONS
-----------------------------------------------

print ("Vlad III Functions initialized")

-----------------------------------------------
-- UTILITIES
-----------------------------------------------

-- Credits: Chrisy of course
function C15_ValidTrait(sTrait)
    local tValid = {}
    for k, v in ipairs(PlayerManager.GetWasEverAliveIDs()) do
        local leaderType = PlayerConfigurations[v]:GetLeaderTypeName()
        for trait in GameInfo.LeaderTraits() do
            if trait.LeaderType == leaderType and trait.TraitType == sTrait then 
                tValid[v] = true 
            end;
        end
        if not tValid[v] then
            local civType = PlayerConfigurations[v]:GetCivilizationTypeName()
            for trait in GameInfo.CivilizationTraits() do
                if trait.CivilizationType == civType and trait.TraitType == sTrait then 
                    tValid[v] = true 
                end;
            end
        end
    end
    return tValid
end

function GetRandom(iLower, iUpper, sReason)
	return Game.GetRandNum((iUpper + 1) - iLower, sReason) + iLower
end

-----------------------------------------------
-- CONSTANTS
-----------------------------------------------

	local sTrait = "TRAIT_LEADER_CVS_VLAD_III_UA"
	local tTraitPlayers = C15_ValidTrait(sTrait)

	local iMaxDistance = 9
	local iProbability = 10 -- (out of 10)
	local mapLayerAny = MapLayers.ANY

	local tUnits = {}
	for row in GameInfo.Units() do
		if row.Combat > 0 then
			tUnits[row.Index] = row.Combat
		end
	end

-----------------------------------------------
-- FUNCTION CPG_Vlad_III_CityFlip
-- Effect: Flips a city within X tiles
-- Authors: ChimpanG
-----------------------------------------------

function CPG_Vlad_III_CityFlip(newPlayerID, oldPlayerID, newCityID, iX, iY)

	if tTraitPlayers[newPlayerID] then -- Check player trait

		local iRand = GetRandom(1, 10, "Random")
		if iRand <= iProbability then -- roll the dice...

			local pPlayer = Players[newPlayerID]
			local pCities = pPlayer:GetCities()
			local pCity = pCities:FindID(newCityID)

			local pOldPlayer = Players[oldPlayerID]
			local pOldPlayerIsMajor = pOldPlayer:IsMajor()
			print ("pOldPlayerIsMajor:", pOldPlayerIsMajor)
			local pOldCities = pOldPlayer:GetCities()
			local pOldCapital = pOldCities:GetCapitalCity()
			
			if pOldPlayerIsMajor == 1 then -- Check if Major civ

				local iCount = 0
				local pTargetCity
				local iShortestDistance = 1000 -- holder

				for k, pClosestCity in pOldCities:Members() do -- loop through bastard's cities (k = key, v = value)
					if pClosestCity ~= pOldCapital then -- exclude their capital city
	
						local iDistance = Map.GetPlotDistance(pClosestCity:GetX(), pClosestCity:GetY(), iX, iY) -- get distance to captured city
						if iDistance <= iMaxDistance then
							if iDistance <= iShortestDistance then -- check if city is smaller distance than the current smallest distance
								iShortestDistance = iDistance -- overwrite shortest distance variable with new value
				
								local iClosestCity = pClosestCity:GetID()
								pTargetCity = pOldCities:FindID(iClosestCity) -- overwrite variable with new city
								iCount = iCount + 1 -- increase the count
							end
						end
					end
				end

				if iCount > 1 then -- Check that there are other cities within max distance, and there are at least two (so we don't flip their last city)

					pTargetCity:ChangeLoyalty(-110); -- flip that sucker
				end
			end
		end
	end
end		

GameEvents.CityConquered.Add(CPG_Vlad_III_CityFlip);

-----------------------------------------------
-- FUNCTION CPG_Vlad_III_Pillage
-- Effect: Deals damage to enemies adjacent to a pillaged plot
-- Authors: ChimpanG, SeelingCat
-----------------------------------------------

function CPG_Vlad_III_Pillage(playerID, unitID, iImprovement, iBuilding)
	
	if tTraitPlayers[playerID] then -- Check player trait

		local pPlayer = Players[playerID]
		local pPlayerUnits = pPlayer:GetUnits()
		local pUnit = pPlayerUnits:FindID(unitID)

		local iX, iY = pUnit:GetX(), pUnit:GetY() -- Use unit to determine plot coordinates
		local pPillagedPlot = Map.GetPlot(iX, iY) -- Get coordinates of pillaged plot
		local pPlotOwner = Players[pPillagedPlot:GetOwner()] -- Get owner of pillaged plot
		
		for direction = 0, DirectionTypes.NUM_DIRECTION_TYPES - 1, 1 do
			local pAdjacentPlot = Map.GetAdjacentPlot(iX, iY, direction);
			if pAdjacentPlot then -- Check we haven't gone off the edge of the map

				local pUnitPlot = Map.GetPlot(pAdjacentPlot:GetX(), pAdjacentPlot:GetY())
				local tUnitsInPlot = Units.GetUnitsInPlotLayerID(pAdjacentPlot:GetX(), pAdjacentPlot:GetY(), mapLayerAny)
					
				for k, pAdjUnit in ipairs(tUnitsInPlot) do
					if pAdjUnit:GetType() then -- check if there is a unit in the adjacent tile
						local pUnitOwner = Players[pAdjUnit:GetOwner()]

						if (pUnitOwner == pPlotOwner) then  -- check if unit belongs to player we pillaged

							local iCombat = tUnits[pUnit:GetType()] -- get combat strength of pillaging unit
							if iCombat then
								local iDamage = GetRandom(math.floor(iCombat * 0.5), math.floor(iCombat * 0.75), "Random") -- random number between half and 3/4 combat strength of pillaging unit
								
								pAdjUnit:ChangeDamage(iDamage)
							end
						end
					end
				end
			end
		end
	end
end

GameEvents.OnPillage.Add(CPG_Vlad_III_Pillage);