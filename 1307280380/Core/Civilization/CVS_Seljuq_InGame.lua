-- CVS_Seljuq_InGame
-- Author: thecrazyscotsman
-- DateCreated: 1/23/2018 2:20:46 PM
--------------------------------------------------------------

-----------------------------------
--CULTURE FROM GOLD PER TURN
--AUTHOR: thecrazyscotsman
-----------------------------------
local dCultureMultiplier = 0.1

function CVS_CultureFromGoldPerTurn(iPlayer)
	if (PlayerConfigurations[iPlayer]:GetCivilizationTypeName() == "CVS_CIVILIZATION_SELJUQ") then
		local pPlayer = Players[iPlayer]
		local iGPT = pPlayer:GetTreasury():GetGoldYield()
		local iCultureBoost = dCultureMultiplier * iGPT
		local iCultureBoostRound = math.floor(iCultureBoost)
		local pCapital = pPlayer:GetCities():GetCapitalCity()
		if iGPT > 0 then
			pPlayer:GetCulture():ChangeCurrentCulturalProgress(iCultureBoost)
			if (pPlayer:IsHuman() == true) and (iCultureBoostRound > 0) then
				Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_CULTURE]+{1_Culture} [ICON_Culture][ENDCOLOR]", iCultureBoostRound), pCapital:GetX(), pCapital:GetY(), 0)
			end
		end
	end
end
GameEvents.PlayerTurnStarted.Add(CVS_CultureFromGoldPerTurn)

-----------------------------------
--GET VALID TRAIT UTILITY
--AUTHOR: Chrisy15
-----------------------------------
function C15_GetValidTraitPlayers(sTrait)
    local tValid = {}
    for k, v in pairs(PlayerManager.GetWasEverAliveIDs()) do
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

-----------------------------------
--GET CITY PLOTS UTILITY
--AUTHOR: Chrisy15
-----------------------------------
local iCityRadius = 5

function GetCityPlots(pCity)
	local tTempTable = {}
	if pCity ~= nil then
		local iCityOwner = pCity:GetOwner()
		local iCityX, iCityY = pCity:GetX(), pCity:GetY()
		for dx = (iCityRadius * -1), iCityRadius do
			for dy = (iCityRadius * -1), iCityRadius do
				local pPlotNearCity = Map.GetPlotXYWithRangeCheck(iCityX, iCityY, dx, dy, iCityRadius);
				if pPlotNearCity and (pPlotNearCity:GetOwner() == iCityOwner) and (pCity == Cities.GetPlotPurchaseCity(pPlotNearCity:GetIndex())) then
					table.insert(tTempTable, pPlotNearCity)
				end
			end
		end
	end
	return tTempTable
end

-----------------------------------
--TRADERS ON CARAVANSERAI GRANT GOLD
--AUTHOR: Chrisy15
-----------------------------------
local sTrait = "CVS_TRAIT_CIVILIZATION_IMPROVEMENT_CARAVANSERAI"
local tTraitPlayers = C15_GetValidTraitPlayers(sTrait)

local iGoldAmount = 5
local iCaravanserai = GameInfo.Improvements["CVS_IMPROVEMENT_CARAVANSERAI"].Index
local iTrader = GameInfo.Units["UNIT_TRADER"].Index
local mapLayerAny = MapLayers.ANY

function CVS_GoldFromTraderCaravanserai(playerID)
	if tTraitPlayers[playerID] then
		local pPlayer = Players[playerID]
		local pPlayerCities = pPlayer:GetCities()
		local pPlayerTreasury = pPlayer:GetTreasury()
		for i, pCity in pPlayerCities:Members() do
			local tCityPlots = GetCityPlots(pCity)
			for k, v in ipairs(tCityPlots) do
				local tUnits = Units.GetUnitsInPlotLayerID(v:GetX(), v:GetY(), mapLayerAny)
				if (tUnits ~= nil) and (v:GetImprovementType() == iCaravanserai) then
					for k2, v2 in ipairs(tUnits) do
						if v2:GetType() == iTrader then
							--print("Trader on Caravanserai")
							if pPlayer:IsHuman() then
								Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_GOLD]+{1_Gold} [ICON_Gold][ENDCOLOR]", iGoldAmount), v:GetX(), v:GetY(), 0)
							end
							pPlayerTreasury:ChangeGoldBalance(iGoldAmount)
							--print("Gold Granted")
						end
					end
				end
			end
		end
	end
end
GameEvents.PlayerTurnStarted.Add(CVS_GoldFromTraderCaravanserai)

-----------------------------------
--VIZIER RANDOM BOOSTS
--AUTHOR: thecrazyscotsman
-----------------------------------
local iVizier = GameInfo.Units["CVS_UNIT_VIZIER"].Index
local mapLayerAny = MapLayers.ANY

