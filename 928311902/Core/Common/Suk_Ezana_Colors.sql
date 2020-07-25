--==========================================================================================================================
-- COLOURS
--==========================================================================================================================
-- Colors
-------------------------------------
INSERT OR REPLACE INTO Colors
		(Type,									Color)
VALUES	("COLOR_PLAYER_SUK_EZANA_PRIMARY",		"43,62,0,255");	--#2B3E00
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
			'LEADER_SUK_EZANA',
			'Unique',

			'COLOR_PLAYER_SUK_EZANA_PRIMARY',
			'COLOR_STANDARD_ORANGE_LT',

			'COLOR_PLAYER_SUK_EZANA_PRIMARY',
			'COLOR_STANDARD_RED_MD',

			'COLOR_STANDARD_ORANGE_LT',
			'COLOR_PLAYER_SUK_EZANA_PRIMARY',

			'COLOR_STANDARD_RED_DK',
			'COLOR_STANDARD_GREEN_MD'
		),
		(
			'LEADER_SUK_EZANA_DLC',
			'Unique',

			'COLOR_PLAYER_SUK_EZANA_PRIMARY',
			'COLOR_STANDARD_ORANGE_LT',

			'COLOR_PLAYER_SUK_EZANA_PRIMARY',
			'COLOR_STANDARD_RED_MD',

			'COLOR_STANDARD_ORANGE_LT',
			'COLOR_PLAYER_SUK_EZANA_PRIMARY',

			'COLOR_STANDARD_RED_DK',
			'COLOR_STANDARD_GREEN_MD'
		);
--==========================================================================================================================
--==========================================================================================================================