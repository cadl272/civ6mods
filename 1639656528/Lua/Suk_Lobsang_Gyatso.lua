-- Suk_Lobsang
-- Author: Sukritact
-- DateCreated: 12/16/2018 6:57:56 PM
print("loaded")
--==========================================================================================================================
-- UTILITY FUNCTIONS
--==========================================================================================================================
-- Credits to Chrisy for this function
--------------------------------------------------------------
function GetPlayersWithTrait(sTrait)
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
--==========================================================================================================================
-- CORE FUNCTIONS
--==========================================================================================================================
-- Receive [ICON_GreatWriter] Great Writer points whenever a religious unit expends a charge outside friendly territory.
----------------------------------------------------------------------------------------------------------------------------
local sLobsangTrait		= "TRAIT_LEADER_SUK_HISTORY_OF_TIBET"
local tLobsangPlayers	= GetPlayersWithTrait(sLobsangTrait)

local tValidUnits		= {}
for tRow in GameInfo.Units() do
	if tRow.TrackReligion then
		tValidUnits[tRow.UnitType] = true
	end
end

local iMod				= (GameInfo.GameSpeeds[GameConfiguration.GetGameSpeedType()].CostMultiplier)/100
local iBonus			= math.max(math.floor((5 * iMod) + 0.5), 1)
local iWriter			= GameInfo.GreatPersonClasses["GREAT_PERSON_CLASS_WRITER"].Index
local sNotification		= "LOC_TRAIT_LEADER_SUK_HISTORY_OF_TIBET_NOTIFICATION"
----------------------------------------------------------------------------------------------------------------------------
function OnUnitChargesChanged(iPlayer, iUnit, iCharges_New, iCharges_Old)

	if not tLobsangPlayers[iPlayer] then return end

	--print(iPlayer, iUnit, iCharges_New, iCharges_Old)

	if not(iCharges_New < iCharges_Old) then return end

	local pUnit = UnitManager.GetUnit(iPlayer, iUnit)
	if not pUnit then return end

	local sUnitType = GameInfo.Units[pUnit:GetType()].UnitType
	if not tValidUnits[sUnitType] then return end

	local iX = Game.GetProperty(iPlayer .. "_Lobsang_X_" .. iUnit) or pUnit:GetX()
	local iY = Game.GetProperty(iPlayer .. "_Lobsang_Y_" .. iUnit) or pUnit:GetY()
	--print(iX, iY)
	
	local pPlot = Map.GetPlot(iX, iY)
	local iPlotOwner = pPlot:GetOwner()
	if iPlayer == iPlotOwner then return end

	--print(Locale.Lookup(sNotification, iBonus))
	Players[iPlayer]:GetGreatPeoplePoints():ChangePointsTotal(iWriter, iBonus)
	Game.AddWorldViewText(0, Locale.Lookup(sNotification, iBonus), iX, iY, Game.GetLocalPlayer())
end
Events.UnitChargesChanged.Add(OnUnitChargesChanged)

function OnUnitMoved(iPlayer, iUnit, iX, iY)
	if not tLobsangPlayers[iPlayer] then return end

	--print(iPlayer, iUnit, iX, iY)

	local pUnit = UnitManager.GetUnit(iPlayer, iUnit)
	if not pUnit then return end

	if pUnit:IsDead() then return end

	local sUnitType = GameInfo.Units[pUnit:GetType()].UnitType
	if not tValidUnits[sUnitType] then return end

	Game.SetProperty(iPlayer .. "_Lobsang_X_" .. iUnit, iX)
	Game.SetProperty(iPlayer .. "_Lobsang_Y_" .. iUnit, iY)
end
Events.UnitMoved.Add(OnUnitMoved);
--==========================================================================================================================
--==========================================================================================================================