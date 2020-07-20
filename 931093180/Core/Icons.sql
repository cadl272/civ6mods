--==========================================================================================================================
-- ICONS
--==========================================================================================================================
-- IconTextureAtlases
-------------------------------------	
INSERT INTO IconTextureAtlases	
		(Name,										IconSize,	IconsPerRow,	IconsPerColumn,		Filename)
VALUES  ('ICON_ATLAS_SUK_CHULALONGKORN_ATLAS',		256,	 	1,				1,					'Icon_Suk_Chulalongkorn_256'),
		('ICON_ATLAS_SUK_CHULALONGKORN_ATLAS',		80,	 		1,				1,					'Icon_Suk_Chulalongkorn_80'),
		('ICON_ATLAS_SUK_CHULALONGKORN_ATLAS',		64,	 		1,				1,					'Icon_Suk_Chulalongkorn_64'),
		('ICON_ATLAS_SUK_CHULALONGKORN_ATLAS',		55,	 		1,				1,					'Icon_Suk_Chulalongkorn_55'),
		('ICON_ATLAS_SUK_CHULALONGKORN_ATLAS',		50,	 		1,				1,					'Icon_Suk_Chulalongkorn_50'),
		('ICON_ATLAS_SUK_CHULALONGKORN_ATLAS',		48,	 		1,				1,					'Icon_Suk_Chulalongkorn_48'),
		('ICON_ATLAS_SUK_CHULALONGKORN_ATLAS',		45,	 		1,				1,					'Icon_Suk_Chulalongkorn_45'),
		('ICON_ATLAS_SUK_CHULALONGKORN_ATLAS',		32,	 		1,				1,					'Icon_Suk_Chulalongkorn_32');
-------------------------------------
-- IconDefinitions
-------------------------------------	
INSERT OR REPLACE INTO IconDefinitions	
		(Name,										Atlas, 										'Index')
VALUES  ('ICON_LEADER_SUK_CHULALONGKORN',			'ICON_ATLAS_SUK_CHULALONGKORN_ATLAS',		0);
--==========================================================================================================================
-- ICONS
-- Prince Damrong
--==========================================================================================================================
-- IconTextureAtlases
-------------------------------------	
INSERT INTO IconTextureAtlases	
		(Name,													IconSize,	Baseline,	IconsPerRow,	IconsPerColumn,		Filename)
VALUES  ('ICON_ATLAS_SUK_CHULALONGKORN_GOVERNORS', 				64, 		0,			1,				1,					'Suk_Damrong_Governors64'),
		('ICON_ATLAS_SUK_CHULALONGKORN_GOVERNORS', 				32, 		0,			1,				1,					'Suk_Damrong_Governors32'),

		('ICON_ATLAS_SUK_CHULALONGKORN_GOVERNORS_FILL', 		32, 		0,			1,				1,					'Suk_Damrong_GovernorsCityBannerFill32'),
		('ICON_ATLAS_SUK_CHULALONGKORN_GOVERNORS_FILL', 		22, 		6,			1,				1,					'Suk_Damrong_GovernorsCityBannerFill22'),

		('ICON_ATLAS_SUK_CHULALONGKORN_GOVERNORS_SLOT', 		32, 		0,			1,				1,					'Suk_Damrong_GovernorsCityBannerSlot32'),
		('ICON_ATLAS_SUK_CHULALONGKORN_GOVERNORS_SLOT', 		22, 		6,			1,				1,					'Suk_Damrong_GovernorsCityBannerSlot22'),

		('ICON_ATLAS_SUK_CHULALONGKORN_GOVERNOR_PROMOTIONS', 	24, 		0,			1,				1,					'Suk_Damrong_GovernorPromotions24');
-------------------------------------
-- IconDefinitions
-------------------------------------	
INSERT OR REPLACE INTO IconDefinitions	
		(Name,										Atlas, 													'Index')
VALUES  ('ICON_GOVERNOR_SUK_DAMRONG', 				'ICON_ATLAS_SUK_CHULALONGKORN_GOVERNORS', 				0),
		('ICON_GOVERNOR_SUK_DAMRONG_FILL', 			'ICON_ATLAS_SUK_CHULALONGKORN_GOVERNORS_FILL', 			0),
		('ICON_GOVERNOR_SUK_DAMRONG_SLOT', 			'ICON_ATLAS_SUK_CHULALONGKORN_GOVERNORS_SLOT', 			0),

		('ICON_GOVERNOR_SUK_DAMRONG_PROMOTION', 	'ICON_ATLAS_SUK_CHULALONGKORN_GOVERNOR_PROMOTIONS', 	0);
-------------------------------------
-- Icons
-------------------------------------
INSERT INTO Icons 
			(Name)
VALUES		('GOVERNOR_SUK_DAMRONG_FILL'),
			('GOVERNOR_SUK_DAMRONG_SLOT');
-------------------------------------
-- IconAliases
-------------------------------------
INSERT INTO IconAliases 
			(Name, 										OtherName)
VALUES		('GOVERNOR_SUK_DAMRONG_FILL',				'ICON_GOVERNOR_SUK_DAMRONG_FILL'),
			('GOVERNOR_SUK_DAMRONG_SLOT',				'ICON_GOVERNOR_SUK_DAMRONG_SLOT');
--==========================================================================================================================
--==========================================================================================================================