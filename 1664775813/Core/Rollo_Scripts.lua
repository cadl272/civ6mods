-----------------------------------------------
-- ROLLO UA FUNCTIONS
-- Author: ChimpanG
-----------------------------------------------

-----------------------------------------------
-- FUNCTION C15_GetValidTraitPlayersNew
-- Credits: Chrisy15
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

-----------------------------------------------
-- CONSTANTS
-----------------------------------------------

	local sTrait = "TRAIT_LEADER_CVS_ROLLO_UA"
	local tTraitPlayers = C15_GetValidTraitPlayersNew(sTrait)

	local tUnits = {}
		for row in GameInfo.Units() do
		if row.Combat > 0 then
			tUnits[row.Index] = row.Combat
		end
	end

	local iScientist = GameInfo.GreatPersonClasses["GREAT_PERSON_CLASS_SCIENTIST"].Index
	local iWriter = GameInfo.GreatPersonClasses["GREAT_PERSON_CLASS_WRITER"].Index
	local iArtist = GameInfo.GreatPersonClasses["GREAT_PERSON_CLASS_ARTIST"].Index
	local iMusician = GameInfo.GreatPersonClasses["GREAT_PERSON_CLASS_MUSICIAN"].Index
	local iProphet = GameInfo.GreatPersonClasses["GREAT_PERSON_CLASS_PROPHET"].Index
	local iEngineer = GameInfo.GreatPersonClasses["GREAT_PERSON_CLASS_ENGINEER"].Index
	local iMerchant = GameInfo.GreatPersonClasses["GREAT_PERSON_CLASS_MERCHANT"].Index
	local iAdmiral = GameInfo.GreatPersonClasses["GREAT_PERSON_CLASS_ADMIRAL"].Index
	local iGeneral = GameInfo.GreatPersonClasses["GREAT_PERSON_CLASS_GENERAL"].Index

	local tDistricts = {}
	local tDistrictQuery = DB.Query("SELECT DISTINCT DistrictType FROM District_GreatPersonPoints")
	for k, v in ipairs(tDistrictQuery) do
		tDistricts[GameInfo.Districts[v.DistrictType].Index] = true
	end

	-- Campus
	local iCampus = {}
	local iCampusQuery = DB.Query("SELECT DistrictType FROM Districts WHERE DistrictType = 'DISTRICT_CAMPUS' OR DistrictType IN (SELECT CivUniqueDistrictType FROM DistrictReplaces WHERE ReplacesDistrictType = 'DISTRICT_CAMPUS')")
	for k, v in ipairs(iCampusQuery) do
		iCampus[GameInfo.Districts[v.DistrictType].Index] = true
	end

	local tCampus = {}
	local tCampusQuery = DB.Query("SELECT DISTINCT BuildingType FROM Buildings WHERE PrereqDistrict = 'DISTRICT_CAMPUS'")
	for k, v in ipairs(tCampusQuery) do
		tCampus[GameInfo.Buildings[v.BuildingType].Index] = true
	end

	-- Theater
	local iTheater = {}
	local iTheaterQuery = DB.Query("SELECT DistrictType FROM Districts WHERE DistrictType = 'DISTRICT_THEATER' OR DistrictType IN (SELECT CivUniqueDistrictType FROM DistrictReplaces WHERE ReplacesDistrictType = 'DISTRICT_THEATER')")
	for k, v in ipairs(iTheaterQuery) do
		iTheater[GameInfo.Districts[v.DistrictType].Index] = true
	end

	-- Theater buildings are a special case, so we're breaking down the buildings individually

	-- Amphitheater
	local tAmphitheater = {}
	local tAmphitheaterQuery = DB.Query("SELECT BuildingType FROM Buildings WHERE BuildingType = 'BUILDING_AMPHITHEATER' OR BuildingType IN (SELECT CivUniqueBuildingType FROM BuildingReplaces WHERE ReplacesBuildingType = 'BUILDING_AMPHITHEATER')")
	for k, v in ipairs(tAmphitheaterQuery) do
		tAmphitheater[GameInfo.Buildings[v.BuildingType].Index] = true
	end

	-- Museums
	local tMuseum = {}
	local tMuseumQuery = DB.Query("SELECT BuildingType FROM Buildings WHERE BuildingType = 'BUILDING_MUSEUM_ART' OR BuildingType = 'BUILDING_MUSEUM_ARTIFACT' OR BuildingType IN (SELECT CivUniqueBuildingType FROM BuildingReplaces WHERE ReplacesBuildingType = 'BUILDING_MUSEUM_ART' OR ReplacesBuildingType = 'BUILDING_MUSEUM_ARTIFACT')")
	for k, v in ipairs(tMuseumQuery) do
		tMuseum[GameInfo.Buildings[v.BuildingType].Index] = true
	end

	-- Broadcast Center
	local tBroadcastCenter = {}
	local tBroadcastCenterQuery = DB.Query("SELECT BuildingType FROM Buildings WHERE BuildingType = 'BUILDING_BROADCAST_CENTER' OR BuildingType IN (SELECT CivUniqueBuildingType FROM BuildingReplaces WHERE ReplacesBuildingType = 'BUILDING_BROADCAST_CENTER')")
	for k, v in ipairs(tBroadcastCenterQuery) do
		tBroadcastCenter[GameInfo.Buildings[v.BuildingType].Index] = true
	end

	local tTheater = {}
	local tTheaterQuery = DB.Query("SELECT DISTINCT BuildingType FROM Buildings WHERE PrereqDistrict = 'DISTRICT_THEATER'")
	for k, v in ipairs(tTheaterQuery) do
		tTheater[GameInfo.Buildings[v.BuildingType].Index] = true
	end

	-- Holy Site
	local iHolySite = {}
	local iHolySiteQuery = DB.Query("SELECT DistrictType FROM Districts WHERE DistrictType = 'DISTRICT_HOLY_SITE' OR DistrictType IN (SELECT CivUniqueDistrictType FROM DistrictReplaces WHERE ReplacesDistrictType = 'DISTRICT_HOLY_SITE')")
	for k, v in ipairs(iHolySiteQuery) do
		iHolySite[GameInfo.Districts[v.DistrictType].Index] = true
	end

	local tHolySite = {}
	local tHolySiteQuery = DB.Query("SELECT DISTINCT BuildingType FROM Buildings WHERE PrereqDistrict = 'DISTRICT_HOLY_SITE'")
	for k, v in ipairs(tHolySiteQuery) do
		tHolySite[GameInfo.Buildings[v.BuildingType].Index] = true
	end

	-- Industrial Zone
	local iIndustrialZone = {}
	local iIndustrialZoneQuery = DB.Query("SELECT DistrictType FROM Districts WHERE DistrictType = 'DISTRICT_INDUSTRIAL_ZONE' OR DistrictType IN (SELECT CivUniqueDistrictType FROM DistrictReplaces WHERE ReplacesDistrictType = 'DISTRICT_INDUSTRIAL_ZONE')")
	for k, v in ipairs(iIndustrialZoneQuery) do
		iIndustrialZone[GameInfo.Districts[v.DistrictType].Index] = true
	end

	local tIndustrialZone = {}
	local tIndustrialZoneQuery = DB.Query("SELECT DISTINCT BuildingType FROM Buildings WHERE PrereqDistrict = 'DISTRICT_INDUSTRIAL_ZONE'")
	for k, v in ipairs(tIndustrialZoneQuery) do
		tIndustrialZone[GameInfo.Buildings[v.BuildingType].Index] = true
	end

	-- Commercial Hub
	local iCommercialHub = {}
	local iCommercialHubQuery = DB.Query("SELECT DistrictType FROM Districts WHERE DistrictType = 'DISTRICT_COMMERCIAL_HUB' OR DistrictType IN (SELECT CivUniqueDistrictType FROM DistrictReplaces WHERE ReplacesDistrictType = 'DISTRICT_COMMERCIAL_HUB')")
	for k, v in ipairs(iCommercialHubQuery) do
		iCommercialHub[GameInfo.Districts[v.DistrictType].Index] = true
	end

	local tCommercialHub = {}
	local tCommercialHubQuery = DB.Query("SELECT DISTINCT BuildingType FROM Buildings WHERE PrereqDistrict = 'DISTRICT_COMMERCIAL_HUB'")
	for k, v in ipairs(tCommercialHubQuery) do
		tCommercialHub[GameInfo.Buildings[v.BuildingType].Index] = true
	end

	-- Harbor
	local iHarbor = {}
	local iHarborQuery = DB.Query("SELECT DistrictType FROM Districts WHERE DistrictType = 'DISTRICT_HARBOR' OR DistrictType IN (SELECT CivUniqueDistrictType FROM DistrictReplaces WHERE ReplacesDistrictType = 'DISTRICT_HARBOR')")
	for k, v in ipairs(iHarborQuery) do
		iHarbor[GameInfo.Districts[v.DistrictType].Index] = true
	end

	local tHarbor = {}
	local tHarborQuery = DB.Query("SELECT DISTINCT BuildingType FROM Buildings WHERE PrereqDistrict = 'DISTRICT_HARBOR'")
	for k, v in ipairs(tHarborQuery) do
		tHarbor[GameInfo.Buildings[v.BuildingType].Index] = true
	end

	-- Encampment
	local iEncampment = {}
	local iEncampmentQuery = DB.Query("SELECT DistrictType FROM Districts WHERE DistrictType = 'DISTRICT_ENCAMPMENT' OR DistrictType IN (SELECT CivUniqueDistrictType FROM DistrictReplaces WHERE ReplacesDistrictType = 'DISTRICT_ENCAMPMENT')")
	for k, v in ipairs(iEncampmentQuery) do
		iEncampment[GameInfo.Districts[v.DistrictType].Index] = true
	end

	local tEncampment = {}
	local tEncampmentQuery = DB.Query("SELECT DISTINCT BuildingType FROM Buildings WHERE PrereqDistrict = 'DISTRICT_ENCAMPMENT'")
	for k, v in ipairs(tEncampmentQuery) do
		tEncampment[GameInfo.Buildings[v.BuildingType].Index] = true
	end

