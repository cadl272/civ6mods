--==========================================================================================================================
-- COLOURS
--==========================================================================================================================
-- Colors
-------------------------------------	
INSERT INTO Colors 
		(Type, 												Color)
VALUES	('COLOR_PLAYER_SUK_BAYINNAUNG_SECONDARY', 			'152,181,97,255'); -- #98B561
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
			'LEADER_SUK_BAYINNAUNG',
			'Unique',

			'COLOR_STANDARD_BLUE_DK',
			'COLOR_PLAYER_SUK_BAYINNAUNG_SECONDARY',

			'COLOR_STANDARD_AQUA_DK',
			'COLOR_STANDARD_RED_MD',

			'COLOR_PLAYER_SUK_BAYINNAUNG_SECONDARY',
			'COLOR_STANDARD_BLUE_DK',

			'COLOR_STANDARD_RED_DK',
			'COLOR_PLAYER_SUK_BAYINNAUNG_SECONDARY'
		);
--==========================================================================================================================
--==========================================================================================================================
