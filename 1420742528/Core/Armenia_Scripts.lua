-----------------------------------------------
-- ARMENIA FUNCTIONS
-----------------------------------------------

-----------------------------------------------
-- CONSTANTS
-----------------------------------------------

	local iArmenianQuarry = GameInfo.Improvements['IMPROVEMENT_CVS_ARMENIA_UI'].Index;
	local iQuarry = GameInfo.Improvements['IMPROVEMENT_QUARRY'].Index;
	local iStoneResource = GameInfo.Resources['RESOURCE_STONE'].Index;

	local iGreatGeneral = GameInfo.GreatPersonClasses["GREAT_PERSON_CLASS_GENERAL"].Index;
	local iAyrudzi = GameInfo.Units["UNIT_CVS_ARMENIA_UU"].Index;

	local tUnits = {}
		for row in GameInfo.Units() do
		if row.Combat > 0 then
			tUnits[row.Index] = row.Combat
		end
	end

-----------------------------------------------
-- FUNCTION CVS_Armenia_UA_SpawnResource
-- Authors: ChimpanG
-----------------------------------------------

function CVS_Armenia_UA_SpawnResource(PlotX, PlotY, ImprovementID, PlayerID, ResourceID, Unknown1, Unknown2)

	if ImprovementID == iArmenianQuarry then
	--print("Armenian Quarry placed at coordinates X" .. PlotX .. ",Y" .. PlotY)

		local iPlot = Map.GetPlot(PlotX, PlotY) -- Get coordinates
		ImprovementBuilder.SetImprovementType(iPlot, -1, 0) -- Remove improvement

	--	local iPlotResource = Plot.GetResourceCount(iPlot) -- Check if plot has hidden resource
		
	--	if iPlotResource == 0 then -- If plot has no resource, then roll the dice
	--		local iRandom = math.random(0,10)
	--		print ("iRandom: ", iRandom)
	--		if iRandom > 6 then -- 40% Chance
	--			ResourceBuilder.SetResourceType(iPlot, iStoneResource, 1) -- Place stone resource
	--			print("Stone resource placed")
	--		else
	--			print("Stone resource not placed")
	--		end
	--	end

		ImprovementBuilder.SetImprovementType(iPlot, iQuarry, 0)

	end
end

Events.ImprovementAddedToMap.Add(CVS_Armenia_UA_SpawnResource);

-----------------------------------------------
-- FUNCTION CVS_Armenia_UU_Promotion
-- Authors: ChimpanG
-----------------------------------------------

function CVS_Armenia_UU_Promotion(playerID, unitID)

	local pPlayer = Players[playerID]
	local pPlayerUnits = pPlayer:GetUnits()
	local pUnit = pPlayerUnits:FindID(unitID)
	
	print("pPlayer: ", pPlayer)
	print("pPlayerUnits: ", pPlayerUnits)
	print("pUnit: ", pUnit)

	if pUnit:GetType() == iAyrudzi then
		print ("Unit is Ayrudzi")
		local iStrength = tUnits[pUnit:GetType()] -- Get Unit Combat strength
		if iStrength then
			local iGPP = math.ceil(iStrength/4) -- Use 25% of unit's Combat Strength as Great Person Points value
			print("iGPP: " .. iGPP)

			pPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGreatGeneral,iGPP)
			print ("Changed Points successfully")

			local iUnit = pPlayer:GetUnits():FindID(unitID)
			print ("iUnit: ", iUnit)
			if pPlayer:IsHuman() then
				Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatGeneral] Great General Points[ENDCOLOR]", iGPP), iUnit:GetX(), iUnit:GetY(), 0)
			end
		end
	end
end

Events.UnitPromoted.Add(CVS_Armenia_UU_Promotion);