local tGPs = {}
for row in GameInfo.GreatPersonClasses() do
	if row.GreatPersonClassType ~= "GREATPERSONCLASS_PROPHET" then
		table.insert(tGPs, {ID = row.Index, FontIcon = row.IconString})
	end
end

function GetRandom(iLower, iUpper)
	return Game.GetRandNum((iUpper + 1) - iLower) + iLower
end

function CVS_VizierRandomBoost(playerID)
	local pPlayer = Players[playerID]
	if (PlayerConfigurations[playerID]:GetLeaderTypeName() == "CVS_LEADER_ALP_ARSLAN") then
		local pPlayerCities = pPlayer:GetCities()
		for i, pCity in pPlayerCities:Members() do
			local tUnits = Units.GetUnitsInPlotLayerID(pCity:GetX(), pCity:GetY(), mapLayerAny)
			if tUnits ~= nil then
				for k, v in ipairs(tUnits) do
					if v:GetType() == iVizier then
						print("City at: ",pCity:GetX(),pCity:GetY()," has Vizier")
						local iRandomNumber = GetRandom(1,100)
						print("iRandomNumber: ",iRandomNumber)
						local pCityPopulation = pCity:GetPopulation()
					
						if iRandomNumber >= 5 and iRandomNumber <= 14 then	
							print("Production Boost")
							local iProductionPerPop = pCityPopulation
							local pCityBuildQueue = pCity:GetBuildQueue()
							local sCityQueueItemBuilding = pCity:GetBuildQueue():CurrentlyBuilding()
							if ((sCityQueueItemBuilding ~= "NONE") and (sCityQueueItemBuilding ~= nil)) then    
								pCityBuildQueue:AddProgress(iProductionPerPop)
								if pPlayer:IsHuman() then
									Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_PRODUCTION]+{1_Production} [ICON_Production][ENDCOLOR]", iProductionPerPop), pCity:GetX(), pCity:GetY(), 0)
								end
							end
										
						elseif iRandomNumber >= 20 and iRandomNumber <= 24 then	
							print("Culture Boost")
							local iCulturePerPop = pCityPopulation
							pPlayer:GetCulture():ChangeCurrentCulturalProgress(iCulturePerPop)
							if pPlayer:IsHuman() then
								Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_CULTURE]+{1_Culture} [ICON_Culture][ENDCOLOR]", iCulturePerPop), pCity:GetX(), pCity:GetY(), 0)
							end
										
						elseif iRandomNumber >= 35 and iRandomNumber <= 39 then	
							print("Science Boost")
							local iSciencePerPop = pCityPopulation
							pPlayer:GetTechs():ChangeCurrentResearchProgress(iCulturePerPop)
							if pPlayer:IsHuman() then
								Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_SCIENCE]+{1_Science} [ICON_Science][ENDCOLOR]", iSciencePerPop), pCity:GetX(), pCity:GetY(), 0)
							end
										
						elseif iRandomNumber >= 50 and iRandomNumber <= 59 then	
							print("Faith Boost")
							local iFaithPerPop = pCityPopulation * 2
							pPlayer:GetReligion():ChangeFaithBalance(iFaithPerPop)
							if pPlayer:IsHuman() then
								Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Faith} [ICON_Faith][ENDCOLOR]", iFaithPerPop), pCity:GetX(), pCity:GetY(), 0)
							end
										
						elseif iRandomNumber >= 65 and iRandomNumber <= 74 then	
							print("Gold Boost")
							local iGoldPerPop = pCityPopulation * 2
							pPlayer:GetTreasury():ChangeGoldBalance(iGoldPerPop)
							if pPlayer:IsHuman() then
								Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_GOLD]+{1_Gold} [ICON_Gold][ENDCOLOR]", iGoldPerPop), pCity:GetX(), pCity:GetY(), 0)
							end
										
						elseif iRandomNumber >= 80 and iRandomNumber <= 87 then	
							print("GPP Boost")
							local iGPRandomNumber = GetRandom(1, #tGPs)
							local pPlayerGP = pPlayer:GetGreatPeoplePoints()
							local iPoints = 1
							pPlayerGP:ChangePointsTotal(tGPs[iGPRandomNumber].ID, iPoints)
							if pPlayer:IsHuman() then
								Game.AddWorldViewText(playerID, Locale.Lookup("+{1_GPP} {2_FontIcon}", iPoints, tGPs[iGPRandomNumber].FontIcon), pCity:GetX(), pCity:GetY(), 0)
							end
							--[[local iGPRandomNumber = math.random(1,8)
							print("GPP Boost #: ",iGPRandomNumber)
							local pPlayerGP = pPlayer:GetGreatPeoplePoints()
							local iPoints = 1
						
							if iGPRandomNumber == 1 then
								local iGPClass = GameInfo.GreatPersonClasses["GREAT_PERSON_CLASS_GENERAL"].Index
								pPlayerGP:ChangePointsTotal(iGPClass, iPoints)
								if pPlayer:IsHuman() then
									Game.AddWorldViewText(playerID, Locale.Lookup("+{1_GPP} [ICON_GreatGeneral]", iPoints), pCity:GetX(), pCity:GetY(), 0)
								end
												
							elseif iGPRandomNumber == 2 then
								local iGPClass = GameInfo.GreatPersonClasses["GREAT_PERSON_CLASS_ADMIRAL"].Index
								pPlayerGP:ChangePointsTotal(iGPClass, iPoints)
								if pPlayer:IsHuman() then
									Game.AddWorldViewText(playerID, Locale.Lookup("+{1_GPP} [ICON_GreatAdmiral]", iPoints), pCity:GetX(), pCity:GetY(), 0)
								end
												
							elseif iGPRandomNumber == 3 then
								local iGPClass = GameInfo.GreatPersonClasses["GREAT_PERSON_CLASS_ENGINEER"].Index
								pPlayerGP:ChangePointsTotal(iGPClass, iPoints)
								if pPlayer:IsHuman() then
									Game.AddWorldViewText(playerID, Locale.Lookup("+{1_GPP} [ICON_GreatEngineer]", iPoints), pCity:GetX(), pCity:GetY(), 0)
								end
												
							elseif iGPRandomNumber == 4 then
								local iGPClass = GameInfo.GreatPersonClasses["GREAT_PERSON_CLASS_MERCHANT"].Index
								pPlayerGP:ChangePointsTotal(iGPClass, iPoints)
								if pPlayer:IsHuman() then
									Game.AddWorldViewText(playerID, Locale.Lookup("+{1_GPP} [ICON_GreatMerchant]", iPoints), pCity:GetX(), pCity:GetY(), 0)
								end
												
							elseif iGPRandomNumber == 5 then
								local iGPClass = GameInfo.GreatPersonClasses["GREAT_PERSON_CLASS_SCIENTIST"].Index
								pPlayerGP:ChangePointsTotal(iGPClass, iPoints)
								if pPlayer:IsHuman() then
									Game.AddWorldViewText(playerID, Locale.Lookup("+{1_GPP} [ICON_GreatScientist]", iPoints), pCity:GetX(), pCity:GetY(), 0)
								end
												
							elseif iGPRandomNumber == 6 then
								local iGPClass = GameInfo.GreatPersonClasses["GREAT_PERSON_CLASS_WRITER"].Index
								pPlayerGP:ChangePointsTotal(iGPClass, iPoints)
								if pPlayer:IsHuman() then
									Game.AddWorldViewText(playerID, Locale.Lookup("+{1_GPP} [ICON_GreatWriter]", iPoints), pCity:GetX(), pCity:GetY(), 0)
								end
												
							elseif iGPRandomNumber == 7 then
								local iGPClass = GameInfo.GreatPersonClasses["GREAT_PERSON_CLASS_ARTIST"].Index
								pPlayerGP:ChangePointsTotal(iGPClass, iPoints)
								if pPlayer:IsHuman() then
									Game.AddWorldViewText(playerID, Locale.Lookup("+{1_GPP} [ICON_GreatArtist]", iPoints), pCity:GetX(), pCity:GetY(), 0)
								end
												
							else
								local iGPClass = GameInfo.GreatPersonClasses["GREAT_PERSON_CLASS_MUSICIAN"].Index
								pPlayerGP:ChangePointsTotal(iGPClass, iPoints)
								if pPlayer:IsHuman() then
									Game.AddWorldViewText(playerID, Locale.Lookup("+{1_GPP} [ICON_GreatMusician]", iPoints), pCity:GetX(), pCity:GetY(), 0)
								end
							end]]
										
						elseif iRandomNumber == 99 then	
							print("Population Boost")
							local iPopulationChange = 1
							pCity:ChangePopulation(iPopulationChange)
							if pPlayer:IsHuman() then
								Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_FOOD]+{1_Citizen} [ICON_Citizen][ENDCOLOR]", iPopulationChange), pCity:GetX(), pCity:GetY(), 0)
							end
										
						elseif iRandomNumber == 100 then	
							print("Free Builder")
							local iFreeBuilder = GameInfo.Units["UNIT_BUILDER"].Index
							pPlayer:GetUnits():Create(iFreeBuilder, pCity:GetX(), pCity:GetY())
							if pPlayer:IsHuman() then
								Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_FOOD]Free Builder[ENDCOLOR]"), pCity:GetX(), pCity:GetY(), 0)
							end

						else
							print("No Boost")
							return false
						end
					end
				end
			end
		end
	end
end
GameEvents.PlayerTurnStarted.Add(CVS_VizierRandomBoost)	