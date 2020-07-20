--==========================================================================================================================
-- COLOURS
--==========================================================================================================================
-- PlayerColors
-------------------------------------	
INSERT INTO PlayerColors	
		(
			Type,								
			Usage,

			PrimaryColor,
			SecondaryColor,

			Alt1PrimaryColor,
			Alt1SecondaryColor,

			Alt2PrimaryColor,
			Alt2SecondaryColor,

			Alt3PrimaryColor,
			Alt3SecondaryColor
		)
VALUES
		(
			'LEADER_SUK_HADRIAN',								
			'Unique',

			'COLOR_PLAYER_SUK_ROME_HADRIAN_PRIMARY',
			'COLOR_STANDARD_YELLOW_MD',

			'COLOR_STANDARD_RED_DK',
			'COLOR_STANDARD_YELLOW_MD',

			'COLOR_STANDARD_YELLOW_MD',
			'COLOR_PLAYER_SUK_ROME_HADRIAN_PRIMARY',

			'COLOR_PLAYER_SUK_ROME_HADRIAN_PRIMARY',
			'COLOR_STANDARD_WHITE_LT'
		);
		
INSERT INTO Colors 
		(Type, 												Color)
VALUES	('COLOR_PLAYER_SUK_ROME_HADRIAN_PRIMARY', 			"102,18,51,255");
--==========================================================================================================================
--==========================================================================================================================