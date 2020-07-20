/* 
	p0kiehl's Better Encampment
	Author: p0kiehl
*/
--========================================================================
-- +1 Housing to the district and all its buildings.
--========================================================================
-- Districts
--------------------------------------------------------------------------
UPDATE Districts 
SET Housing = Housing+1 
WHERE DistrictType = 'DISTRICT_ENCAMPMENT' 
OR DistrictType = (SELECT CivUniqueDistrictType FROM DistrictReplaces WHERE ReplacesDistrictType = 'DISTRICT_ENCAMPMENT');
--------------------------------------------------------------------------
-- Buildings
--------------------------------------------------------------------------
UPDATE Buildings 
SET Housing = Housing+1 
WHERE PrereqDistrict = 'DISTRICT_ENCAMPMENT';
--========================================================================
-- Adjacencies: +0.5 Production for adjacent districts. +2 Production for Strategic resources. AdjacentResourceClass
--========================================================================
-- Adjacency_YieldChanges
--------------------------------------------------------------------------
INSERT INTO Adjacency_YieldChanges
		(ID,										Description,									YieldType,			YieldChange,	TilesRequired,	OtherDistrictAdjacent,	AdjacentResourceClass)
VALUES	('p0k_BE_Encampment_District_Production',	'LOC_P0K_BE_ENCAMPMENT_DISTRICT_PRODUCTION',	'YIELD_PRODUCTION',	1,				2,				'1',					'NO_RESOURCECLASS'),
		('p0k_BE_Encampment_Strategic_Production',	'LOC_P0K_BE_ENCAMPMENT_STRATEGIC_PRODUCTION',	'YIELD_PRODUCTION',	2,				1,				'0',					'RESOURCECLASS_STRATEGIC');				
--------------------------------------------------------------------------
-- District_Adjacencies
--------------------------------------------------------------------------
INSERT INTO District_Adjacencies
		(DistrictType,			YieldChangeId)
VALUES	('DISTRICT_ENCAMPMENT',	'p0k_BE_Encampment_District_Production'),
		('DISTRICT_ENCAMPMENT',	'p0k_BE_Encampment_Strategic_Production');

INSERT INTO District_Adjacencies
		(DistrictType,			YieldChangeId)
SELECT	CivUniqueDistrictType,	'p0k_BE_Encampment_District_Production' FROM DistrictReplaces WHERE ReplacesDistrictType = 'DISTRICT_ENCAMPMENT';

INSERT INTO District_Adjacencies
		(DistrictType,			YieldChangeId)
SELECT	CivUniqueDistrictType,	'p0k_BE_Encampment_Strategic_Production' FROM DistrictReplaces WHERE ReplacesDistrictType = 'DISTRICT_ENCAMPMENT';
--========================================================================
-- Modifiers: +1 Charge for builders. Accumulating Strategic resources in this city gain an additional +1 per turn.
--========================================================================
-- Modifiers 
--------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,									ModifierType,										SubjectRequirementSetId)
VALUES	('P0K_BE_ENCAMPMENT_BUILDER_CHARGE',			'MODIFIER_SINGLE_CITY_BUILDER_CHARGES',				NULL),
		('P0K_BE_ENCAMPMENT_BONUS_STRATEGIC_RESOURCES',	'MODIFIER_SINGLE_CITY_ADJUST_EXTRA_ACCUMULATION',	NULL);
--------------------------------------------------------------------------
-- ModifierArguments
--------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value)
VALUES	('P0K_BE_ENCAMPMENT_BUILDER_CHARGE',			'Amount',		1),
		('P0K_BE_ENCAMPMENT_BONUS_STRATEGIC_RESOURCES',	'Amount',		1);
--------------------------------------------------------------------------
-- DistrictModifiers
--------------------------------------------------------------------------
INSERT INTO DistrictModifiers
		(DistrictType,								ModifierId)
VALUES	('DISTRICT_ENCAMPMENT',						'P0K_BE_ENCAMPMENT_BUILDER_CHARGE'),
		('DISTRICT_ENCAMPMENT',						'P0K_BE_ENCAMPMENT_BONUS_STRATEGIC_RESOURCES');

INSERT INTO DistrictModifiers
		(DistrictType,								ModifierId)
SELECT	CivUniqueDistrictType,						'P0K_BE_ENCAMPMENT_BUILDER_CHARGE' FROM DistrictReplaces WHERE ReplacesDistrictType = 'DISTRICT_ENCAMPMENT';

INSERT INTO DistrictModifiers
		(DistrictType,								ModifierId)
SELECT	CivUniqueDistrictType,						'P0K_BE_ENCAMPMENT_BONUS_STRATEGIC_RESOURCES' FROM DistrictReplaces WHERE ReplacesDistrictType = 'DISTRICT_ENCAMPMENT';

