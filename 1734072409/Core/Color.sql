--==========================================================================================================================
-- COLOURS
--==========================================================================================================================
-- Colors
-------------------------------------	
INSERT OR REPLACE INTO Colors
		(Type,								Color)
VALUES	("COLOR_STANDARD_SAND_LT",			"216,204,162,255"),	--#D8CCA2
		("COLOR_STANDARD_IMPERIAL_LT",		"234,111,147,255");	--#EA6F93
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
			'LEADER_SUK_NARAI',
			'Unique',

			'COLOR_STANDARD_PURPLE_DK',
			'COLOR_STANDARD_ORANGE_LT',

			'COLOR_STANDARD_SAND_LT',
			'COLOR_STANDARD_RED_DK',

			'COLOR_STANDARD_RED_DK',
			'COLOR_STANDARD_SAND_LT',

			'COLOR_STANDARD_PURPLE_DK',
			'COLOR_STANDARD_IMPERIAL_LT'
		);
--==========================================================================================================================
--==========================================================================================================================
