--==========================================================================================================================
-- ICONS
--==========================================================================================================================
-- IconTextureAtlases
-------------------------------------	
INSERT INTO IconTextureAtlases	
		(Name,								IconSize,	IconsPerRow,	IconsPerColumn,		Filename)
VALUES  ('ICON_ATLAS_SUK_HADRIAN',			256,	 	1,				1,					'Icon_Suk_Hadrian_256'),
		('ICON_ATLAS_SUK_HADRIAN',			80,	 		1,				1,					'Icon_Suk_Hadrian_80'),
		('ICON_ATLAS_SUK_HADRIAN',			64,	 		1,				1,					'Icon_Suk_Hadrian_64'),
		('ICON_ATLAS_SUK_HADRIAN',			55,	 		1,				1,					'Icon_Suk_Hadrian_55'),
		('ICON_ATLAS_SUK_HADRIAN',			50,	 		1,				1,					'Icon_Suk_Hadrian_50'),
		('ICON_ATLAS_SUK_HADRIAN',			48,	 		1,				1,					'Icon_Suk_Hadrian_48'),
		('ICON_ATLAS_SUK_HADRIAN',			45,	 		1,				1,					'Icon_Suk_Hadrian_45'),
		('ICON_ATLAS_SUK_HADRIAN',			32,	 		1,				1,					'Icon_Suk_Hadrian_32'),

		('ICON_ATLAS_SUK_HADRIAN_CIV',		45,	 		1,				1,					'Icon_Suk_Hadrian_Civ_45');
-------------------------------------
-- IconDefinitions
-------------------------------------	
INSERT OR REPLACE INTO IconDefinitions	
		(Name,											Atlas, 								'Index')
VALUES  ('ICON_LEADER_SUK_HADRIAN',						'ICON_ATLAS_SUK_HADRIAN',			0),
		('ICON_CIVILIZATION_ROME_SUK_HADRIAN',			'ICON_ATLAS_SUK_HADRIAN_CIV',		0);
--=========================================================================================================================
--==========================================================================================================================