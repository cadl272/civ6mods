-- Author: Chrisy15

local tUnits = {}
local tQuery = DB.Query("SELECT UnitType, PrereqTech, PrereqCivic, Combat FROM Units WHERE (PrereqCivic NOT NULL OR PrereqTech NOT NULL) AND Combat > 0 AND PromotionClass = 'PROMOTION_CLASS_MELEE'")
for k, v in ipairs(tQuery) do
    tUnits[GameInfo.Units[v.UnitType].Index] = {["PrereqTech"] = v.PrereqTech, ["PrereqCivic"] = v.PrereqCivic, ["Combat"] = v.Combat}
end

local tStratRes = {}
local tResources = {}
for row in GameInfo.Resources() do
    tResources[row.Index] = {}
    if row.PrereqTech then
        tResources[row.Index].PrereqTech = GameInfo.Technologies[row.PrereqTech].Index
    end
    if row.PrereqCivic then
        tResources[row.Index].PrereqCivic = GameInfo.Civics[row.PrereqCivic].Index
    end
	-- Special Case Edit - not needed if you're just pikeying this function for your own use
	if row.ResourceClassType == "RESOURCECLASS_STRATEGIC" then
		tStratRes[row.Index] = true
	end
	-- /SpecialCase
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

function JFD_GetStrongestMeleeUnit(player)
	local unitID = nil
	local unitCombat = 0
	for row in GameInfo.Units() do
		if (row.FormationClass == "FORMATION_CLASS_LAND_COMBAT" and row.Combat > 0 and row.Combat > unitCombat and (not row.TraitType)) then
			if (((row.PrereqTech and player:GetTechs():HasTech(GameInfo.Technologies[row.PrereqTech].Index)) or (row.PrereqCivic and player:GetCulture():HasCivic(GameInfo.Civics[row.PrereqCivic].Index))) or (not row.PrereqTech and not row.PrereqCivic)) then
				if ((not row.StrategicResource) or (row.StrategicResource and player:GetResources():HasResource(GameInfo.Resources[row.StrategicResource]))) then  
					unitID = row.Index
					unitCombat = row.Combat
				end
			end
		end
	end	
	return unitID
end	

function C15_GetConqueredCities(playerID)
	local tCities = {}
	local pPlayer = Players[playerID]
	local pPlayerCities = pPlayer:GetCities()
	for i, pCity in pPlayerCities:Members() do
		if pCity:GetOriginalOwner() ~= playerID then
			table.insert(tCities, pCity:GetID())
		end
	end
	return tCities
end

function RoundDecimal(iNumber, iSigDecimals)
	local mult = 10^(iSigDecimals or 0)
	local iOriginalInteger, iFraction = math.modf(iNumber)
	return iOriginalInteger + (math.floor(iFraction * mult + 0.5) / mult)
end

local iCityRadius = 3
function GetCityWorkedStratResPlots(pCity) -- Lee with modifications by myself
    local tTempTable = {}
    if pCity ~= nil then
        local iCityOwner = pCity:GetOwner()
        local iCityX, iCityY = pCity:GetX(), pCity:GetY()
        for dx = (iCityRadius * -1), iCityRadius do
            for dy = (iCityRadius * -1), iCityRadius do
                local pPlotNearCity = Map.GetPlotXYWithRangeCheck(iCityX, iCityY, dx, dy, iCityRadius);
                if pPlotNearCity and (pPlotNearCity:GetOwner() == iCityOwner) and (pCity == Cities.GetPlotPurchaseCity(pPlotNearCity:GetIndex())) and (pPlotNearCity:GetWorkerCount() > 0) then
					local iResource = pPlotNearCity:GetResourceType()
					if (tResources[iResource]) then
						table.insert(tTempTable, {pPlot = pPlotNearCity, resourceID = iResource})
					end
                end
            end
        end
    end
    return tTempTable
end
--[[
function HasLeaderTrait(leaderType, traitType)
	for row in GameInfo.LeaderTraits() do
		if (row.LeaderType == leaderType and row.TraitType == traitType) then return true end
	end
	return false
end

function HasCivilizationTrait(civilizationType, traitType)
	for row in GameInfo.CivilizationTraits() do
		if (row.CivilizationType == civilizationType and row.TraitType == traitType) then return true end
	end
	return false
end
]]

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


local iCompBow = GameInfo.Units["UNIT_CVS_AKKAD_UU"].Index
local sAkkadTrait = "TRAIT_CIVILIZATION_CVS_AKKAD_UA"
local iProduction = GameInfo.Yields["YIELD_PRODUCTION"].Index

