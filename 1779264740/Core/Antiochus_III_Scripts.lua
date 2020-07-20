-----------------------------------------------
-- ANTIOCHUS FUNCTIONS
-- Author: ChimpanG
-----------------------------------------------

-----------------------------------------------
-- UTILITIES
-----------------------------------------------

function C15_ValidTrait(sTrait) -- Chrisy of course
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

-----------------------------------------------
-- CONSTANTS
-----------------------------------------------

	local sTrait = "TRAIT_LEADER_CVS_ANTIOCHUS_III_UA"
	local tTraitPlayers = C15_ValidTrait(sTrait)
	
-----------------------------------------------
-- FUNCTION CVS_Antiochus_UA
-- Credits: ChimpanG
-----------------------------------------------

function CVS_Antiochus_UA(newPlayerID, oldPlayerID, cityID, iX, iY)

	local pPlayer = Players[newPlayerID]
	local pCities = pPlayer:GetCities()
	local pCity = pCities:FindID(cityID)

	local pOldPlayer = Players[oldPlayerID]
	local sOldPlayer = PlayerConfigurations[oldPlayerID]:GetCivilizationTypeName()

	local iDummy
	local tBuildingsQuery = DB.Query("SELECT BuildingType FROM CVS_Seleucid_Dummies WHERE CivilizationType = '" .. sOldPlayer .. "'")
	for k, v in ipairs(tBuildingsQuery) do
		iDummy = GameInfo.Buildings[v.BuildingType].Index
	end

	if pCity then
		local pCityBuildings = pCity:GetBuildings()

		if tTraitPlayers[newPlayerID] then
			--print("Player has trait")
			local pPlot = Map.GetPlot(iX, iY)
			local iPlot = pPlot:GetIndex()
			pCity:GetBuildQueue():CreateIncompleteBuilding(iDummy, iPlot, 100)
			--print ("Dummy placed")
		else
			--print("Player does not have trait")
			if pCityBuildings:HasBuilding(iDummy) then
				pCityBuildings:RemoveBuilding(iDummy)
				--print ("Dummy removed")
			end
		end
	end
end

GameEvents.CityConquered.Add(CVS_Antiochus_UA);