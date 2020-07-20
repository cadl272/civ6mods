/*
	Icons
	Authors: ChimpanG
*/
-----------------------------------------------
-- IconTextureAtlases
-----------------------------------------------
	
INSERT INTO IconTextureAtlases	
		(Name,									IconSize,	IconsPerRow,	IconsPerColumn,	Filename								)
VALUES	('ICON_ATLAS_CVS_ANACAONA_PORTRAIT',	256,	 	1,				1,				'LEADER_CVS_ANACAONA_PORTRAIT_256.dds'	),
		('ICON_ATLAS_CVS_ANACAONA_PORTRAIT',	80,	 		1,				1,				'LEADER_CVS_ANACAONA_PORTRAIT_80.dds'	),
		('ICON_ATLAS_CVS_ANACAONA_PORTRAIT',	64,	 		1,				1,				'LEADER_CVS_ANACAONA_PORTRAIT_64.dds'	),
		('ICON_ATLAS_CVS_ANACAONA_PORTRAIT',	55,	 		1,				1,				'LEADER_CVS_ANACAONA_PORTRAIT_55.dds'	),
		('ICON_ATLAS_CVS_ANACAONA_PORTRAIT',	50,	 		1,				1,				'LEADER_CVS_ANACAONA_PORTRAIT_50.dds'	),
		('ICON_ATLAS_CVS_ANACAONA_PORTRAIT',	45,	 		1,				1,				'LEADER_CVS_ANACAONA_PORTRAIT_45.dds'	),
		('ICON_ATLAS_CVS_ANACAONA_PORTRAIT',	32,	 		1,				1,				'LEADER_CVS_ANACAONA_PORTRAIT_32.dds'	),
		
		('ICON_ATLAS_CVS_ANACAONA_UI_ICON',		256,		1,				1,				'LEADER_CVS_ANACAONA_UI_ICON_256.dds'	),
		('ICON_ATLAS_CVS_ANACAONA_UI_ICON',		200,		1,				1,				'LEADER_CVS_ANACAONA_UI_ICON_200.dds'	),
		('ICON_ATLAS_CVS_ANACAONA_UI_ICON',		80,			1,				1,				'LEADER_CVS_ANACAONA_UI_ICON_80.dds'	),
		('ICON_ATLAS_CVS_ANACAONA_UI_ICON',		50,			1,				1,				'LEADER_CVS_ANACAONA_UI_ICON_50.dds'	),
		('ICON_ATLAS_CVS_ANACAONA_UI_ICON',		40,			1,				1,				'LEADER_CVS_ANACAONA_UI_ICON_40.dds'	),
		('ICON_ATLAS_CVS_ANACAONA_UI_ICON',		38,			1,				1,				'LEADER_CVS_ANACAONA_UI_ICON_38.dds'	);
		
-----------------------------------------------
-- IconDefinitions
-----------------------------------------------

INSERT INTO IconDefinitions	
		(Name,										Atlas, 								'Index'		)
VALUES  ('ICON_LEADER_CVS_ANACAONA',				'ICON_ATLAS_CVS_ANACAONA_PORTRAIT',	0			),
		('ICON_IMPROVEMENT_CVS_ANACAONA_UI',		'ICON_ATLAS_CVS_ANACAONA_UI_ICON',	0			);