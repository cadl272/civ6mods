/*
	Colors
	Authors: ChimpanG, SeelingCat
*/

-----------------------------------------------
-- Colors
-----------------------------------------------

INSERT INTO	Colors
		(Type,								Color				)
VALUES	('COLOR_CVS_DJOSER_A_PRIMARY',		'32,121,142,255'	),
		('COLOR_CVS_DJOSER_A_SECONDARY',	'242,202,95,255'	),
		('COLOR_CVS_DJOSER_B_PRIMARY',		'242,202,95,255'	),
		('COLOR_CVS_DJOSER_B_SECONDARY',	'0,126,162,255'		),
		('COLOR_CVS_DJOSER_C_PRIMARY',		'242,202,95,255'	),
		('COLOR_CVS_DJOSER_C_SECONDARY',	'90,0,70,255'		),
		('COLOR_CVS_DJOSER_D_PRIMARY',		'0,87,114,255'		),
		('COLOR_CVS_DJOSER_D_SECONDARY',	'126,225,232,255'	);

-----------------------------------------------
-- PlayerColors
-----------------------------------------------

INSERT INTO	PlayerColors (Type, Usage, PrimaryColor, SecondaryColor, Alt1PrimaryColor, Alt1SecondaryColor, Alt2PrimaryColor, Alt2SecondaryColor, Alt3PrimaryColor, Alt3SecondaryColor )
VALUES	(
		'LEADER_CVS_DJOSER',
		'Unique',
		'COLOR_CVS_DJOSER_A_PRIMARY',
		'COLOR_CVS_DJOSER_A_SECONDARY',
		'COLOR_CVS_DJOSER_B_PRIMARY',
		'COLOR_CVS_DJOSER_B_SECONDARY',
		'COLOR_CVS_DJOSER_C_PRIMARY',
		'COLOR_CVS_DJOSER_C_SECONDARY',
		'COLOR_CVS_DJOSER_D_PRIMARY',
		'COLOR_CVS_DJOSER_D_SECONDARY'
		);