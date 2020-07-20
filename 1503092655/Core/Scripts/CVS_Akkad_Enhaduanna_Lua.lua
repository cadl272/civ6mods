-- CVS_Akkad_Enhaduanna_Lua
-- Author: Chrisy15
-- DateCreated: 11/12/2017 12:26:28 AM
--------------------------------------------------------------

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

function C15_CalculatePointsFromProject(playerID, projectID) -- Algorithm taken from Jiff, who took it from someone else iirc
	local pPlayer = Players[playerID]
	if not pPlayer then return end
	local pProject = GameInfo.Projects[projectID]
	if not pProject then return end
	local tToReturn = {}
	local tPointsGranted = {}
	for row in GameInfo.Project_GreatPersonPoints() do
		if row.ProjectType == pProject.ProjectType then
			table.insert(tPointsGranted, {GreatPersonClassType = row.GreatPersonClassType, Points = row.Points}) -- Yea this assumes normal progression bc idk what any of the other algorithms are :p
		end
	end
	if #tPointsGranted == 0 then return end
	local pPlayerTechs, pPlayerCivics = pPlayer:GetTechs(), pPlayer:GetCulture()
	local iNumCivics = 0
	local iMaxCivics = 0
	for row in GameInfo.Civics() do
		if pPlayerCivics:HasCivic(row.Index) then
			iNumCivics = iNumCivics + 1
		end
		if row.Repeatable == false then
			iMaxCivics = iMaxCivics + 1
		end
	end
	local iNumTechs = 0
	local iMaxTechs = 0
	for row in GameInfo.Technologies() do
		if pPlayerTechs:HasTech(row.Index) then
			iNumTechs = iNumTechs + 1
		end
		if row.Repeatable == false then
			iMaxTechs = iMaxTechs + 1
		end
	end
	if iMaxCivics == 0 or iMaxTechs == 0 then print("/0 rip") return end
	local fLargest = math.floor(100 * math.max(iNumCivics / iMaxCivics, iNumTechs / iMaxTechs)) / 100
	for k, v in ipairs(tPointsGranted) do
		tToReturn[v.GreatPersonClassType] = v.Points * (1 + (7 * fLargest)) -- GreatPersonClassType string as Key; Points as Value
	end
	
	return tToReturn
end	

function C15_FindDistrictObject(pCityDistricts, iDistrict)
	for i = 0, pCityDistricts:GetNumDistricts() - 1 do
		local pDistrict = pCityDistricts:GetDistrictByIndex(i)
		if pDistrict:GetType() == iDistrict then
			return pDistrict
		end
	end
	return nil
end

local sEnhaduannaTrait = "TRAIT_LEADER_CVS_ENHEDUANNA_UA"
local sProphetClass = "GREAT_PERSON_CLASS_PROPHET"
local iGreatWriterClass = GameInfo.GreatPersonClasses["GREAT_PERSON_CLASS_WRITER"].Index
local iHolySite = GameInfo.Districts["DISTRICT_HOLY_SITE"].Index

local tValidProjects = {}
for row in GameInfo.Project_GreatPersonPoints() do
	if row.GreatPersonClassType == sProphetClass then
		local pProject = GameInfo.Projects[row.ProjectType]
		if pProject then
			local var = true
			if pProject.PrereqDistrict then -- ugh
				var = GameInfo.Districts[pProject.PrereqDistrict].Index
			end
			tValidProjects[pProject.Index] = var
		end
	end
end

local tValidPlayers = C15_GetValidTraitPlayersNew(sEnhaduannaTrait)

function C15_Akkad_Enhaduanna_HolySiteProjectBonuses(playerID, cityID, projectID, iUnknown, iX, iY, bCancelled)
	if not bCancelled and tValidProjects[projectID]and tValidPlayers[playerID] then
		local tPoints = C15_CalculatePointsFromProject(playerID, projectID)
		if tPoints and tPoints[sProphetClass] then
			local pPlayer = Players[playerID]
			local pPlayerGPP = pPlayer:GetGreatPeoplePoints()
			local pPlayerCulture = pPlayer:GetCulture()
			local pPlayerReligion = pPlayer:GetReligion()
			local pPlayerCities = pPlayer:GetCities()
			local iGPP = math.floor(tPoints[sProphetClass])
			local bHuman = pPlayer:IsHuman()
			--[[local iCulturePer, iFaithPer = math.max(math.floor(pPlayerCulture:GetCultureYield() / 2), 1), math.max(math.floor(pPlayerReligion:GetFaithYield() / 2), 1)
			local iCultureTotal, iFaithTotal = 0, 0
			for i, pCity in pPlayerCities:Members() do
				local pCityDistricts = pCity:GetDistricts()
				if pCityDistricts:HasDistrict(iHolySite) then
					iCultureTotal = iCultureTotal + iCulturePer
					iFaithTotal = iFaithTotal + iFaithPer
					if bHuman then
						for iDistrict = 0, pCityDistricts:GetNumDistricts() - 1 do
							local pDistrict = pCityDistricts:GetDistrictByIndex(iDistrict)
							if pDistrict:GetType() == iHolySite then
								Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_CULTURE]+{1_Cult} [ICON_Culture][ENDCOLOR]", iCulturePer), pDistrict:GetX(), pDistrict:GetY(), 0)
								Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Faith} [ICON_Faith][ENDCOLOR]", iFaithPer), pDistrict:GetX(), pDistrict:GetY(), 0)
								break
							end
						end
					end
				end
			end
			if iCultureTotal > 0 then
				pPlayerCulture:ChangeCurrentCulturalProgress(iCultureTotal)
			end
			if iFaithTotal > 0 then
				pPlayerReligion:ChangeFaithBalance(iFaithTotal)
			end]]
			if iGPP > 0 then
				pPlayerGPP:ChangePointsTotal(iGreatWriterClass, iGPP)
				if bHuman then
					local pCity = pPlayerCities:FindID(cityID)
					local iX, iY
					if type(tValidProjects[projectID]) == type(555) then
						local pCityDistricts = pCity:GetDistricts()
						local pDistrict = C15_FindDistrictObject(pCityDistricts, tValidProjects[projectID])
						if pDistrict then
							iX, iY = pDistrict:GetX(), pDistrict:GetY()
						else
							iX, iY = pCity:GetX(), pCity:GetY() -- You can tell I'm kinda fed up bc I'm duping code :p
						end
					else
						iX, iY = pCity:GetX(), pCity:GetY()
					end
					Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_FOOD]+{1_GPP} [ICON_GreatWriter][ENDCOLOR]", iGPP), iX, iY, 0)
				end
			end
		end
	end
end

Events.CityProjectCompleted.Add(C15_Akkad_Enhaduanna_HolySiteProjectBonuses)




