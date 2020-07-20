/*
	Colors
	Authors: ChimpanG
*/

-----------------------------------------------
-- Schema
-----------------------------------------------

CREATE TABLE IF NOT EXISTS ModValidation (Version TEXT DEFAULT NULL);

REPLACE INTO ModValidation
		(Version		)
VALUES	('CVS_WILLIAM'	);

-----------------------------------------------
-- Colors
-----------------------------------------------

REPLACE INTO Colors
		(Type,								Color				)
VALUES	('COLOR_CVS_NORMANDY_A_PRIMARY',	'122,20,39,255'		),
		('COLOR_CVS_NORMANDY_A_SECONDARY',	'243,134,48,255'	),
		('COLOR_CVS_NORMANDY_B_PRIMARY',	'109,24,58,255'		),
		('COLOR_CVS_NORMANDY_B_SECONDARY',	'229,187,181,255'	),
		('COLOR_CVS_NORMANDY_C_PRIMARY',	'88,72,71,255'		),
		('COLOR_CVS_NORMANDY_C_SECONDARY',	'252,202,132,255'	),
		('COLOR_CVS_NORMANDY_D_PRIMARY',	'20,62,122,255'		),
		('COLOR_CVS_NORMANDY_D_SECONDARY',	'243,134,48,255'	);

-----------------------------------------------
-- PlayerColors
-----------------------------------------------

INSERT INTO	PlayerColors (Type, Usage, PrimaryColor, SecondaryColor, Alt1PrimaryColor, Alt1SecondaryColor, Alt2PrimaryColor, Alt2SecondaryColor, Alt3PrimaryColor, Alt3SecondaryColor )
VALUES	(
		'LEADER_CVS_WILLIAM_ENGLAND',
		'Unique',
		'COLOR_CVS_NORMANDY_A_PRIMARY',
		'COLOR_CVS_NORMANDY_A_SECONDARY',
		'COLOR_CVS_NORMANDY_B_PRIMARY',
		'COLOR_CVS_NORMANDY_B_SECONDARY',
		'COLOR_CVS_NORMANDY_C_PRIMARY',
		'COLOR_CVS_NORMANDY_C_SECONDARY',
		'COLOR_CVS_NORMANDY_D_PRIMARY',
		'COLOR_CVS_NORMANDY_D_SECONDARY'
		);

INSERT INTO	PlayerColors (Type, Usage, PrimaryColor, SecondaryColor, Alt1PrimaryColor, Alt1SecondaryColor, Alt2PrimaryColor, Alt2SecondaryColor, Alt3PrimaryColor, Alt3SecondaryColor )
SELECT	'LEADER_CVS_WILLIAM_NORMANDY',
		'Unique',
		'COLOR_CVS_NORMANDY_A_PRIMARY',
		'COLOR_CVS_NORMANDY_A_SECONDARY',
		'COLOR_CVS_NORMANDY_B_PRIMARY',
		'COLOR_CVS_NORMANDY_B_SECONDARY',
		'COLOR_CVS_NORMANDY_C_PRIMARY',
		'COLOR_CVS_NORMANDY_C_SECONDARY',
		'COLOR_CVS_NORMANDY_D_PRIMARY',
		'COLOR_CVS_NORMANDY_D_SECONDARY'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('CVS_NORMANDY'));
