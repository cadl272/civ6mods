-- Suk_SiamRamkhamhaeng_Expansion1
-- Author: Sukrit
-- DateCreated: 2/13/2018 8:53:59 PM
--==========================================================================================================================
UPDATE Districts
SET Description = 'LOC_DISTRICT_SUK_FLOATINGMARKET_EXPANSION_1_DESCRIPTION'
WHERE DistrictType = 'DISTRICT_SUK_FLOATINGMARKET';
--==========================================================================================================================
-- MomentIllustrations
--==========================================================================================================================
INSERT INTO MomentIllustrations
		(MomentIllustrationType, 					MomentDataType,				GameDataType,						Texture)
VALUES	('MOMENT_ILLUSTRATION_UNIQUE_UNIT', 		'MOMENT_DATA_UNIT',			'UNIT_SUK_SIAM_CHANGSUEK',			'Moment_UniqueUnit_Suk_Siam.dds'),
		('MOMENT_ILLUSTRATION_UNIQUE_DISTRICT', 	'MOMENT_DATA_DISTRICT',		'DISTRICT_SUK_FLOATINGMARKET',		'Moment_UniqueInfrastructure_Suk_Siam.dds');
--==========================================================================================================================
--==========================================================================================================================