/*
	XP1
	Authors: ChimpanG
*/

-----------------------------------------------
-- MomentIllustrations
-----------------------------------------------

INSERT INTO MomentIllustrations
		(MomentIllustrationType,					MomentDataType,				GameDataType,						Texture								)
VALUES	('MOMENT_ILLUSTRATION_UNIQUE_IMPROVEMENT',	'MOMENT_DATA_IMPROVEMENT',	'IMPROVEMENT_CVS_KALANGITAN_UI',	'Moment_Infrastructure_CVS_NipaHut'	);

-----------------------------------------------
-- Leaders
-----------------------------------------------

UPDATE	Leaders
SET		Sex = 'Female'
WHERE	LeaderType = 'LEADER_CVS_KALANGITAN';