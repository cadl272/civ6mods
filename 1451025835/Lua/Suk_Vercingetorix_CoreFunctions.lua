--==========================================================================================================================
-- SUK_VERCINGETORIX_COREFUNCTIONS
-- Author: Sukritact
--==========================================================================================================================
print("Suk_Vercingetorix_CoreFunctions: Loaded")
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
--------------------------------------------------------------
--GetPlotsInRange

--This function returns an array of plots in a given radius of a tile, including itself
--(i.e, a radius of 1 would return 7 plots, the centre and 6 surrounding ones)
--------------------------------------------------------------
function GetPlotsInRange(iX, iY, iRange)
	local tTempTable = {}

	for dx = (iRange * -1), iRange do
		for dy = (iRange * -1), iRange do
			local pOtherPlot = Map.GetPlotXYWithRangeCheck(iX, iY, dx, dy, iRange);
			if pOtherPlot then
				table.insert(tTempTable, pOtherPlot)
			end
		end
	end

	return tTempTable
end
--==========================================================================================================================
-- CORE FUNCTIONS
--==========================================================================================================================
-- When an Oathsworn is killed in combat, all friendly adjacent land combat units heal for 40 HP.
----------------------------------------------------------------------------------------------------------------------------
-- Defines
--------------------------------------------------------------
local sOathsworn			= "UNIT_SUK_OATHSWORN"
local iHeal					= 40

local tOathswornPlayers, iOathswornPlayers		= GetPlayersWithTrait("TRAIT_CIVILIZATION_UNIT_SUK_OATHSWORN")
if (iOathswornPlayers < 1) then print("No Oathsworn players active: aborting"); return end -- Don't bother continuing if nobody can train Oathsworns

local tLandCombatUnits	= {}
for tRow in GameInfo.Units() do
	if tRow.FormationClass == 'FORMATION_CLASS_LAND_COMBAT' then
		tLandCombatUnits[tRow.UnitType] = true
	end
end

function ProcessOathswornCombat(tUnit)
	tUnit.IsUnit 	= tUnit[CombatResultParameters.ID].type == ComponentType.UNIT

	if not(tUnit.IsUnit) then return end
	tUnit.IsDead 	= tUnit[CombatResultParameters.FINAL_DAMAGE_TO] >= tUnit[CombatResultParameters.MAX_HIT_POINTS]
	tUnit.playerID 	= tUnit[CombatResultParameters.ID].player
	tUnit.unitID 	= tUnit[CombatResultParameters.ID].id

	if not(tUnit.IsDead) then return end
	tUnit.unit		= UnitManager.GetUnit(tUnit.playerID, tUnit.unitID)

	if not tUnit.unit then return end
	local iUnitType = tUnit.unit:GetType()

	if not iUnitType then return end
	local tUnitType = GameInfo.Units[iUnitType]

	if not tUnitType then return end
	tUnit.unitType	= tUnitType.UnitType

	if not(tUnit.unitType == sOathsworn) then return end
	tUnit.X = tUnit[CombatResultParameters.LOCATION].x
	tUnit.Y = tUnit[CombatResultParameters.LOCATION].y

	if tUnit.X > -1 then
		local tPlots = GetPlotsInRange(tUnit.X, tUnit.Y, 1)
		for _, pAdjacentPlot in pairs(tPlots) do
			local tUnitList = Units.GetUnitsInPlotLayerID( pAdjacentPlot:GetX(), pAdjacentPlot:GetY(), MapLayers.ANY );
			for _, pUnit in pairs(tUnitList) do
				if pUnit:GetOwner() == tUnit.playerID then
					local sUnitType = GameInfo.Units[pUnit:GetType()].UnitType
					if tLandCombatUnits[sUnitType] then
						pUnit:ChangeDamage(-iHeal)
					end
				end
			end
		end
	end

end

function OnCombat( tCombatResult )

	local tAttacker = tCombatResult[CombatResultParameters.ATTACKER]
	local tDefender = tCombatResult[CombatResultParameters.DEFENDER]
	ProcessOathswornCombat(tAttacker)
	ProcessOathswornCombat(tDefender)

end
Events.Combat.Add( OnCombat )