--==========================================================================================================================
-- SUK_LORENZO_COREFUNCTIONS
-- Author: Sukritact
--==========================================================================================================================
print("loaded")
--==========================================================================================================================
-- UTILITY FUNCTIONS
--==========================================================================================================================
--LeaderHasTrait
----------------------------
function LeaderHasTrait(sLeader, sTrait)
	for tRow in GameInfo.LeaderTraits() do
		if (tRow.LeaderType == sLeader and tRow.TraitType == sTrait) then return true end
	end
	return false
end
----------------------------
-- GetRandom
-- Stolen from Sukritact and complicated a bit
----------------------------
function GetRandom(iLower, iUpper, sReason)
    local sWhatfor = "NO_REASON"
    if (sReason ~= nil) and (type(sReason) == "string") then
        sWhatfor = sReason
    end
    --return Game.GetRandNum((iUpper + 1) - iLower, sWhatfor) + iLower
    return TerrainBuilder.GetRandomNumber((iUpper + 1) - iLower, sWhatfor) + iLower
end
----------------------------
-- IsPlotHasUnitFormationClass
----------------------------
function IsPlotHasUnitFormationClass(pPlot, sClass)
	local tUnits = Units.GetUnitsInPlotLayerID(pPlot, 0)
	for i, pUnit in pairs(tUnits) do
		local tUnitType = GameInfo.Units[pUnit:GetType()]
		if tUnitType.FormationClass == sClass then return true end
	end

	return false
end
----------------------------
-- GetValidUnits
----------------------------
function GetValidUnits(iPlayer, tUnits)

	local tValidUnits = {}

	-- Get Tech, Cult, and Resources
	local pPlayer = Players[iPlayer]
	local pPlayerTechs = pPlayer:GetTechs()
	local pPlayerCulture = pPlayer:GetCulture()
	local pPlayerResources = pPlayer:GetResources()

	-- Get Traits
	local pPlayerConfig = PlayerConfigurations[iPlayer]
	local sLeader = pPlayerConfig:GetLeaderTypeName()
	local sCiv = pPlayerConfig:GetCivilizationTypeName()
	local tTraits = {}

	for tRow in GameInfo.LeaderTraits() do
		if (tRow.LeaderType == sLeader) then tTraits[tRow.TraitType] = true end
	end		
	for tRow in GameInfo.CivilizationTraits() do
		if (tRow.CivilizationType == sCiv) then tTraits[tRow.TraitType] = true end
	end

	-- Get Unique Units
	local tUniques = {}
	for tRow in GameInfo.UnitReplaces() do
		
		if not tUniques[tRow.ReplacesUnitType] then tUniques[tRow.ReplacesUnitType] = {} end
		local sTrait = GameInfo.Units[tRow.CivUniqueUnitType].TraitType
		if sTrait then table.insert(tUniques[tRow.ReplacesUnitType], sTrait) end

	end		

	for i, tUnit in pairs(tUnits) do
		local sTech			= tUnit.PrereqTech
		local sTechObs		= tUnit.MandatoryObsoleteTech
		local sCivic		= tUnit.PrereqCivic
		local sCivicObs 	= tUnit.MandatoryObsoleteCivic
		local sResource		= tUnit.StrategicResource
		local sTrait		= tUnit.TraitType

		local bTech			=	not(sTech) or pPlayerTechs:HasTech(GameInfo.Technologies[sTech].Index)
		local bTechObs		=	not(sTechObs) or not pPlayerTechs:HasTech(GameInfo.Technologies[sTechObs].Index)
		local bCivic		=	not(sCivic) or pPlayerCulture:HasCivic(GameInfo.Civics[sCivic].Index)
		local bCivicObs		=	not(sCivicObs) or not pPlayerCulture:HasCivic(GameInfo.Civics[sCivicObs].Index)
		local bResource		=	not(sResource) or pPlayerResources:HasResource(GameInfo.Resources[sResource].Index)
		local bTrait		=	not(sTrait) or tTraits[sTrait]

		if tUniques[tUnit.UnitType] then
			for i, sTrait in pairs(tUniques[tUnit.UnitType]) do
				if tTraits[sTrait] then
					bTrait =  false
					break
				end
			end
		end

		if bTech and bTechObs and bCivic and bCivicObs and bResource and bTrait then
			table.insert(tValidUnits, tUnit)
		end
	end

	return tValidUnits
