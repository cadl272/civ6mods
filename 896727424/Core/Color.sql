--==========================================================================================================================
-- COLOURS
--==========================================================================================================================
-- Colors
-------------------------------------	
INSERT OR REPLACE INTO Colors
		(Type,										Color)
VALUES	("COLOR_PLAYER_SUK_KHOSROW_I_PRIMARY",		"71,58,122,255"),	--#473A7A
		("COLOR_PLAYER_SUK_KHOSROW_I_SECONDARY",	"234,203,125,255"),	--#EACB7D
		("COLOR_STANDARD_IMPERIAL_LT",				"234,111,147,255");	--#EA6F93
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
			'LEADER_SUK_KHOSROW_I',
			'Unique',

			'COLOR_PLAYER_SUK_KHOSROW_I_PRIMARY',
			'COLOR_PLAYER_SUK_KHOSROW_I_SECONDARY',

			'COLOR_STANDARD_RED_DK',
			'COLOR_PLAYER_SUK_KHOSROW_I_SECONDARY',

			'COLOR_STANDARD_BLUE_LT',
			'COLOR_STANDARD_RED_MD',

			'COLOR_PLAYER_SUK_KHOSROW_I_PRIMARY',
			'COLOR_STANDARD_IMPERIAL_LT'
		);
--==========================================================================================================================
--==========================================================================================================================