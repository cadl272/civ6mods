--==========================================================================================================================
-- COLOURS
--==========================================================================================================================
-- Colors
-------------------------------------	
INSERT INTO Colors 
		(Type, 													Color)
VALUES	('COLOR_PLAYER_SUK_LOBSANG_GYATSO_SECONDARY', 			'213,137,8,255'); -- #D58908
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
			'LEADER_SUK_LOBSANG_GYATSO',
			'Unique',

			'COLOR_STANDARD_RED_DK',
			'COLOR_PLAYER_SUK_LOBSANG_GYATSO_SECONDARY',

			'COLOR_STANDARD_WHITE_LT',
			'COLOR_STANDARD_GREEN_DK',

			'COLOR_PLAYER_SUK_LOBSANG_GYATSO_SECONDARY',
			'COLOR_STANDARD_RED_DK',

			'COLOR_STANDARD_GREEN_DK',
			'COLOR_STANDARD_WHITE_LT'
		);
--==========================================================================================================================
--==========================================================================================================================