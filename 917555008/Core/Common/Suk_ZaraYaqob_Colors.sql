--==========================================================================================================================
-- COLOURS
--==========================================================================================================================
-- Colors
-------------------------------------
INSERT INTO Colors
		(Type, 											Color)
VALUES	('COLOR_PLAYER_SUK_ZARAYAQOB_PRIMARY', 			'20,62,0,255'), -- #143E00
		('COLOR_PLAYER_SUK_ZARAYAQOB_SECONDARY', 		'255,72,13,255'); -- #FF480D
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
			'LEADER_SUK_ZARAYAQOB',
			'Unique',

			'COLOR_PLAYER_SUK_ZARAYAQOB_PRIMARY',
			'COLOR_PLAYER_SUK_ZARAYAQOB_SECONDARY',

			'COLOR_PLAYER_SUK_ZARAYAQOB_PRIMARY',
			'COLOR_STANDARD_ORANGE_LT',

			'COLOR_STANDARD_RED_DK',
			'COLOR_STANDARD_GREEN_LT',

			'COLOR_STANDARD_ORANGE_LT',
			'COLOR_STANDARD_GREEN_DK'
		),
		(
			'LEADER_SUK_ZARAYAQOB_DLC',
			'Unique',

			'COLOR_PLAYER_SUK_ZARAYAQOB_PRIMARY',
			'COLOR_PLAYER_SUK_ZARAYAQOB_SECONDARY',

			'COLOR_PLAYER_SUK_ZARAYAQOB_PRIMARY',
			'COLOR_STANDARD_ORANGE_LT',

			'COLOR_STANDARD_RED_DK',
			'COLOR_STANDARD_GREEN_LT',

			'COLOR_STANDARD_ORANGE_LT',
			'COLOR_STANDARD_GREEN_DK'
		);
--==========================================================================================================================
--==========================================================================================================================