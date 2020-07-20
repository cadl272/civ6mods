-----------------------------------------------
-- MALAYSIA FUNCTIONS
-----------------------------------------------
-----------------------------------------------
-- UTILITIES
-----------------------------------------------

function C15_ValidTrait(sTrait) -- Chrisy
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

	local sTrait = "TRAIT_LEADER_CVS_BORAN_UA"
	local tTraitPlayers = C15_ValidTrait(sTrait)

-----------------------------------------------
-- FUNCTION Sailor_Boran_QuestEnvoy
-- Authors: ChimpanG
-----------------------------------------------

function Sailor_Boran_QuestEnvoy(CityStatePlayerID, CompletedQuestPlayerID)
	
	if tTraitPlayers[CompletedQuestPlayerID] then
		local pPlayer = Players[CompletedQuestPlayerID]
		local pCityState = Players[CityStatePlayerID]
			pPlayer:GetInfluence():GiveFreeTokenToPlayer(CityStatePlayerID)
	end
end		

Events.QuestChanged.Add(Sailor_Boran_QuestEnvoy);
