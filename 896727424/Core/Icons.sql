--==========================================================================================================================
-- ICONS
--==========================================================================================================================
-- IconTextureAtlases
-------------------------------------	
INSERT INTO IconTextureAtlases 
			(Name, 							IconSize, 	Filename, 								IconsPerRow, 	IconsPerColumn)
VALUES		('SUK_KHOSROW_ATLAS', 			256, 		'Icon_Suk_Khosrow_256',					1, 				1),
			('SUK_KHOSROW_ATLAS', 			80, 		'Icon_Suk_Khosrow_80',					1, 				1),
			('SUK_KHOSROW_ATLAS', 			64, 		'Icon_Suk_Khosrow_64',					1, 				1),
			('SUK_KHOSROW_ATLAS', 			55, 		'Icon_Suk_Khosrow_55',					1, 				1),
			('SUK_KHOSROW_ATLAS', 			50, 		'Icon_Suk_Khosrow_50',					1, 				1),			
			('SUK_KHOSROW_ATLAS', 			48, 		'Icon_Suk_Khosrow_48',					1, 				1),			
			('SUK_KHOSROW_ATLAS', 			45, 		'Icon_Suk_Khosrow_45',					1, 				1),
			('SUK_KHOSROW_ATLAS', 			32, 		'Icon_Suk_Khosrow_32',					1, 				1),

			('SUK_KHOSROW_CIV_ATLAS', 		45, 		'Icon_Suk_Khosrow_Civ_45',				1, 				1);
-------------------------------------
-- IconDefinitions
-------------------------------------	
INSERT INTO IconDefinitions 
			(Name, 							Atlas, 						'Index')
VALUES		('ICON_LEADER_SUK_KHOSROW_I', 	'SUK_KHOSROW_ATLAS', 		0),
			('ICON_CIV_SUK_KHOSROW_I', 		'SUK_KHOSROW_CIV_ATLAS', 	0);
--==========================================================================================================================
--==========================================================================================================================
