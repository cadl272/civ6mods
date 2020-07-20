/*
	Icons
	Credits: ChimpanG
*/

-----------------------------------------------
-- IconTextureAtlases
-----------------------------------------------
	
INSERT INTO IconTextureAtlases	
		(Name,									IconSize,	IconsPerRow,	IconsPerColumn,	Filename									)
VALUES  ('ICON_ATLAS_CVS_SARGON_PORTRAIT',		256,	 	1,				1,				'LEADER_CVS_SARGON_PORTRAIT_256.dds'		),
		('ICON_ATLAS_CVS_SARGON_PORTRAIT',		80,	 		1,				1,				'LEADER_CVS_SARGON_PORTRAIT_80.dds'			),
		('ICON_ATLAS_CVS_SARGON_PORTRAIT',		64,	 		1,				1,				'LEADER_CVS_SARGON_PORTRAIT_64.dds'			),
		('ICON_ATLAS_CVS_SARGON_PORTRAIT',		55,	 		1,				1,				'LEADER_CVS_SARGON_PORTRAIT_55.dds'			),
		('ICON_ATLAS_CVS_SARGON_PORTRAIT',		50,	 		1,				1,				'LEADER_CVS_SARGON_PORTRAIT_50.dds'			),
		('ICON_ATLAS_CVS_SARGON_PORTRAIT',		45,	 		1,				1,				'LEADER_CVS_SARGON_PORTRAIT_45.dds'			),
		('ICON_ATLAS_CVS_SARGON_PORTRAIT',		32,	 		1,				1,				'LEADER_CVS_SARGON_PORTRAIT_32.dds'			),
		
		('ICON_ATLAS_CVS_SARGON_ICON',			45,	 		1,				1,				'LEADER_CVS_SARGON_ICON_45.dds'				),
		('ICON_ATLAS_CVS_SARGON_ICON',			256,		1,				1,				'LEADER_CVS_SARGON_ICON_256.dds'			);
		
-----------------------------------------------
-- IconDefinitions
-----------------------------------------------

INSERT INTO IconDefinitions	
		(Name,														Atlas, 									'Index'		)
VALUES  ('ICON_LEADER_CVS_SARGON',									'ICON_ATLAS_CVS_SARGON_PORTRAIT',		0			),
		('ICON_CIVILIZATION_CVS_AKKAD_SARGON',						'ICON_ATLAS_CVS_SARGON_ICON',			0			);