-----------------------------------------------
-- FUNCTION CPG_Rollo_BuildingPillage
-- Authors: ChimpanG
-----------------------------------------------

function CPG_Rollo_BuildingPillage(playerID, unitID, iImprovement, iBuilding)

	if iBuilding ~= -1 then
		--print("A building has been pillaged")

		if tTraitPlayers[playerID] then -- Check player trait
			local pPlayer = Players[playerID]
			local pPlayerUnits = pPlayer:GetUnits()
			local pUnit = pPlayerUnits:FindID(unitID)
			
			if pUnit then
				local iStrength = tUnits[pUnit:GetType()] -- Get Unit Combat strength
				if iStrength then
					local iGPPoints = math.ceil(iStrength/4) -- Use 25% of unit's Combat Strength as Great Person Points value
					--print("iGPPoints: " .. iGPPoints)

					local iX, iY = pUnit:GetX(), pUnit:GetY() -- Use unit to determine plot coordinates
					--print("Unit at: " .. iX .. ", " .. iY)
					local pPillagedPlot = Map.GetPlot(iX, iY) -- Get coordinates of pillaged plot
					local pPlotOwner = pPillagedPlot:GetOwner() -- Get owner of pillaged plot so we can steal from them later
					local pPlotOwnerPlayer = Players[pPlotOwner] -- Get their playerID too
					--print ("Owner of pillaged plot is: " .. pPlotOwner)

					-- Great Scientist
					if tCampus[iBuilding] then
						local iGP = iScientist
						--print("Pillaged building was in Campus")
						
						local iPlayerGPPoints = pPlotOwnerPlayer:GetGreatPeoplePoints():GetPointsTotal(iGP) -- Get available GP Points
						--print("Pillaged player has ", iPlayerGPPoints, " Great Person Points available")
						local iGPPoints = math.min(iGPPoints, iPlayerGPPoints) -- if available Great Person points is less than what we can take then steal only what is available
						--print("GP Points to take: ", iGPPoints)
						
						if iGPPoints == 0 then
						-- do nothing
							-- Let player know there are no GP Points available when they pillage
							if pPlayer:IsHuman() then
								Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_PRODUCTION]No [ICON_GreatScientist] Great Scientist points available[ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
							end
						else
							pPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
							pPlotOwnerPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, -iGPPoints)-- Deduct GPP from other player
							-- Display information for pillaging player
							if pPlayer:IsHuman() then
								Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatScientist][ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
							end
							-- Display information for player whose shit was stolen
							if pPlotOwnerPlayer:IsHuman() then
								Game.AddWorldViewText(pPlotOwnerPlayer, Locale.Lookup("[COLOR_FLOAT_PRODUCTION]-{1_Num} [ICON_GreatScientist][ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
							end
						end
					end
				
					-- Great Writer
					if tAmphitheater[iBuilding] then
						local iGP = iWriter
						--print("Pillaged building was in Theater")
						
						local iPlayerGPPoints = pPlotOwnerPlayer:GetGreatPeoplePoints():GetPointsTotal(iGP) -- Get available GP Points
						--print("Pillaged player has ", iPlayerGPPoints, " Great Person Points available")
						local iGPPoints = math.min(iGPPoints, iPlayerGPPoints) -- if available Great Person points is less than what we can take then steal only what is available
						--print("GP Points to take: ", iGPPoints)
						
						if iGPPoints == 0 then
						-- do nothing
							-- Let player know there are no GP Points available when they pillage
							if pPlayer:IsHuman() then
								Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_PRODUCTION]No [ICON_GreatWriter] Great Writer points available[ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
							end
						else
							pPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
							pPlotOwnerPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, -iGPPoints)-- Deduct GPP from other player
							-- Display information for pillaging player
							if pPlayer:IsHuman() then
								Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatWriter][ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
							end
							-- Display information for player whose shit was stolen
							if pPlotOwnerPlayer:IsHuman() then
								Game.AddWorldViewText(pPlotOwnerPlayer, Locale.Lookup("[COLOR_FLOAT_PRODUCTION]-{1_Num} [ICON_GreatWriter][ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
							end
						end
					end
				
					-- Great Artist
					if tMuseum[iBuilding] then
						local iGP = iArtist
						--print("Pillaged building was in Theater")
						
						local iPlayerGPPoints = pPlotOwnerPlayer:GetGreatPeoplePoints():GetPointsTotal(iGP) -- Get available GP Points
						--print("Pillaged player has ", iPlayerGPPoints, " Great Person Points available")
						local iGPPoints = math.min(iGPPoints, iPlayerGPPoints) -- if available Great Person points is less than what we can take then steal only what is available
						--print("GP Points to take: ", iGPPoints)
						
						if iGPPoints == 0 then
						-- do nothing
							-- Let player know there are no GP Points available when they pillage
							if pPlayer:IsHuman() then
								Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_PRODUCTION]No [ICON_GreatArtist] Great Artist points available[ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
							end
						else
							pPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
							pPlotOwnerPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, -iGPPoints)-- Deduct GPP from other player
							-- Display information for pillaging player
							if pPlayer:IsHuman() then
								Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatArtist][ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
							end
							-- Display information for player whose shit was stolen
							if pPlotOwnerPlayer:IsHuman() then
								Game.AddWorldViewText(pPlotOwnerPlayer, Locale.Lookup("[COLOR_FLOAT_PRODUCTION]-{1_Num} [ICON_GreatArtist][ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
							end
						end
					end

					-- Great Musician
					if tBroadcastCenter[iBuilding] then
						local iGP = iMusician
						--print("Pillaged building was in Theater")
						
						local iPlayerGPPoints = pPlotOwnerPlayer:GetGreatPeoplePoints():GetPointsTotal(iGP) -- Get available GP Points
						--print("Pillaged player has ", iPlayerGPPoints, " Great Person Points available")
						local iGPPoints = math.min(iGPPoints, iPlayerGPPoints) -- if available Great Person points is less than what we can take then steal only what is available
						--print("GP Points to take: ", iGPPoints)
						
						if iGPPoints == 0 then
						-- do nothing
							-- Let player know there are no GP Points available when they pillage
							if pPlayer:IsHuman() then
								Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_PRODUCTION]No [ICON_GreatMusician] Great Musician points available[ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
							end
						else
							pPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
							pPlotOwnerPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, -iGPPoints)-- Deduct GPP from other player
							-- Display information for pillaging player
							if pPlayer:IsHuman() then
								Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatMusician][ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
							end
							-- Display information for player whose shit was stolen
							if pPlotOwnerPlayer:IsHuman() then
								Game.AddWorldViewText(pPlotOwnerPlayer, Locale.Lookup("[COLOR_FLOAT_PRODUCTION]-{1_Num} [ICON_GreatMusician][ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
							end
						end
					end
				
					-- Great Prophet
					if tHolySite[iBuilding] then
						local iGP = iProphet
						--print("Pillaged building was in Holy Site")
						
						local iPlayerGPPoints = pPlotOwnerPlayer:GetGreatPeoplePoints():GetPointsTotal(iGP) -- Get available GP Points
						--print("Pillaged player has ", iPlayerGPPoints, " Great Person Points available")
						local iGPPoints = math.min(iGPPoints, iPlayerGPPoints) -- if available Great Person points is less than what we can take then steal only what is available
						--print("GP Points to take: ", iGPPoints)
						
						if iGPPoints == 0 then
						-- do nothing
							-- Let player know there are no GP Points available when they pillage
							if pPlayer:IsHuman() then
								Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_PRODUCTION]No [ICON_GreatProphet] Great Prophet points available[ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
							end
						else
							pPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
							pPlotOwnerPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, -iGPPoints)-- Deduct GPP from other player
							-- Display information for pillaging player
							if pPlayer:IsHuman() then
								Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatProphet][ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
							end
							-- Display information for player whose shit was stolen
							if pPlotOwnerPlayer:IsHuman() then
								Game.AddWorldViewText(pPlotOwnerPlayer, Locale.Lookup("[COLOR_FLOAT_PRODUCTION]-{1_Num} [ICON_GreatProphet][ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
							end
						end
					end
				
					-- Great Engineer
					if tIndustrialZone[iBuilding] then
						local iGP = iEngineer
						--print("Pillaged building was in Industrial Zone")
						
						local iPlayerGPPoints = pPlotOwnerPlayer:GetGreatPeoplePoints():GetPointsTotal(iGP) -- Get available GP Points
						--print("Pillaged player has ", iPlayerGPPoints, " Great Person Points available")
						local iGPPoints = math.min(iGPPoints, iPlayerGPPoints) -- if available Great Person points is less than what we can take then steal only what is available
						--print("GP Points to take: ", iGPPoints)
						
						if iGPPoints == 0 then
						-- do nothing
							-- Let player know there are no GP Points available when they pillage
							if pPlayer:IsHuman() then
								Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_PRODUCTION]No [ICON_GreatEngineer] Great Engineer points available[ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
							end
						else
							pPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
							pPlotOwnerPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, -iGPPoints)-- Deduct GPP from other player
							-- Display information for pillaging player
							if pPlayer:IsHuman() then
								Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatEngineer][ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
							end
							-- Display information for player whose shit was stolen
							if pPlotOwnerPlayer:IsHuman() then
								Game.AddWorldViewText(pPlotOwnerPlayer, Locale.Lookup("[COLOR_FLOAT_PRODUCTION]-{1_Num} [ICON_GreatEngineer][ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
							end
						end
					end
				
					-- Great Merchant
					if tCommercialHub[iBuilding] then
						local iGP = iMerchant
						--print("Pillaged building was in Commercial Hub")
						
						local iPlayerGPPoints = pPlotOwnerPlayer:GetGreatPeoplePoints():GetPointsTotal(iGP) -- Get available GP Points
						--print("Pillaged player has ", iPlayerGPPoints, " Great Person Points available")
						local iGPPoints = math.min(iGPPoints, iPlayerGPPoints) -- if available Great Person points is less than what we can take then steal only what is available
						--print("GP Points to take: ", iGPPoints)
						
						if iGPPoints == 0 then
						-- do nothing
							-- Let player know there are no GP Points available when they pillage
							if pPlayer:IsHuman() then
								Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_PRODUCTION]No [ICON_GreatMerchant] Great Merchant points available[ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
							end
						else
							pPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
							pPlotOwnerPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, -iGPPoints)-- Deduct GPP from other player
							-- Display information for pillaging player
							if pPlayer:IsHuman() then
								Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatMerchant][ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
							end
							-- Display information for player whose shit was stolen
							if pPlotOwnerPlayer:IsHuman() then
								Game.AddWorldViewText(pPlotOwnerPlayer, Locale.Lookup("[COLOR_FLOAT_PRODUCTION]-{1_Num} [ICON_GreatMerchant][ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
							end
						end
					end
				
					-- Great Admiral
					if tHarbor[iBuilding] then
						local iGP = iAdmiral
						--print("Pillaged building was in Harbor")
						
						local iPlayerGPPoints = pPlotOwnerPlayer:GetGreatPeoplePoints():GetPointsTotal(iGP) -- Get available GP Points
						--print("Pillaged player has ", iPlayerGPPoints, " Great Person Points available")
						local iGPPoints = math.min(iGPPoints, iPlayerGPPoints) -- if available Great Person points is less than what we can take then steal only what is available
						--print("GP Points to take: ", iGPPoints)
						
						if iGPPoints == 0 then
						-- do nothing
							-- Let player know there are no GP Points available when they pillage
							if pPlayer:IsHuman() then
								Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_PRODUCTION]No [ICON_GreatAdmiral] Great Admiral points available[ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
							end
						else
							pPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
							pPlotOwnerPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, -iGPPoints)-- Deduct GPP from other player
							-- Display information for pillaging player
							if pPlayer:IsHuman() then
								Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatAdmiral][ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
							end
							-- Display information for player whose shit was stolen
							if pPlotOwnerPlayer:IsHuman() then
								Game.AddWorldViewText(pPlotOwnerPlayer, Locale.Lookup("[COLOR_FLOAT_PRODUCTION]-{1_Num} [ICON_GreatAdmiral][ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
							end
						end
					end
				
					-- Great General
					if tEncampment[iBuilding] then
						local iGP = iGeneral
						--print("Pillaged building was in Encampment")
						
						local iPlayerGPPoints = pPlotOwnerPlayer:GetGreatPeoplePoints():GetPointsTotal(iGP) -- Get available GP Points
						--print("Pillaged player has ", iPlayerGPPoints, " Great Person Points available")
						local iGPPoints = math.min(iGPPoints, iPlayerGPPoints) -- if available Great Person points is less than what we can take then steal only what is available
						--print("GP Points to take: ", iGPPoints)
						
						if iGPPoints == 0 then
						-- do nothing
							-- Let player know there are no GP Points available when they pillage
							if pPlayer:IsHuman() then
								Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_PRODUCTION]No [ICON_GreatGeneral] Great General points available[ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
							end
						else
							pPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
							pPlotOwnerPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, -iGPPoints)-- Deduct GPP from other player
							-- Display information for pillaging player
							if pPlayer:IsHuman() then
								Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatGeneral][ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
							end
							-- Display information for player whose shit was stolen
							if pPlotOwnerPlayer:IsHuman() then
								Game.AddWorldViewText(pPlotOwnerPlayer, Locale.Lookup("[COLOR_FLOAT_PRODUCTION]-{1_Num} [ICON_GreatGeneral][ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
							end
						end
					end
					
				end
			end
		end
	end	
end		

GameEvents.OnPillage.Add(CPG_Rollo_BuildingPillage);

-----------------------------------------------
-- FUNCTION CPG_Rollo_DistrictPillage
-- Credits: ChimpanG
-----------------------------------------------

function CPG_Rollo_DistrictPillage(owner, districtID, cityID, iX, iY, districtType, percentComplete, isPillaged)

	if tDistricts[districtType] and isPillaged == 1 then
	--print("A specialty district has been pillaged")
		
		local pPlot = Map.GetPlot(iX,iY)
		--print ("pPlot: " .. iX .. ", " .. iY)
		local pPlotOwnerPlayer = Players[owner] -- Get the player that is getting pillaged

		local pUnits = Units.GetUnitsInPlot(iX, iY)
		for k, iUnit in ipairs(pUnits) do
			if iUnit:GetType() then
				local iUnitOwner = iUnit:GetOwner() -- Get pillaging unit's owner
				--print ("Unit's owner is ", iUnitOwner)
				if tTraitPlayers[iUnitOwner] then -- Check player trait
					--print ("Unit owner has trait")
					local pPlayer = Players[iUnitOwner] -- Index pillaging player
					local pPlayerUnits = pPlayer:GetUnits() -- Index their units
					local pUnit = pPlayerUnits:FindID(iUnit) -- Get pillaging unit ID
					--print ("Unit ID is ", pUnit)
			
					if pUnit then
						local iStrength = tUnits[pUnit:GetType()] -- Get Unit Combat strength
						if iStrength then
							local iGPPoints = math.ceil(iStrength/4) -- Use 25% of unit's Combat Strength as Great Person Points value
							--print("iGPPoints: " .. iGPPoints)
					
							-- Great Scientist
							if iCampus[districtType] then
								local iGP = iScientist
								--print("Pillaged district is Campus")
								
								local iPlayerGPPoints = pPlotOwnerPlayer:GetGreatPeoplePoints():GetPointsTotal(iGP) -- Get available GP Points
								--print("Pillaged player has ", iPlayerGPPoints, " Great Person Points available")
								local iGPPoints = math.min(iGPPoints, iPlayerGPPoints) -- if available Great Person points is less than what we can take then steal only what is available
								--print("GP Points to take: ", iGPPoints)
								
								if iGPPoints == 0 then
								-- do nothing
									-- Let player know there are no GP Points available when they pillage
									if pPlayer:IsHuman() then
										Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_PRODUCTION]No [ICON_GreatScientist] Great Scientist points available[ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
									end
								else
									pPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
									pPlotOwnerPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, -iGPPoints)-- Deduct GPP from other player
									-- Display information for pillaging player
									if pPlayer:IsHuman() then
										Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatScientist][ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
									end
									-- Display information for player whose shit was stolen
									if pPlotOwnerPlayer:IsHuman() then
										Game.AddWorldViewText(pPlotOwnerPlayer, Locale.Lookup("[COLOR_FLOAT_PRODUCTION]-{1_Num} [ICON_GreatScientist][ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
									end
								end
							end
							
							if iTheater[districtType] then
								--print("Pillaged district is Theater")
								local iRandom = math.random (3) -- we're going to randomise to determine the Great Person Points for pillaging a Theater
								--print ("iRandom: " .. iRandom)
							
								-- Great Writer
								if iRandom == 1 then
									--print("iRandom is Writer")
									local iGP = iWriter
									
									local iPlayerGPPoints = pPlotOwnerPlayer:GetGreatPeoplePoints():GetPointsTotal(iGP) -- Get available GP Points
									--print("Pillaged player has ", iPlayerGPPoints, " Great Person Points available")
									local iGPPoints = math.min(iGPPoints, iPlayerGPPoints) -- if available Great Person points is less than what we can take then steal only what is available
									--print("GP Points to take: ", iGPPoints)
									
									if iGPPoints == 0 then
									-- do nothing
										-- Let player know there are no GP Points available when they pillage
										if pPlayer:IsHuman() then
											Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_PRODUCTION]No [ICON_GreatWriter] Great Writer points available[ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
										end
									else
										pPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
										pPlotOwnerPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, -iGPPoints)-- Deduct GPP from other player
										-- Display information for pillaging player
										if pPlayer:IsHuman() then
											Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatWriter][ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
										end
										-- Display information for player whose shit was stolen
										if pPlotOwnerPlayer:IsHuman() then
											Game.AddWorldViewText(pPlotOwnerPlayer, Locale.Lookup("[COLOR_FLOAT_PRODUCTION]-{1_Num} [ICON_GreatWriter][ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
										end
									end
								end
								
								-- Great Artist
								if iRandom == 2 then
									--print("iRandom is Artist")
									local iGP = iArtist
									
									local iPlayerGPPoints = pPlotOwnerPlayer:GetGreatPeoplePoints():GetPointsTotal(iGP) -- Get available GP Points
									--print("Pillaged player has ", iPlayerGPPoints, " Great Person Points available")
									local iGPPoints = math.min(iGPPoints, iPlayerGPPoints) -- if available Great Person points is less than what we can take then steal only what is available
									--print("GP Points to take: ", iGPPoints)
									
									if iGPPoints == 0 then
									-- do nothing
										-- Let player know there are no GP Points available when they pillage
										if pPlayer:IsHuman() then
											Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_PRODUCTION]No [ICON_GreatArtist] Great Artist points available[ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
										end
									else
										pPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
										pPlotOwnerPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, -iGPPoints)-- Deduct GPP from other player
										-- Display information for pillaging player
										if pPlayer:IsHuman() then
											Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatArtist][ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
										end
										-- Display information for player whose shit was stolen
										if pPlotOwnerPlayer:IsHuman() then
											Game.AddWorldViewText(pPlotOwnerPlayer, Locale.Lookup("[COLOR_FLOAT_PRODUCTION]-{1_Num} [ICON_GreatArtist][ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
										end
									end
								end
								-- Great Musician
								if iRandom == 3 then
									--print("iRandom is Musician")
									local iGP = iMusician
									
									local iPlayerGPPoints = pPlotOwnerPlayer:GetGreatPeoplePoints():GetPointsTotal(iGP) -- Get available GP Points
									--print("Pillaged player has ", iPlayerGPPoints, " Great Person Points available")
									local iGPPoints = math.min(iGPPoints, iPlayerGPPoints) -- if available Great Person points is less than what we can take then steal only what is available
									--print("GP Points to take: ", iGPPoints)
									
									if iGPPoints == 0 then
									-- do nothing
										-- Let player know there are no GP Points available when they pillage
										if pPlayer:IsHuman() then
											Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_PRODUCTION]No [ICON_GreatMusician] Great Musician points available[ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
										end
									else
										pPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
										pPlotOwnerPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, -iGPPoints)-- Deduct GPP from other player
										-- Display information for pillaging player
										if pPlayer:IsHuman() then
											Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatMusician][ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
										end
										-- Display information for player whose shit was stolen
										if pPlotOwnerPlayer:IsHuman() then
											Game.AddWorldViewText(pPlotOwnerPlayer, Locale.Lookup("[COLOR_FLOAT_PRODUCTION]-{1_Num} [ICON_GreatMusician][ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
										end
									end
								end
							end
							
							-- Great Prophet
							if iHolySite[districtType] then
								local iGP = iProphet
								--print("Pillaged district is Holy Site")
								
								local iPlayerGPPoints = pPlotOwnerPlayer:GetGreatPeoplePoints():GetPointsTotal(iGP) -- Get available GP Points
								--print("Pillaged player has ", iPlayerGPPoints, " Great Person Points available")
								local iGPPoints = math.min(iGPPoints, iPlayerGPPoints) -- if available Great Person points is less than what we can take then steal only what is available
								--print("GP Points to take: ", iGPPoints)
								
								if iGPPoints == 0 then
								-- do nothing
									-- Let player know there are no GP Points available when they pillage
									if pPlayer:IsHuman() then
										Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_PRODUCTION]No [ICON_GreatProphet] Great Prophet points available[ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
									end
								else
									pPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
									pPlotOwnerPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, -iGPPoints)-- Deduct GPP from other player
									-- Display information for pillaging player
									if pPlayer:IsHuman() then
										Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatProphet][ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
									end
									-- Display information for player whose shit was stolen
									if pPlotOwnerPlayer:IsHuman() then
										Game.AddWorldViewText(pPlotOwnerPlayer, Locale.Lookup("[COLOR_FLOAT_PRODUCTION]-{1_Num} [ICON_GreatProphet][ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
									end
								end
							end
					
							-- Great Engineer
							if iIndustrialZone[districtType] then
								local iGP = iEngineer
								--print("Pillaged district is Holy Site")
								
								local iPlayerGPPoints = pPlotOwnerPlayer:GetGreatPeoplePoints():GetPointsTotal(iGP) -- Get available GP Points
								--print("Pillaged player has ", iPlayerGPPoints, " Great Person Points available")
								local iGPPoints = math.min(iGPPoints, iPlayerGPPoints) -- if available Great Person points is less than what we can take then steal only what is available
								--print("GP Points to take: ", iGPPoints)
								
								if iGPPoints == 0 then
								-- do nothing
									-- Let player know there are no GP Points available when they pillage
									if pPlayer:IsHuman() then
										Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_PRODUCTION]No [ICON_GreatEngineer] Great Engineer points available[ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
									end
								else
									pPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
									pPlotOwnerPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, -iGPPoints)-- Deduct GPP from other player
									-- Display information for pillaging player
									if pPlayer:IsHuman() then
										Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatEngineer][ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
									end
									-- Display information for player whose shit was stolen
									if pPlotOwnerPlayer:IsHuman() then
										Game.AddWorldViewText(pPlotOwnerPlayer, Locale.Lookup("[COLOR_FLOAT_PRODUCTION]-{1_Num} [ICON_GreatEngineer][ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
									end
								end
							end
					
							-- Great Merchant
							if iCommercialHub[districtType] then
								local iGP = iMerchant
								--print("Pillaged district is Holy Site")
								
								local iPlayerGPPoints = pPlotOwnerPlayer:GetGreatPeoplePoints():GetPointsTotal(iGP) -- Get available GP Points
								--print("Pillaged player has ", iPlayerGPPoints, " Great Person Points available")
								local iGPPoints = math.min(iGPPoints, iPlayerGPPoints) -- if available Great Person points is less than what we can take then steal only what is available
								--print("GP Points to take: ", iGPPoints)
								
								if iGPPoints == 0 then
								-- do nothing
									-- Let player know there are no GP Points available when they pillage
									if pPlayer:IsHuman() then
										Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_PRODUCTION]No [ICON_GreatMerchant] Great Merchant points available[ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
									end
								else
									pPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
									pPlotOwnerPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, -iGPPoints)-- Deduct GPP from other player
									-- Display information for pillaging player
									if pPlayer:IsHuman() then
										Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatMerchant][ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
									end
									-- Display information for player whose shit was stolen
									if pPlotOwnerPlayer:IsHuman() then
										Game.AddWorldViewText(pPlotOwnerPlayer, Locale.Lookup("[COLOR_FLOAT_PRODUCTION]-{1_Num} [ICON_GreatMerchant][ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
									end
								end
							end
					
							-- Great Admiral
							if iHarbor[districtType] then
								local iGP = iAdmiral
								--print("Pillaged district is Holy Site")
								
								local iPlayerGPPoints = pPlotOwnerPlayer:GetGreatPeoplePoints():GetPointsTotal(iGP) -- Get available GP Points
								--print("Pillaged player has ", iPlayerGPPoints, " Great Person Points available")
								local iGPPoints = math.min(iGPPoints, iPlayerGPPoints) -- if available Great Person points is less than what we can take then steal only what is available
								--print("GP Points to take: ", iGPPoints)
								
								if iGPPoints == 0 then
								-- do nothing
									-- Let player know there are no GP Points available when they pillage
									if pPlayer:IsHuman() then
										Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_PRODUCTION]No [ICON_GreatAdmiral] Great Admiral points available[ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
									end
								else
									pPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
									pPlotOwnerPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, -iGPPoints)-- Deduct GPP from other player
									-- Display information for pillaging player
									if pPlayer:IsHuman() then
										Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatAdmiral][ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
									end
									-- Display information for player whose shit was stolen
									if pPlotOwnerPlayer:IsHuman() then
										Game.AddWorldViewText(pPlotOwnerPlayer, Locale.Lookup("[COLOR_FLOAT_PRODUCTION]-{1_Num} [ICON_GreatAdmiral][ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
									end
								end
							end
					
							-- Great General
							if iEncampment[districtType] then
								local iGP = iGeneral
								--print("Pillaged district is Holy Site")
								
								local iPlayerGPPoints = pPlotOwnerPlayer:GetGreatPeoplePoints():GetPointsTotal(iGP) -- Get available GP Points
								--print("Pillaged player has ", iPlayerGPPoints, " Great Person Points available")
								local iGPPoints = math.min(iGPPoints, iPlayerGPPoints) -- if available Great Person points is less than what we can take then steal only what is available
								--print("GP Points to take: ", iGPPoints)
								
								if iGPPoints == 0 then
								-- do nothing
									-- Let player know there are no GP Points available when they pillage
									if pPlayer:IsHuman() then
										Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_PRODUCTION]No [ICON_GreatGeneral] Great General points available[ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
									end
								else
									pPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
									pPlotOwnerPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, -iGPPoints)-- Deduct GPP from other player
									-- Display information for pillaging player
									if pPlayer:IsHuman() then
										Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatGeneral][ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
									end
									-- Display information for player whose shit was stolen
									if pPlotOwnerPlayer:IsHuman() then
										Game.AddWorldViewText(pPlotOwnerPlayer, Locale.Lookup("[COLOR_FLOAT_PRODUCTION]-{1_Num} [ICON_GreatGeneral][ENDCOLOR]", iGPPoints), pUnit:GetX(), pUnit:GetY(), 0)
									end
								end
							end
						end
					end
				end
			end
		end
	end
end

Events.DistrictPillaged.Add(CPG_Rollo_DistrictPillage);