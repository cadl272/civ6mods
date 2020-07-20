-- Suk_Monthon_System.lua
-- Author: Sukritact
print("loaded")
--==========================================================================================================================
-- UTILITY FUNCTIONS
--==========================================================================================================================
-- Credits to Chrisy for this function
--------------------------------------------------------------
function GetPlayersWithTrait(sTrait)
	local tValid = {}
	local iCount = 0
	for k, v in pairs(PlayerManager.GetWasEverAliveIDs()) do
		local leaderType = PlayerConfigurations[v]:GetLeaderTypeName()
		for trait in GameInfo.LeaderTraits() do
			if trait.LeaderType == leaderType and trait.TraitType == sTrait then 
				tValid[v] = true
				iCount = iCount + 1
			end;
		end
		if not tValid[v] then
			local civType = PlayerConfigurations[v]:GetCivilizationTypeName()
			for trait in GameInfo.CivilizationTraits() do
				if trait.CivilizationType == civType and trait.TraitType == sTrait then 
					tValid[v] = true 
					iCount = iCount + 1
				end;
			end
		end
	end
	return tValid, iCount
end
--==========================================================================================================================
-- CORE FUNCTIONS
--==========================================================================================================================
-- An unused [ICON_ENVOY] Envoy is converted to a [Icon_Governor] Governor Title when the Govenment Plaza or a Government Plaza Building is constructed.
--------------------------------------------------------------
local sMonthonTrait							= "TRAIT_LEADER_SUK_MONTHON_SYSTEM"
local tMonthonPlayers, iMonthonPlayers		= GetPlayersWithTrait(sMonthonTrait)
if (iMonthonPlayers < 1) then print("No Chulalongkorn players active: aborting"); return end -- Don't bother continuing if Chulalongkorn is not in game.

local tValidTypes		= {}
	tValidTypes["DISTRICT_GOVERNMENT"] = true
	for tBuilding in GameInfo.Buildings() do 
		if tBuilding.PrereqDistrict == "DISTRICT_GOVERNMENT" then tValidTypes[tBuilding.BuildingType] = true end
	end

local iMinReq			= 1;
---------------------------

function OnCityProductionCompleted(iPlayer, iCity, iOrder, iType, bCanceled, iTypeMod)

	if bCanceled then return end
	if not tMonthonPlayers[iPlayer] then return end

	--------------------------------------
	-- Get Type
	--------------------------------------
	local tType
	local sType = ""
	if iOrder == 0  then -- OrderTypes.ORDER_TRAIN
		tType = GameInfo.Units[iType]
		if tType ~= nil then
			sType = tType.UnitType
		end
	elseif iOrder == 1  then -- OrderTypes.ORDER_CONSTRUCT
		tType = GameInfo.Buildings[iType]
		if tType ~= nil then
			sType = tType.BuildingType
		end
	elseif iOrder == 2  then -- OrderTypes.ORDER_ZONE
		tType = GameInfo.Districts[iType]
		if tType ~= nil then
			sType = tType.DistrictType
		end
	end
	--------------------------------------
	--------------------------------------
	if (not tValidTypes[sType]) then return end

	local pPlayer			= Players[iPlayer]
	local pPlayerInfl		= pPlayer:GetInfluence()
	local pPlayerGov		= pPlayer:GetGovernors()

	local iEnvoys			= pPlayerInfl:GetTokensToGive()
	if iEnvoys < iMinReq then return end

	pPlayerInfl:ChangeTokensToGive(-iMinReq)
	pPlayerGov:ChangeGovernorPoints(iMinReq)

	-- print("Gave token to player")
	-- pPlayer	= Players[iPlayer]
	-- pCity	= CityManager.GetCity(iPlayer, iCity)
	-- print(PlayerConfigurations[iPlayer]:GetLeaderTypeName(), pCity:GetName(), sType)
end
Events.CityProductionCompleted.Add(OnCityProductionCompleted)
--==========================================================================================================================
--==========================================================================================================================