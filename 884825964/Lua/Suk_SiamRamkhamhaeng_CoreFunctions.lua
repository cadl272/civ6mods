-- Suk_SiamRamkhamhaeng_CoreFunctions
-- Author: Sukrit
-- DateCreated: 3/12/2017 7:17:52 AM
--==========================================================================================================================
--==========================================================================================================================
print("Loaded")
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
-- SRI AYUTTHAYA
----------------------------------------------------------------------------------------------------------------------------
local sSriAyutthaya = "TRAIT_CIVILIZATION_SUK_SRI_AYUTTHAYA"
local tSiamPlayers = GetPlayersWithTrait(sSriAyutthaya)

local tValidCivics = {}
local tValidMods = {CIVIC_AWARD_ONE_INFLUENCE_TOKEN = true, CIVIC_AWARD_TWO_INFLUENCE_TOKENS = true, CIVIC_AWARD_THREE_INFLUENCE_TOKENS = true}
for tRow in GameInfo.CivicModifiers() do
	if tValidMods[tRow.ModifierId] then
		tValidCivics[tRow.CivicType] = true
		--print(tRow.CivicType)
	end
end

--Trait_SriAyutthaya_CivicEnvoyBonus
function Trait_SriAyutthaya_CivicEnvoyBonus(iPlayer, iCivic)

	if not tSiamPlayers[iPlayer] then return end

	local pPlayer = Players[iPlayer]
	local sCivic = GameInfo.Civics[iCivic].CivicType
	if tValidCivics[sCivic] then
		pPlayer:GetInfluence():ChangeTokensToGive(1)
	end

end
Events.CivicCompleted.Add(Trait_SriAyutthaya_CivicEnvoyBonus)
----------------------------------------------------------------------------------------------------------------------------
-- The Thai Alphabet

-- BoostSources (Table in UI context)
-- BOOST_SOURCE_RESEARCH_AGREEMENT	5
-- BOOST_SOURCE_ESPIONAGE	4
-- BOOST_SOURCE_TRIGGER	0
-- BOOST_SOURCE_TEAMMATE	6
-- BOOST_SOURCE_CAPTURED_CITY	7
-- BOOST_SOURCE_GREAT_PERSON	3
-- BOOST_SOURCE_GOODYHUT	1
-- BOOST_SOURCE_WONDER	2
-- NO_BOOST_SOURCE	-1
----------------------------------------------------------------------------------------------------------------------------
local sThaiAlphabet = "TRAIT_LEADER_SUK_THE_THAI_ALPHABET"
local tRamkhamhaengPlayers = GetPlayersWithTrait(sThaiAlphabet)
local iMaxBoostSource = 3 -- Inclusive, only HIGHER sources are blocked

local iMod = (GameInfo.GameSpeeds[GameConfiguration.GetGameSpeedType()].CostMultiplier)/100
local iNotificationDuration = 5
------------------------------------------
--Trait_ThaiAlphabet_GetGold
------------------------------------------
function Trait_ThaiAlphabet_GetGold(iCost)

	-- Old Formula
	--return local iReward = iCost * 0.33

	local iReward = ((iCost/10) + math.sqrt(10 * iCost))
	iReward = math.floor(iReward * iMod * 0.66)

	return iReward
end
------------------------------------------
--Trait_ThaiAlphabet_CivicGold
------------------------------------------
function Trait_ThaiAlphabet_CivicGold(iPlayer, iCivic, iCivicProgress, iSource)

	if not tRamkhamhaengPlayers[iPlayer] then return end
	local pPlayer = Players[iPlayer]

	if iSource > iMaxBoostSource then return end

	local iCivicCost = GameInfo.Civics[iCivic].Cost
	if iCivicCost < 1 then return end

	local iReward = Trait_ThaiAlphabet_GetGold(iCivicCost)
	pPlayer:GetTreasury():ChangeGoldBalance(iReward)

	if iPlayer == Game.GetLocalPlayer() then
		local sCivic	= Locale.Lookup(GameInfo.Civics[iCivic].Name)
		local sString	= Locale.Lookup("LOC_TRAIT_LEADER_SUK_THE_THAI_ALPHABET_INSPIRATION", iReward, sCivic)
		Game.AddWorldViewText(ReportingStatusTypes.DEFAULT, sString, -1, -1, -1)
	end
end
Events.CivicBoostTriggered.Add(Trait_ThaiAlphabet_CivicGold)
------------------------------------------
--Trait_ThaiAlphabet_TechGold
------------------------------------------
function Trait_ThaiAlphabet_TechGold(iPlayer, iTech, iTechProgress, iSource)

	if not tRamkhamhaengPlayers[iPlayer] then return end
	local pPlayer = Players[iPlayer]

	if iSource > iMaxBoostSource then return end

	local iTechCost = GameInfo.Technologies[iTech].Cost
	if iTechCost < 1 then return end

	local iReward = Trait_ThaiAlphabet_GetGold(iTechCost)
	pPlayer:GetTreasury():ChangeGoldBalance(iReward)

	if iPlayer == Game.GetLocalPlayer() then
		local sTech = Locale.Lookup(GameInfo.Technologies[iTech].Name)
		local sString	= Locale.Lookup("LOC_TRAIT_LEADER_SUK_THE_THAI_ALPHABET_EUREKA", iReward, sTech)
		Game.AddWorldViewText(ReportingStatusTypes.DEFAULT, sString, -1, -1, -1)
	end
end
Events.TechBoostTriggered.Add(Trait_ThaiAlphabet_TechGold)
--==========================================================================================================================
--==========================================================================================================================
