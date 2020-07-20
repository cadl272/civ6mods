--==========================================================================================================================
-- ICONS
--==========================================================================================================================
-- IconTextureAtlases
-------------------------------------	
INSERT INTO IconTextureAtlases 
			(Name, 									IconSize, 	Filename, 										IconsPerRow, 	IconsPerColumn)
VALUES		('SUK_SENUSRET_III_ATLAS', 				256, 		'Suk_Senusret_III_Atlas_256',							1, 				1),
			('SUK_SENUSRET_III_ATLAS', 				80, 		'Suk_Senusret_III_Atlas_80',							1, 				1),
			('SUK_SENUSRET_III_ATLAS', 				64, 		'Suk_Senusret_III_Atlas_64',							1, 				1),
			('SUK_SENUSRET_III_ATLAS', 				55, 		'Suk_Senusret_III_Atlas_55',							1, 				1),
			('SUK_SENUSRET_III_ATLAS', 				50, 		'Suk_Senusret_III_Atlas_50',							1, 				1),			
			('SUK_SENUSRET_III_ATLAS', 				48, 		'Suk_Senusret_III_Atlas_48',							1, 				1),			
			('SUK_SENUSRET_III_ATLAS', 				45, 		'Suk_Senusret_III_Atlas_45',							1, 				1),
			('SUK_SENUSRET_III_ATLAS', 				32, 		'Suk_Senusret_III_Atlas_32',							1, 				1),
			
			('SUK_SENUSRET_III_CIV_ATLAS', 			45, 		'Suk_Senusret_III_Atlas_Civ_45',						1, 				1);
-------------------------------------
-- IconDefinitions
-------------------------------------	
INSERT INTO IconDefinitions 
			(Name, 								Atlas, 							'Index')
VALUES		('ICON_LEADER_SUK_SENUSRET_III', 	'SUK_SENUSRET_III_ATLAS', 		0),
			('ICON_CIV_SUK_SENUSRET_III', 		'SUK_SENUSRET_III_CIV_ATLAS', 	0);
--==========================================================================================================================
--==========================================================================================================================
