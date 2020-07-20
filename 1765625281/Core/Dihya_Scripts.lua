function C15_GetValidTraitPlayers(sTrait)
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

local sTrait = "TRAIT_LEADER_CVS_DIHYA_UA"
local tTraitPlayers = C15_GetValidTraitPlayers(sTrait)
local iDamageNumber = 30
local mapLayerAny = MapLayers.ANY

function SC_BerberPillage(playerID, unitID, iImprovement, iBuildingType)
	local pPlayer = Players[playerID]
	local pPlayerUnits = pPlayer:GetUnits()
	local pUnit = pPlayerUnits:FindID(unitID)
	local pPillagingUnitOwner = pUnit:GetOwner()
	print("Player = ",pPillagingUnitOwner,"; Unit = ",pUnit)
	if iImprovement < 0 then return
		print ("No Improvement Found")
	end
	if pUnit then
		local iX, iY = pUnit:GetX(), pUnit:GetY()
		---print ("Coordinates of Unit: ",iX," ,",iY)
		local pPlot = Map.GetPlot(iX,iY)
		---print ("Map Plot = ", pPlot)
		local pPlotOwner = pPlot:GetOwner()
		---print ("Owner of Tile is: ",pPlotOwner)
		if tTraitPlayers[pPlotOwner] then
			print ("Tile owned by Dihya was pillaged!")
			for direction = 0, DirectionTypes.NUM_DIRECTION_TYPES - 1, 1 do
				local pAdjacentPlot = Map.GetAdjacentPlot(iX, iY, direction)
				if pAdjacentPlot then
					---print ("Checking adjacent tile, coordinates are: ", pAdjacentPlot:GetX(), pAdjacentPlot:GetY())
					local tUnits = Units.GetUnitsInPlotLayerID(pAdjacentPlot:GetX(), pAdjacentPlot:GetY(), mapLayerAny)
					for k, pAdjUnit in ipairs(tUnits) do
						if pAdjUnit:GetType() then
							print ("Unit(s) Found in adjacent tile!")
							local pUnitOwner = pAdjUnit:GetOwner()
							---print ("Unit's owner is ", pUnitOwner)
							if pUnitOwner == pPillagingUnitOwner then
								---print ("Owner of unit in adjacent tile matches that of the original pillager")
								pAdjUnit:ChangeDamage(iDamageNumber)
								print ("Unit takes ",iDamageNumber," damage")
							end
						end
					end
				end
			end
			local tUnitsCenter = Units.GetUnitsInPlotLayerID(iX, iY, mapLayerAny)
			if (tUnitsCenter ~= nil) then
				for k, pCenterUnit in ipairs(tUnitsCenter) do
					if pCenterUnit:GetType() then
						print ("Unit(s) found in pillaged tile.")
						local pUnitOwner = pCenterUnit:GetOwner()
						---print ("Unit's owner is ", pUnitOwner)
						if pUnitOwner == pPillagingUnitOwner then
							---print ("Owner of unit in pillaged tile matches that of the original pillager")
							pCenterUnit:ChangeDamage(iDamageNumber)
							print ("Unit takes ",iDamageNumber," damage")
						end
					else
						print ("No unit found on pillaged tile?!")
					end
				end
			else
			print ("tUnitsCenter is empty; No units found in pillaged tile.")
			end
		end
	end
end


GameEvents.OnPillage.Add(SC_BerberPillage)