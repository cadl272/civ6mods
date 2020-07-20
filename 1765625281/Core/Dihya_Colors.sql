/*
	Colors
	Authors: SeelingCat
*/
-----------------------------------------------
-- Colors
-----------------------------------------------

INSERT INTO	Colors
		(Type,								Color				)
VALUES	('COLOR_CVS_BERBER_A_PRIMARY',		'120,0,1,255'		),
		('COLOR_CVS_BERBER_A_SECONDARY',	'83,209,121,255'	),
		('COLOR_CVS_BERBER_B_PRIMARY',		'204,0,1,255'		),
		('COLOR_CVS_BERBER_B_SECONDARY',	'76,188,0,255'		),
		('COLOR_CVS_BERBER_C_PRIMARY',		'1,42,108,255'		),
		('COLOR_CVS_BERBER_C_SECONDARY',	'83,209,121,255'	),
		('COLOR_CVS_BERBER_D_PRIMARY',		'0,183,235,255'		),
		('COLOR_CVS_BERBER_D_SECONDARY',	'120,0,1,255'		);

-----------------------------------------------
-- PlayerColors
-----------------------------------------------

INSERT INTO	PlayerColors (Type, Usage, PrimaryColor, SecondaryColor, Alt1PrimaryColor, Alt1SecondaryColor, Alt2PrimaryColor, Alt2SecondaryColor, Alt3PrimaryColor, Alt3SecondaryColor )
VALUES	(
		'LEADER_CVS_DIHYA',
		'Unique',
		'COLOR_CVS_BERBER_A_PRIMARY',
		'COLOR_CVS_BERBER_A_SECONDARY',
		'COLOR_CVS_BERBER_B_PRIMARY',
		'COLOR_CVS_BERBER_B_SECONDARY',
		'COLOR_CVS_BERBER_C_PRIMARY',
		'COLOR_CVS_BERBER_C_SECONDARY',
		'COLOR_CVS_BERBER_D_PRIMARY',
		'COLOR_CVS_BERBER_D_SECONDARY'
		);