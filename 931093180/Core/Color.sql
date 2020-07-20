--==========================================================================================================================
-- COLOURS
--==========================================================================================================================
-- Colors
-------------------------------------	
INSERT INTO Colors 
		(Type, 												Color)
VALUES	('COLOR_PLAYER_SUK_CHULALONGKORN_PRIMARY',			'191,127,0,255'), -- #BF7F00
		('COLOR_PLAYER_SUK_CHULALONGKORN_SECONDARY',		'230,221,185,255'); -- #E6DDB9
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
			'LEADER_SUK_CHULALONGKORN',
			'Unique',

			'COLOR_PLAYER_SUK_CHULALONGKORN_PRIMARY',
			'COLOR_PLAYER_SUK_CHULALONGKORN_SECONDARY',

			'COLOR_STANDARD_RED_DK',
			'COLOR_PLAYER_SUK_CHULALONGKORN_SECONDARY',

			'COLOR_STANDARD_WHITE_MD',
			'COLOR_STANDARD_ORANGE_LT',

			'COLOR_PLAYER_SUK_CHULALONGKORN_SECONDARY',
			'COLOR_PLAYER_SUK_CHULALONGKORN_PRIMARY'
		);
--==========================================================================================================================
--==========================================================================================================================