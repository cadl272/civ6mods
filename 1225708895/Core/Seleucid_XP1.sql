/*
	XP1
	Authors: ChimpanG
*/

-----------------------------------------------
-- DistrictModifiers
-----------------------------------------------		

DELETE FROM DistrictModifiers
WHERE ModifierId IN ('MODIFIER_CVS_SELEUCID_UI_TRADE_CAPACITY');

-----------------------------------------------
-- MomentIllustrations
-----------------------------------------------

INSERT INTO MomentIllustrations
		(MomentIllustrationType,					MomentDataType,				GameDataType,					Texture							)
VALUES	('MOMENT_ILLUSTRATION_UNIQUE_DISTRICT',		'MOMENT_DATA_DISTRICT',		'DISTRICT_CVS_SELEUCID_UI',		'MOMENT_CVS_SELEUCID_UI.dds'	),
		('MOMENT_ILLUSTRATION_UNIQUE_UNIT',			'MOMENT_DATA_UNIT',			'UNIT_CVS_SELEUCID_UU',			'MOMENT_CVS_SELEUCID_UU.dds'	);