end
--==========================================================================================================================
-- Don't Continue without Senusret III
--==========================================================================================================================
local sTrait = "TRAIT_LEADER_SUK_FORTRESS_OF_BUHEN"
local bTraitActive = false

for iLoopPlayer = 0, 62 do
	if Players[iLoopPlayer]:IsAlive() then
		local pPlayerConfig = PlayerConfigurations[iLoopPlayer]
		local sLeader = pPlayerConfig:GetLeaderTypeName()

		if LeaderHasTrait(sLeader, sTrait) then
			bTraitActive = true
			break
		end
	end
end

print (sTrait .. " is active: " ..  tostring(bTraitActive))
if not bTraitActive then return end
--==========================================================================================================================
-- CORE FUNCTIONS
--==========================================================================================================================
-- When built next to a river, Encampment districts provide a free Melee or Ranged unit every 30 turns (on Standard).
----------------------------
local iMod = (GameInfo.GameSpeeds[GameConfiguration.GetGameSpeedType()].CostMultiplier)/100
local iTurns = math.floor((iMod * 30) + 0.5)
local sDistrict =  "DISTRICT_ENCAMPMENT"
local tDistrict = GameInfo.Districts[sDistrict]

local tSenusretUnits = {}
for i, tRow in ipairs(DB.Query("SELECT * from Units WHERE UnitType IN (SELECT Type FROM TypeTags WHERE Tag IN ('CLASS_RANGED','CLASS_MELEE'))")) do
	tSenusretUnits[i] = tRow

	--print(tRow.UnitType)
	--print(tRow.PrereqTech)
	--print(tRow.MandatoryObsoleteTech)
	--print(tRow.PrereqCivic)
	--print(tRow.MandatoryObsoleteCivic)
	--print(tRow.StrategicResource)
	--print(tRow.TraitType)
end


function OnPlayerTurnActivated(iPlayer, bFirstTime )

	local iTurn = Game.GetCurrentGameTurn()
	if iTurn % iTurns ~= 0 then return end

	local pPlayer = Players[iPlayer]
	local pPlayerConfig = PlayerConfigurations[iPlayer]
	local sLeader = pPlayerConfig:GetLeaderTypeName()
	if (not LeaderHasTrait(sLeader, sTrait)) then return end

	local tUnits = GetValidUnits(iPlayer, tSenusretUnits)
	--for i,v in pairs(tUnits) do print(i,v.UnitType) end

	local pCities = pPlayer:GetCities();

	for i, pCity in pCities:Members() do
		if pCity ~= nil and pCity:GetOwner() == iPlayer then

			local pDistrict = pCity:GetDistricts():GetDistrict(tDistrict.Index)
			if pDistrict then

				local pDistrictPlot = Map.GetPlot(pDistrict:GetX(), pDistrict:GetY())
				local bRiver = pDistrictPlot:IsRiver()
				if bRiver then

					local tUnit = tUnits[GetRandom(1, #tUnits, "Senusret III Units")]
					local sUnit = tUnit.UnitType

					if not IsPlotHasUnitFormationClass(pDistrictPlot, "FORMATION_CLASS_LAND_COMBAT") then
						UnitManager.InitUnit(iPlayer, sUnit, pDistrictPlot:GetX(), pDistrictPlot:GetY())
					else
						local pPlot = Map.GetPlot(pCity:GetX(), pCity:GetY())
						if not IsPlotHasUnitFormationClass(pPlot, "FORMATION_CLASS_LAND_COMBAT") then
							UnitManager.InitUnit(iPlayer, sUnit, pPlot:GetX(), pPlot:GetY())
						end
					end

				end
			end

		end
	end

end
Events.PlayerTurnActivated.Add( OnPlayerTurnActivated );
--==========================================================================================================================
--==========================================================================================================================
