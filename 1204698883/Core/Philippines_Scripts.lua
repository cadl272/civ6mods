-----------------------------------------------
-- PHILIPPINES SCRIPTS
-----------------------------------------------

-----------------------------------------------
-- UTILITIES
-----------------------------------------------

function C15_GetValidTraitPlayersNew(sTrait)
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

local tResources = {}
for row in GameInfo.Resources() do -- Thinking about it this could be combined with tImprovableResources, but for the sake of modularity it's probably better to keep them seperate.
    tResources[row.Index] = {}
    if row.PrereqTech then
        tResources[row.Index].PrereqTech = GameInfo.Technologies[row.PrereqTech].Index
    end
    if row.PrereqCivic then
        tResources[row.Index].PrereqCivic = GameInfo.Civics[row.PrereqCivic].Index
    end
end

function C15_HasPlayerUnlockedResourcePrereq(playerID, resourceID)
    local pPlayer = Players[playerID]
    local pPlayerTechs = pPlayer:GetTechs()
    local pPlayerCulture = pPlayer:GetCulture()
    local tResourcePrereqs = tResources[resourceID]
    if not tResourcePrereqs then return true end
    if tResourcePrereqs.PrereqTech then
        return pPlayerTechs:HasTech(tResourcePrereqs.PrereqTech)
    elseif tResourcePrereqs.PrereqCivic then
        return pPlayerCulture:HasCivic(tResourcePrereqs.PrereqCivic)
    else
        return true
    end
end
--[[
-- Forces a call to gamecore and cache update.
function RefreshObjectState(pObject : object, sPropertyName : string)
	if (sPropertyName == nil) then
		return nil;
	end

	if (pObject.GetProperty == nil) then
		return nil;
	end	

	local propResult = pObject:GetProperty(sPropertyName);

	if (g_ObjectStateCache[pObject] == nil) then
		g_ObjectStateCache[pObject] = {};
	end

	g_ObjectStateCache[pObject][sPropertyName] = propResult;
	return propResult;
end
--]]
-----------------------------------------------
-- CONSTANTS
-----------------------------------------------

local sTrait = "TRAIT_CIVILIZATION_CVS_PHILIPPINES_UA";
local tTraitPlayers = C15_GetValidTraitPlayersNew(sTrait)

local tDistricts = {}
local tDistrictQuery = DB.Query("SELECT DISTINCT DistrictType FROM District_GreatPersonPoints WHERE DistrictType NOT IN (SELECT CivUniqueDistrictType FROM DistrictReplaces)")
for k, v in ipairs(tDistrictQuery) do
	tDistricts[GameInfo.Districts[v.DistrictType].Index] = true
end

local tImprovements = {}
local tImprovementQuery = DB.Query("SELECT DISTINCT ImprovementType FROM Improvement_ValidResources WHERE ImprovementType IN (SELECT ImprovementType FROM Improvements WHERE TraitType IS NULL AND ImprovementType IS NOT 'IMPROVEMENT_FORT')") -- Don't really want to pick up UTIs, since they'll mess with stuff. Also includes ModSupport for TC's Strategic Forts.
for k, v in ipairs(tImprovementQuery) do
	table.insert(tImprovements, GameInfo.Improvements[v.ImprovementType].Index)
end

local tImprovableResources = {} -- Not all Resources are improvable
local tResourceQuery = DB.Query("SELECT DISTINCT ResourceType FROM Improvement_ValidResources")
for k, v in ipairs(tResourceQuery) do
	tImprovableResources[GameInfo.Resources[v.ResourceType].Index] = true
end

-----------------------------------------------
-- FUNCTION CPG_Philippines_DistrictComplete
-- Authors: ChimpanG, Chrisy15
-----------------------------------------------

function CPG_Philippines_DistrictComplete(playerID, districtID, cityID, districtX, districtY, iDistrictType, iUnknown1, iUnknown2, iPercentComplete)
	
	if iPercentComplete == 100 and tTraitPlayers[playerID] then
		
		local pPlayer =	Players[playerID]
		local pCities = pPlayer:GetCities()
		local pCity = pCities:FindID(cityID)
	
		if tDistricts[iDistrictType] then
			for direction = 0, DirectionTypes.NUM_DIRECTION_TYPES - 1, 1 do
				local pAdjacentPlot = Map.GetAdjacentPlot(districtX, districtY, direction);
				
				if pAdjacentPlot then -- Check we haven't gone off the edge of the map
					local iResource = pAdjacentPlot:GetResourceType()
					if iResource > -1 and C15_HasPlayerUnlockedResourcePrereq(playerID, iResource) then

						if tImprovableResources[iResource] then
--[[ Grab Adjacent Plot	
							local pPlotOwner = pAdjacentPlot:GetOwner()
							print ("pPlotOwner: ", pPlotOwner)

							if pPlotOwner == -1 then -- Check if plot is not owned by anybody
								local iX, iY = pAdjacentPlot:GetX(), pAdjacentPlot:GetY()
								local pPlot = Map.GetPlot(iX, iY);
								WorldBuilder.CityManager():SetPlotOwner(pPlot, pCity)
							end
-- /Grab Adjacent Plot ]]
							for k, v in ipairs(tImprovements) do
								if ImprovementBuilder.CanHaveImprovement(pAdjacentPlot, v, playerID) then
									ImprovementBuilder.SetImprovementType(pAdjacentPlot, v, playerID)
									break
								end
							end
						end
					end					
				end
			end
		end
	end
end
					
Events.DistrictBuildProgressChanged.Add(CPG_Philippines_DistrictComplete);
