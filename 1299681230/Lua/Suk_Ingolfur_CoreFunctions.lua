--==========================================================================================================================
-- Author: Sukritact
--==========================================================================================================================
print("Suk_Ingolfur_CoreFunctions Loaded")
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
			end
		end
		if not tValid[v] then
			local civType = PlayerConfigurations[v]:GetCivilizationTypeName()
			for trait in GameInfo.CivilizationTraits() do
				if trait.CivilizationType == civType and trait.TraitType == sTrait then 
					tValid[v] = true 
				end
			end
		end
	end
	return tValid
end
--------------------------------------------------------------
-- Grab a random name
--------------------------------------------------------------
local tMaleNames = {}
for i,tRow in ipairs(DB.Query("SELECT CitizenName FROM CivilizationCitizenNames WHERE Female = 0 AND CivilizationType = 'CIVILIZATION_SUK_ICELAND'")) do
	table.insert(tMaleNames, Locale.Lookup(tRow.CitizenName))
	--print(Locale.Lookup(tRow.CitizenName))
end

local tFemaleNames = {}
for i,tRow in ipairs(DB.Query("SELECT CitizenName FROM CivilizationCitizenNames WHERE Female = 1 AND CivilizationType = 'CIVILIZATION_SUK_ICELAND'")) do
	table.insert(tFemaleNames, Locale.Lookup(tRow.CitizenName))
	--print(Locale.Lookup(tRow.CitizenName))
end
	--------------------------------------------------------------
	-- OMG ICELAND, WHY ARE YOUR GENITIVES NOT JUST +S ALL THE TIME?
	-- THIS IS WHY I STUDIED SWEDISH, SO MUCH SIMPLER
	--------------------------------------------------------------
local tMaleGenitiveNames = {}
for i,tRow in ipairs(DB.Query("SELECT CitizenName FROM CivilizationCitizenNames WHERE Female = 0 AND CivilizationType = 'CIVILIZATION_SUK_ICELAND'")) do
	table.insert(tMaleGenitiveNames, Locale.Lookup(tRow.CitizenName .. "_GENITIVE"))
	--print(Locale.Lookup(tRow.CitizenName .. "_GENITIVE"))
end
local tFemaleGenitiveNames = {}
for i,tRow in ipairs(DB.Query("SELECT CitizenName FROM CivilizationCitizenNames WHERE Female = 1 AND CivilizationType = 'CIVILIZATION_SUK_ICELAND'")) do
	table.insert(tFemaleGenitiveNames, Locale.Lookup(tRow.CitizenName .. "_GENITIVE"))
	--print(Locale.Lookup(tRow.CitizenName .. "_GENITIVE"))
end

function GetIcelandicName()
	local bMale			= math.random(0,1) == 1
	local bPatronymic	= math.random(0,1) == 1
	
	local sName
	local sParent
	local sSuffix		= bMale and "son" or "dóttir"

	if bMale then
		sName = tMaleNames[math.random(1,#tMaleNames)]
	else
		sName = tFemaleNames[math.random(1,#tFemaleNames)]
	end

	if bPatronymic then
		sParent = tMaleGenitiveNames[math.random(1,#tMaleNames)]
	else
		sParent = tFemaleGenitiveNames[math.random(1,#tFemaleNames)]
	end

	return (sName .. " " .. sParent .. sSuffix)
end

function round(num, numDecimalPlaces)
  local mult = 10^(numDecimalPlaces or 0)
  return math.floor(num * mult + 0.5) / mult
end

local GetEra
-- --==========================================================================================================================
-- -- CORE FUNCTIONS
-- --==========================================================================================================================
-- -- Historic Moments also provide [ICON_GreatWriter] Great Writer Points.
-- --------------------------------------------------------------
local sSagaTrait = "TRAIT_CIVILIZATION_SUK_SAGAS_OF_THE_ICELANDERS"
local tSagaPlayers = GetPlayersWithTrait(sSagaTrait)
local iWriter = GameInfo.GreatPersonClasses["GREAT_PERSON_CLASS_WRITER"].Index
local iMod = (GameInfo.GameSpeeds[GameConfiguration.GetGameSpeedType()].CostMultiplier)/100

local HISTORIC_MOMENT_HASH = DB.MakeHash("NOTIFICATION_PRIDE_MOMENT_RECORDED");
local iNotificationDuration = 5

function OnPlayerTurnActivated(iPlayer)
	
	if not tSagaPlayers[iPlayer] then return end
	if not (GetEra) then
		if ExposedMembers.Suk_Ingolfur_Utils then
			GetEra = ExposedMembers.Suk_Ingolfur_Utils.Era
		end
		if not (GetEra) then return end
	end 


	local pPlayer			= Players[iPlayer]
	local pGameEras			= GetEra()
	local iPreviousScore	= pPlayer:GetProperty(sSagaTrait) or 0
	local iCurrentScore		= pGameEras:GetPlayerCurrentScore(iPlayer); if not iCurrentScore then return end
	local iDeltaScore		= iCurrentScore - iPreviousScore

	pPlayer:SetProperty(sSagaTrait, iCurrentScore)

	if iDeltaScore > 0 then
		local iRewardMod = 1 + (pPlayer:GetEra()/2)
		local iReward = round(iDeltaScore * iRewardMod * iMod, 1)
		pPlayer:GetGreatPeoplePoints():ChangePointsTotal(iWriter, iReward)

		if iPlayer == Game.GetLocalPlayer() then
			sString = Locale.Lookup("LOC_TRAIT_CIVILIZATION_SUK_SAGAS_OF_THE_ICELANDERS_NOTIFICATION", GetIcelandicName(), iReward)
			Game.AddWorldViewText(ReportingStatusTypes.DEFAULT, sString, -1, -1, -1)
		end
	end
end

function OnProcessNotification(playerID, notificationID, activatedByUser)

	if not tSagaPlayers[playerID] then return end

	local pNotification = NotificationManager.Find(playerID, notificationID);
	if pNotification and pNotification:GetType() == HISTORIC_MOMENT_HASH then
		OnPlayerTurnActivated(playerID)
	end
end
-- --==========================================================================================================================
-- -- Init Sequence
-- --==========================================================================================================================
function Initialise()
	if ExposedMembers.Suk_Ingolfur_Utils then
		GetEra = ExposedMembers.Suk_Ingolfur_Utils.Era 
	end

	-- local tPlayers = PlayerManager.GetAliveMajors()
	-- for i, pPlayer in ipairs(tPlayers) do
	-- 	local iPlayer = pPlayer:GetID()
	-- 	OnPlayerTurnActivated(iPlayer)
	-- end

	print("Suk_Ingolfur_CoreFunctions Initialised")
end

GameEvents.PlayerTurnStarted.Add(OnPlayerTurnActivated)
Events.NotificationActivated.Add(OnProcessNotification)

Initialise()
--==========================================================================================================================
--==========================================================================================================================