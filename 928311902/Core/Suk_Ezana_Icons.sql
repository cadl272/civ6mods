--==========================================================================================================================
-- IconTextureAtlases
--==========================================================================================================================
INSERT INTO IconTextureAtlases 
			(Name, 							IconSize, 	Filename, 								IconsPerRow, 	IconsPerColumn)
VALUES		('SUK_EZANA_ATLAS', 			256, 		'Suk_Ezana_Atlas_256',					2, 				1),
			('SUK_EZANA_ATLAS', 			80, 		'Suk_Ezana_Atlas_80',					2, 				1),
			('SUK_EZANA_ATLAS', 			64, 		'Suk_Ezana_Atlas_64',					2, 				1),
			('SUK_EZANA_ATLAS', 			55, 		'Suk_Ezana_Atlas_55',					2, 				1),
			('SUK_EZANA_ATLAS', 			50, 		'Suk_Ezana_Atlas_50',					2, 				1),			
			('SUK_EZANA_ATLAS', 			48, 		'Suk_Ezana_Atlas_48',					2, 				1),			
			('SUK_EZANA_ATLAS', 			45, 		'Suk_Ezana_Atlas_45',					2, 				1),
			('SUK_EZANA_ATLAS', 			38, 		'Suk_Ezana_Atlas_38',					2, 				1),
			('SUK_EZANA_ATLAS', 			32, 		'Suk_Ezana_Atlas_32',					2, 				1),

			('SUK_EZANA_CIV_ATLAS', 		45, 		'Suk_Ezana_Atlas_Civ_45',				1, 				1);
--==========================================================================================================================
-- IconTextureAtlases
--==========================================================================================================================
INSERT INTO IconDefinitions 
			(Name, 							Atlas, 					'Index')
VALUES		('ICON_LEADER_SUK_EZANA', 		'SUK_EZANA_ATLAS', 		0),
			('ICON_IMPROVEMENT_SUK_STELE', 	'SUK_EZANA_ATLAS', 		1),
			('ICON_CIV_SUK_EZANA', 			'SUK_EZANA_CIV_ATLAS', 	0);
--==========================================================================================================================
--==========================================================================================================================
