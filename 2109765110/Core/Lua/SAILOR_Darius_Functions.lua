--=============================================
-- Darius Merchants Grant Titles by SailorCat
--=============================================
function Sailor_Darius_Merchant (playerID, unitID, iX, iY, locallyVisible, stateChange)
	local bDariusLeader = false
	local pPlayerConfig = PlayerConfigurations[playerID]
	local sLeader = pPlayerConfig:GetLeaderTypeName()
	print(sLeader)
	if sLeader == 'LEADER_CVS_DARIUS' then
		bDariusLeader = true
	end

	if bDariusLeader == true then
		local pPlayer = Players[playerID]
		local pGreatMerchant = GameInfo.Units["UNIT_GREAT_MERCHANT"].Index
		local pUnit = pPlayer:GetUnits():FindID(unitID)
		print("pUnit: ", pUnit)
		local pCoordX, pCoordY = pUnit:GetX(), pUnit:GetY()
		if pUnit:GetType() == pGreatMerchant then
			--//// +1 Governor Title
			local pPlayerGov = pPlayer:GetGovernors()
			pPlayerGov:ChangeGovernorPoints(1)
			print("Governor title granted.")
		end
	end
end

--=============================================
-- Leader Present Detection by SeelingCat
--=============================================
local bDariusPresent = false

for k, v in ipairs(PlayerManager.GetWasEverAliveIDs()) do
    if bDariusPresent == false then
        local sLeaderType = PlayerConfigurations[v]:GetLeaderTypeName()
        if sLeaderType == 'LEADER_CVS_DARIUS' then
			print (sLeaderType)
			bDariusPresent = true
        end
    end
end
if bDariusPresent == true then
    print ("///// Darius detected. Loading lua functions...")
	Events.UnitGreatPersonActivated.Add(Sailor_Darius_Merchant)
else
    print ("///// Darius not detected.")
end