local tValidAkkadPlayers = C15_GetValidTraitPlayersNew(sAkkadTrait)

function C15_Akkad_CompBowTrain(playerID, cityID, iConstructionType, unitID, bCancelled)
	if iConstructionType ~= 0 then return end
	if bCancelled then return end
	if unitID == iCompBow then
		local pPlayer = Players[playerID]
		local pPlayerTechs = pPlayer:GetTechs()
		local iScience = math.floor(pPlayerTechs:GetScienceYield())
		if pPlayer:IsHuman() then
			local pPlayerCities = pPlayer:GetCities()
			local pCity = pPlayerCities:FindID(cityID)
			Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_SCIENCE]+{1_Science} [ICON_Science][ENDCOLOR]", iScience), pCity:GetX(), pCity:GetY(), 0)
		end
		pPlayerTechs:ChangeCurrentResearchProgress(iScience)
	end
end

Events.CityProductionCompleted.Add(C15_Akkad_CompBowTrain)

function C15_Akkad_ConquerCityDoTurn(playerID)
	if tValidAkkadPlayers[playerID] then
		local tConqCities = C15_GetConqueredCities(playerID)
		if tConqCities and #tConqCities > 0 then
			local iConqCityCount = #tConqCities
			local pPlayer = Players[playerID]
			--local pPlayerCulture = pPlayer:GetCulture()
			--pPlayerCulture:ChangeCurrentCulturalProgress(iConqCityCount^2)
			-- Seacat is truly a genius at pleasing my fed up mind
			--local pPlayerGold = pPlayer:GetTreasury()
			--pPlayerGold:ChangeGoldBalance(iConqCityCount^2)
			-- Rip
			local bHuman = pPlayer:IsHuman()
			local pPlayerCities = pPlayer:GetCities()
			local iNumFoundedCities = pPlayerCities:GetCount() - iConqCityCount
			local iProdFromStratRes = 0
			for k, v in ipairs(tConqCities) do
				local pCity = pPlayerCities:FindID(v)
				local tStratResPlots = GetCityWorkedStratResPlots(pCity)
				if tStratResPlots and #tStratResPlots > 0 then
					for k2, v2 in ipairs(tStratResPlots) do
						if C15_HasPlayerUnlockedResourcePrereq(playerID, v2.resourceID) then
							iProdFromStratRes = iProdFromStratRes + v2.pPlot:GetYield(iProduction)
						end
					end
				end
				if bHuman then				
					--Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_CULTURE]+{1_Cult} [ICON_Culture][ENDCOLOR]", iConqCityCount), pCity:GetX(), pCity:GetY(), 0)
					--Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_GOLD]+{1_Gold} [ICON_Gold][ENDCOLOR]", iConqCityCount), pCity:GetX(), pCity:GetY(), 0)
				end
			end
			if iProdFromStratRes > 0 then
				local iProdSplit = RoundDecimal(iProdFromStratRes / iNumFoundedCities, 1)
				local iCounter = 0
				for i, pCity in pPlayerCities:Members() do
					if pCity:GetOriginalOwner() == playerID then
						local pCityBuildQueue = pCity:GetBuildQueue()
						pCityBuildQueue:AddProgress(iProdSplit)
						iCounter = iCounter + 1
						if bHuman then
							Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_PRODUCTION]+{1_Prod} [ICON_Production][ENDCOLOR]", iProdSplit), pCity:GetX(), pCity:GetY(), 0)
						end
						if iCounter == iNumFoundedCities then break end
					end
				end
			end
		end
	end
end

GameEvents.PlayerTurnStarted.Add(C15_Akkad_ConquerCityDoTurn)

--[[
function C15_Akkad_BuilderTrain(playerID, cityID, iConstructionType, unitID, bCancelled)
	if iConstructionType ~= 0 then return end
	if bCancelled then return end
	if unitID == iBuilder then
		local pPlayerConfig = PlayerConfigurations[playerID]
		local sLeader = pPlayerConfig:GetLeaderTypeName()
		if HasLeaderTrait(sLeader, sSargonTrait) then
			local pPlayer = Players[playerID]
			local iUnit = JFD_GetStrongestMeleeUnit(pPlayer)
			if iUnit then
				local pPlayerCities = pPlayer:GetCities()
				local pCity = pPlayerCities:FindID(cityID)
				local pPlayerUnits = pPlayer:GetUnits()
				local pUnit = pPlayerUnits:Create(iUnit, pCity:GetX(), pCity:GetY())
			end
		end
	end
end

Events.CityProductionCompleted.Add(C15_Akkad_BuilderTrain)

]]