/*
	Icons
	Authors: ChimpanG
*/

-----------------------------------------------
-- IconTextureAtlases
-----------------------------------------------
	
INSERT INTO IconTextureAtlases	
		(Name,										IconSize,	IconsPerRow,	IconsPerColumn,	Filename									)
VALUES	('ICON_ATLAS_CVS_TIGRANES_II_PORTRAIT',		256,	 	1,				1,				'LEADER_CVS_TIGRANES_II_PORTRAIT_256.dds'	),
		('ICON_ATLAS_CVS_TIGRANES_II_PORTRAIT',		80,	 		1,				1,				'LEADER_CVS_TIGRANES_II_PORTRAIT_80.dds'	),
		('ICON_ATLAS_CVS_TIGRANES_II_PORTRAIT',		64,	 		1,				1,				'LEADER_CVS_TIGRANES_II_PORTRAIT_64.dds'	),
		('ICON_ATLAS_CVS_TIGRANES_II_PORTRAIT',		55,	 		1,				1,				'LEADER_CVS_TIGRANES_II_PORTRAIT_55.dds'	),
		('ICON_ATLAS_CVS_TIGRANES_II_PORTRAIT',		50,	 		1,				1,				'LEADER_CVS_TIGRANES_II_PORTRAIT_50.dds'	),
		('ICON_ATLAS_CVS_TIGRANES_II_PORTRAIT',		45,	 		1,				1,				'LEADER_CVS_TIGRANES_II_PORTRAIT_45.dds'	),
		('ICON_ATLAS_CVS_TIGRANES_II_PORTRAIT',		32,	 		1,				1,				'LEADER_CVS_TIGRANES_II_PORTRAIT_32.dds'	);		
		
-----------------------------------------------
-- IconDefinitions
-----------------------------------------------

INSERT INTO IconDefinitions	
		(Name,							Atlas, 									'Index'	)
VALUES  ('ICON_LEADER_CVS_TIGRANES_II',	'ICON_ATLAS_CVS_TIGRANES_II_PORTRAIT',	0		);
