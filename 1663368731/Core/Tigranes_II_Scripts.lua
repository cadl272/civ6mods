-----------------------------------------------
-- TIGRANES UA FUNCTION
-- Effect: Being promoted does not cost an action.
-- Author: ChimpanG
-----------------------------------------------

-----------------------------------------------
-- FUNCTION C15_ValidTrait
-- Authors: Chrisy15
-----------------------------------------------

function C15_ValidTrait(sTrait)
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

	local sTrait = "TRAIT_LEADER_CVS_TIGRANES_II_UA"
	local tTraitPlayers = C15_ValidTrait(sTrait)

-----------------------------------------------
-- FUNCTION CPG_Tigranes_PromotionAction
-- Authors: ChimpanG
-----------------------------------------------

function CPG_Tigranes_PromotionAction(playerID, unitID, promotionID)

	if tTraitPlayers[playerID] then -- Check player trait
		--print("Player has trait")	

		local pPlayer = Players[playerID]
		local pPlayerUnits = pPlayer:GetUnits()
		local pUnit = pPlayerUnits:FindID(unitID)

		if pUnit then
			UnitManager.RestoreMovement(pUnit, true);
			--print("Restored movement")
			UnitManager.RestoreUnitAttacks(pUnit, true);
			--print("Restored attacks")
		end
	end

	--print ("CPG_Tigranes_PromotionAction Complete!")
end		

Events.UnitPromoted.Add(CPG_Tigranes_PromotionAction);