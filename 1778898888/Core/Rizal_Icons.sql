/*
	Icons
	Authors: ChimpanG
*/

-----------------------------------------------
-- IconTextureAtlases
-----------------------------------------------
	
INSERT INTO IconTextureAtlases	
		(Name,										IconSize,	IconsPerRow,	IconsPerColumn,	Filename					)
VALUES  ('ICON_ATLAS_CVS_JOSE_RIZAL_PORTRAIT',		256,	 	1,				1,				'CVS_JOSE_RIZAL_256.dds'	),
		('ICON_ATLAS_CVS_JOSE_RIZAL_PORTRAIT',		80,	 		1,				1,				'CVS_JOSE_RIZAL_80.dds'		),
		('ICON_ATLAS_CVS_JOSE_RIZAL_PORTRAIT',		64,	 		1,				1,				'CVS_JOSE_RIZAL_64.dds'		),
		('ICON_ATLAS_CVS_JOSE_RIZAL_PORTRAIT',		55,	 		1,				1,				'CVS_JOSE_RIZAL_55.dds'		),
		('ICON_ATLAS_CVS_JOSE_RIZAL_PORTRAIT',		50,	 		1,				1,				'CVS_JOSE_RIZAL_50.dds'		),
		('ICON_ATLAS_CVS_JOSE_RIZAL_PORTRAIT',		45,	 		1,				1,				'CVS_JOSE_RIZAL_45.dds'		),
		('ICON_ATLAS_CVS_JOSE_RIZAL_PORTRAIT',		32,	 		1,				1,				'CVS_JOSE_RIZAL_32.dds'		);
		
-----------------------------------------------
-- IconDefinitions
-----------------------------------------------

INSERT INTO IconDefinitions	
		(Name,							Atlas, 									'Index'	)
VALUES  ('ICON_LEADER_CVS_JOSE_RIZAL',	'ICON_ATLAS_CVS_JOSE_RIZAL_PORTRAIT',	0		);