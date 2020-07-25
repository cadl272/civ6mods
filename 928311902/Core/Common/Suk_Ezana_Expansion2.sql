-- Suk_Ezana_Expansion2
-- Author: Sukrit
-- DateCreated: 2/13/2018 8:53:59 PM
--==========================================================================================================================
-- IMPROVEMENTS
--==========================================================================================================================
	-- Improvements_XP2
	-------------------------------------
		INSERT INTO Improvements_XP2
				(ImprovementType, 					DisasterResistant)
		VALUES	('IMPROVEMENT_SUK_STELE',			1);
	-------------------------------------
	-- Improvements
	-------------------------------------
		UPDATE Improvements
		SET Description =	CASE
								WHEN EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SUK_EZANA_DLC') THEN 'LOC_IMPROVEMENT_SUK_STELE_DLC_XP2_DESCRIPTION'
								ELSE 'LOC_IMPROVEMENT_SUK_STELE_XP2_DESCRIPTION'
 							END
 		WHERE ImprovementType = 'IMPROVEMENT_SUK_STELE';
--==========================================================================================================================
--==========================================================================================================================