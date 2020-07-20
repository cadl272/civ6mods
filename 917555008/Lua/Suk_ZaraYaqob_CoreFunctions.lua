--==========================================================================================================================
-- Author: Sukritact
-- Suk_ZaraYaqob_CoreFunctions
--==========================================================================================================================
print("Suk_ZaraYaqob_CoreFunctions Loaded")
--==========================================================================================================================
-- UTILITY FUNCTIONS
--==========================================================================================================================
-- Credits to Chrisy for this function
--------------------------------------------------------------
function GetPlayersWithTrait(sTrait)
	local tValid = {}
	iLength = 0

	for k, v in pairs(PlayerManager.GetWasEverAliveIDs()) do
		local leaderType = PlayerConfigurations[v]:GetLeaderTypeName()
		for trait in GameInfo.LeaderTraits() do
			if trait.LeaderType == leaderType and trait.TraitType == sTrait then 
				tValid[v] = Players[v]
				iLength = iLength + 1
			end
		end
		if not tValid[v] then
			local civType = PlayerConfigurations[v]:GetCivilizationTypeName()
			for trait in GameInfo.CivilizationTraits() do
				if trait.CivilizationType == civType and trait.TraitType == sTrait then 
					tValid[v] = Players[v]
					iLength = iLength + 1
				end
			end
		end
	end
	return tValid, iLength
end
--==========================================================================================================================
-- TRAIT CHECK
--==========================================================================================================================
local sShotelaiTrait = "TRAIT_CIVILIZATION_UNIT_SUK_SHOTELAI"
local tShotelaiPlayers, iNumValid = GetPlayersWithTrait(sShotelaiTrait)

if iNumValid < 1 then print("No Shotelai players active: aborting"); return end

local sShotelai = "UNIT_SUK_SHOTELAI"; local sShotelaiName = GameInfo.Units[sShotelai].Name
--==========================================================================================================================
-- CORE
--==========================================================================================================================
-- GetUnitTypeInPlot
----------------------------
function GetUnitTypeInPlot(pPlot, sUnitType)
	local tUnits = Units.GetUnitsInPlotLayerID(pPlot, 0)
	for i, pUnit in pairs(tUnits) do

		print(pUnit:GetType())
		print(GameInfo.Units[pUnit:GetType()].UnitType)

		if GameInfo.Units[pUnit:GetType()].UnitType == sUnitType then
			return pUnit
		end
	end

	return
end
----------------------------
-- OnPlayerTurnStarted
----------------------------
function OnPlayerTurnStarted(iPlayer)

	print(iPlayer)

	if not tShotelaiPlayers[iPlayer] then return end

	local pPlayer = Players[iPlayer]
	local pCities = pPlayer:GetCities()

	for i, pCity in pCities:Members() do
		if pCity ~= nil and pCity:GetOwner() == iPlayer then

			local pPlot = Map.GetPlot(pCity:GetX(), pCity:GetY())
			local pShotelai = GetUnitTypeInPlot(pPlot, sShotelai)

			print(pCity, pPlot, pShotelai)

			if pShotelai then
				iReward = 1
				if pPlot:IsHills() then iReward = iReward + 1 end
				if pCity == pCities:GetCapitalCity() then iReward = iReward + 1 end

				pShotelai:GetExperience():ChangeExperience(iReward)
			end

		end
	end

end
GameEvents.PlayerTurnStarted.Add(OnPlayerTurnStarted)
--==========================================================================================================================
--==========================================================================================================================