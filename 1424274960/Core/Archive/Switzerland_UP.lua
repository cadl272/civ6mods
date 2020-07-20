-----------------------------------------------
-- SWITZERLAND UP FUNCTION
-- Effect: Dumps a dummy building that provides influence points
-- Author: ChimpanG
-----------------------------------------------

include("Civ6Common.lua");
include("InstanceManager.lua");
include("SupportFunctions.lua");

-----------------------------------------------
-- FUNCTION C15_ValidTrait
-- Credits: Chrisy15

-- function Credits (<3)
-- local LordAndSaviour = 'Chrisy15'
-- if modder:IsChimpanG() then
--    Mod.CallForHelp(LordAndSaviour)
--    print(LordAndSaviour .. " has performed a miracle")
-- end
-- Events.EverythingIsBroken.Add(Credits);
-----------------------------------------------

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

-----------------------------------------------
-- CONSTANTS
-----------------------------------------------

	local sTrait = "TRAIT_CIVILIZATION_CVS_SWITZERLAND_UA"
	local tTraitPlayers = C15_ValidTrait(sTrait)
	local iDummy = GameInfo.Buildings["BUILDING_CVS_SWITZERLAND_UP_DUMMY"].Index;
	local sProject = "PROJECT_CVS_SWITZERLAND_UP"

-----------------------------------------------
-- FUNCTION CPG_Switzerland_ProjectDummy
-- Credits: ChimpanG
-----------------------------------------------

function CPG_Switzerland_ProjectDummy(playerID, cityID, objectGroupID, objectID, bCancelled)

	--print("playerID: ", playerID)
	--print("cityID: ", cityID)
	--print("productionID: ", productionID)
	--print("objectID: ", objectID)
	--print("bCancelled: ", bCancelled)
	
	if tTraitPlayers[playerID] then -- Check player trait
		--print("Player has trait")

		local pPlayer = Players[playerID]
		local pCities = pPlayer:GetCities()
		local pCity = pCities:FindID(cityID)

		if pCity then
			local pCityBuildings = pCity:GetBuildings() -- Get city buildings
			local pQueue = pCity:GetBuildQueue():CurrentlyBuilding() -- Get build queue
			--print ("pQueue: ", pQueue)
			if pQueue == sProject then -- if the city is building the project then...
				--print ("City is building Project")
				-- add dummy building to city
				if pCityBuildings:HasBuilding(iDummy) ~= true then
					local pPlot = Map.GetPlot(pCity:GetX(), pCity:GetY())
					--print("pPlot:", pPlot)
					local iPlot = pPlot:GetIndex()
					--print("iPlot:", iPlot)
					pCity:GetBuildQueue():CreateIncompleteBuilding(iDummy, iPlot, 100)
					--print ("Dummy added")
				end
			else -- if not then...
				--print ("City is not building Project")
				-- remove dummy from city
				if pCityBuildings:HasBuilding(iDummy) then
					pCityBuildings:RemoveBuilding(iDummy)
					--print ("Dummy removed")
				end
			end
		end
	end

	--print ("CPG_Switzerland_ProjectDummy Complete!")

end
				
Events.CityProductionChanged.Add(CPG_Switzerland_ProjectDummy);