--==========================================================================================================================
-- COLOURS
--==========================================================================================================================
-- Colors
-------------------------------------	
INSERT INTO Colors 
		(Type, 											Color)
VALUES	('COLOR_PLAYER_SUK_INGOLFUR_PRIMARY', 			'0,24,70,255'); -- #001846
-------------------------------------
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
			'LEADER_SUK_INGOLFUR',
			'Unique',

			'COLOR_PLAYER_SUK_INGOLFUR_PRIMARY',
			'COLOR_STANDARD_RED_LT',

			'COLOR_PLAYER_SUK_INGOLFUR_PRIMARY',
			'COLOR_STANDARD_BLUE_LT',

			'COLOR_STANDARD_RED_DK',
			'COLOR_STANDARD_BLUE_LT',

			'COLOR_STANDARD_BLUE_LT',
			'COLOR_STANDARD_BLUE_MD'
		);
--==========================================================================================================================
--==========================================================================================================================