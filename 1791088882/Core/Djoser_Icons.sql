/*
	Icons
	Authors: ChimpanG
*/

-----------------------------------------------
-- IconTextureAtlases
-----------------------------------------------
	
INSERT INTO IconTextureAtlases	
		(Name,									IconSize,	IconsPerRow,	IconsPerColumn,	Baseline,	Filename									)
VALUES	('ICON_ATLAS_CVS_DJOSER_PORTRAIT',		256,	 	1,				1,				0,			'LEADER_CVS_DJOSER_PORTRAIT_256.dds'		),
		('ICON_ATLAS_CVS_DJOSER_PORTRAIT',		80,	 		1,				1,				0,			'LEADER_CVS_DJOSER_PORTRAIT_80.dds'			),
		('ICON_ATLAS_CVS_DJOSER_PORTRAIT',		64,	 		1,				1,				0,			'LEADER_CVS_DJOSER_PORTRAIT_64.dds'			),
		('ICON_ATLAS_CVS_DJOSER_PORTRAIT',		55,	 		1,				1,				0,			'LEADER_CVS_DJOSER_PORTRAIT_55.dds'			),
		('ICON_ATLAS_CVS_DJOSER_PORTRAIT',		50,	 		1,				1,				0,			'LEADER_CVS_DJOSER_PORTRAIT_50.dds'			),
		('ICON_ATLAS_CVS_DJOSER_PORTRAIT',		45,	 		1,				1,				0,			'LEADER_CVS_DJOSER_PORTRAIT_45.dds'			),
		('ICON_ATLAS_CVS_DJOSER_PORTRAIT',		32,	 		1,				1,				0,			'LEADER_CVS_DJOSER_PORTRAIT_32.dds'			),

		('ICON_ATLAS_CVS_IMHOTEP_PORTRAIT',		64,	 		1,				1,				0,			'GOVERNOR_CVS_IMHOTEP_PORTRAIT_64.dds'		),
		('ICON_ATLAS_CVS_IMHOTEP_PORTRAIT',		32,	 		1,				1,				0,			'GOVERNOR_CVS_IMHOTEP_PORTRAIT_32.dds'		),
		('ICON_ATLAS_CVS_IMHOTEP_FILL',			32,	 		1,				1,				0,			'GOVERNOR_CVS_IMHOTEP_BANNER_FILL_32.dds'	),
		('ICON_ATLAS_CVS_IMHOTEP_FILL',			22,	 		1,				1,				6,			'GOVERNOR_CVS_IMHOTEP_BANNER_FILL_22.dds'	),
		('ICON_ATLAS_CVS_IMHOTEP_SLOT',			32,	 		1,				1,				0,			'GOVERNOR_CVS_IMHOTEP_BANNER_SLOT_32.dds'	),
		('ICON_ATLAS_CVS_IMHOTEP_SLOT',			22,	 		1,				1,				6,			'GOVERNOR_CVS_IMHOTEP_BANNER_SLOT_22.dds'	),
		('ICON_ATLAS_CVS_IMHOTEP_PROMOTIONS',	24,	 		1,				1,				0,			'GOVERNOR_CVS_IMHOTEP_PROMOTIONS_24.dds'	);

-----------------------------------------------
-- IconDefinitions
-----------------------------------------------

INSERT INTO IconDefinitions	
		(Name,									Atlas, 									'Index'	)
VALUES  ('ICON_LEADER_CVS_DJOSER',				'ICON_ATLAS_CVS_DJOSER_PORTRAIT',		0		),
		('ICON_GOVERNOR_CVS_IMHOTEP',			'ICON_ATLAS_CVS_IMHOTEP_PORTRAIT',		0		),
		('ICON_GOVERNOR_CVS_IMHOTEP_FILL',		'ICON_ATLAS_CVS_IMHOTEP_FILL',			0		),
		('ICON_GOVERNOR_CVS_IMHOTEP_SLOT',		'ICON_ATLAS_CVS_IMHOTEP_SLOT',			0		),
		('ICON_GOVERNOR_CVS_IMHOTEP_PROMOTION',	'ICON_ATLAS_CVS_IMHOTEP_PROMOTIONS',	0		);

-----------------------------------------------
-- Icons
-----------------------------------------------

INSERT INTO Icons
		(Name							)
VALUES	('GOVERNOR_CVS_IMHOTEP_FILL'	),
		('GOVERNOR_CVS_IMHOTEP_SLOT'	);

-----------------------------------------------
-- IconAliases
-----------------------------------------------

INSERT INTO IconAliases
		(Name,							OtherName							)
VALUES	('GOVERNOR_CVS_IMHOTEP_FILL',	'ICON_GOVERNOR_CVS_IMHOTEP_FILL'	),
		('GOVERNOR_CVS_IMHOTEP_SLOT',	'ICON_GOVERNOR_CVS_IMHOTEP_SLOT'	);
