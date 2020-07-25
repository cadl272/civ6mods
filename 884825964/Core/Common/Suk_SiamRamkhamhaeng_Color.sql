--==========================================================================================================================
-- COLOURS
--==========================================================================================================================
-- Colors
-------------------------------------
INSERT INTO Colors
		(Type, 											Color)
VALUES	('COLOR_PLAYER_SUK_RAMKHAMHAENG_SECONDARY', 			'212,167,135,255'); -- #D4A787
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
			'LEADER_SUK_RAMKHAMHAENG',
			'Unique',

			'COLOR_STANDARD_RED_DK',
			'COLOR_PLAYER_SUK_RAMKHAMHAENG_SECONDARY',

			'COLOR_STANDARD_ORANGE_LT',
			'COLOR_STANDARD_RED_DK',

			'COLOR_PLAYER_SUK_RAMKHAMHAENG_SECONDARY',
			'COLOR_STANDARD_RED_DK',

			'COLOR_STANDARD_PURPLE_DK',
			'COLOR_STANDARD_YELLOW_MD'
		);
--==========================================================================================================================
--==========================================================================================================================