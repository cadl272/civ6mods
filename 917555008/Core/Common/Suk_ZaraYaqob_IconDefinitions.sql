--==========================================================================================================================
-- ICONS
--==========================================================================================================================
-- IconTextureAtlases
-------------------------------------
INSERT INTO IconTextureAtlases
		(Name,										IconSize,	IconsPerRow,	IconsPerColumn,		Filename)
VALUES  ('ICON_ATLAS_SUK_ETHIOPIA',					256,	 	5,				1,					'Suk_Ethiopia_Atlas_256.dds'),
		('ICON_ATLAS_SUK_ETHIOPIA',					200,	 	5,				1,					'Suk_Ethiopia_Atlas_200.dds'),
		('ICON_ATLAS_SUK_ETHIOPIA',					128,	 	5,				1,					'Suk_Ethiopia_Atlas_128.dds'),
		('ICON_ATLAS_SUK_ETHIOPIA',					95,	 		5,				1,					'Suk_Ethiopia_Atlas_95.dds'),
		('ICON_ATLAS_SUK_ETHIOPIA',					80,	 		5,				1,					'Suk_Ethiopia_Atlas_80.dds'),
		('ICON_ATLAS_SUK_ETHIOPIA',					70,	 		5,				1,					'Suk_Ethiopia_Atlas_70.dds'),
		('ICON_ATLAS_SUK_ETHIOPIA',					64,	 		5,				1,					'Suk_Ethiopia_Atlas_64.dds'),
		('ICON_ATLAS_SUK_ETHIOPIA',					55,	 		5,				1,					'Suk_Ethiopia_Atlas_55.dds'),
		('ICON_ATLAS_SUK_ETHIOPIA',					50,	 		5,				1,					'Suk_Ethiopia_Atlas_50.dds'),
		('ICON_ATLAS_SUK_ETHIOPIA',					48,	 		5,				1,					'Suk_Ethiopia_Atlas_48.dds'),
		('ICON_ATLAS_SUK_ETHIOPIA',					45,	 		5,				1,					'Suk_Ethiopia_Atlas_45.dds'),
		('ICON_ATLAS_SUK_ETHIOPIA',					44,	 		5,				1,					'Suk_Ethiopia_Atlas_44.dds'),
		('ICON_ATLAS_SUK_ETHIOPIA',					40,	 		5,				1,					'Suk_Ethiopia_Atlas_40.dds'),
		('ICON_ATLAS_SUK_ETHIOPIA',					38,	 		5,				1,					'Suk_Ethiopia_Atlas_38.dds'),
		('ICON_ATLAS_SUK_ETHIOPIA',					36,	 		5,				1,					'Suk_Ethiopia_Atlas_36.dds'),
		('ICON_ATLAS_SUK_ETHIOPIA',					32,	 		5,				1,					'Suk_Ethiopia_Atlas_32.dds'),
		('ICON_ATLAS_SUK_ETHIOPIA',					30,	 		5,				1,					'Suk_Ethiopia_Atlas_30.dds'),
		('ICON_ATLAS_SUK_ETHIOPIA',					22,	 		5,				1,					'Suk_Ethiopia_Atlas_22.dds');
-------------------------------------
-- IconDefinitions
-------------------------------------
INSERT INTO IconDefinitions
		(Name,												Atlas, 									'Index')
VALUES  ('ICON_CIVILIZATION_SUK_ETHIOPIA',					'ICON_ATLAS_SUK_ETHIOPIA',				0),
		('ICON_GAMEMODE_SUK_ETHIOPIAREWORK',				'ICON_ATLAS_SUK_ETHIOPIA',				0),

		('ICON_LEADER_SUK_ZARAYAQOB',						'ICON_ATLAS_SUK_ETHIOPIA',				1),
		('ICON_LEADER_SUK_ZARAYAQOB_DLC',					'ICON_ATLAS_SUK_ETHIOPIA',				1),

		('ICON_BUILDING_SUK_ROCK_HEWN_CHURCH',				'ICON_ATLAS_SUK_ETHIOPIA',				2),
		('ICON_UNIT_SUK_SHOTELAI',							'ICON_ATLAS_SUK_ETHIOPIA',				4),

		('ICON_UNIT_SUK_SHOTELAI_PORTRAIT',						'ICON_ATLAS_SUK_ETHIOPIA',			3),
		('ICON_ETHNICITY_AFRICAN_UNIT_SUK_SHOTELAI_PORTRAIT',	'ICON_ATLAS_SUK_ETHIOPIA',			3),
		('ICON_ETHNICITY_SOUTHAM_UNIT_SUK_SHOTELAI_PORTRAIT',	'ICON_ATLAS_SUK_ETHIOPIA',			3),
		('ICON_ETHNICITY_MEDIT_UNIT_SUK_SHOTELAI_PORTRAIT',		'ICON_ATLAS_SUK_ETHIOPIA',			3),
		('ICON_ETHNICITY_ASIAN_UNIT_SUK_SHOTELAI_PORTRAIT',		'ICON_ATLAS_SUK_ETHIOPIA',			3);
--=============================================================================================	============================
--==========================================================================================================================