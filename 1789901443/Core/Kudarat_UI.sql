/*
	UI
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------	
	
INSERT INTO Types
		(Type,										Kind			)
VALUES	('TRAIT_LEADER_DISTRICT_CVS_KUDARAT_UI',	'KIND_TRAIT'	),
		('DISTRICT_CVS_KUDARAT_UI',					'KIND_DISTRICT'	),
		('MODTYPE_CVS_KUDARAT_UI_DISTRICT_YIELD',	'KIND_MODIFIER'	);
		
-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits
		(TraitType,									Name											)
VALUES	('TRAIT_LEADER_DISTRICT_CVS_KUDARAT_UI',	'LOC_TRAIT_LEADER_DISTRICT_CVS_KUDARAT_UI_NAME'	);

-----------------------------------------------
-- LeaderTraits
-----------------------------------------------
		
INSERT INTO LeaderTraits
		(TraitType,									LeaderType				)
VALUES	('TRAIT_LEADER_DISTRICT_CVS_KUDARAT_UI',	'LEADER_CVS_KUDARAT'	);

-----------------------------------------------
-- Districts
-----------------------------------------------

INSERT INTO Districts	(
		DistrictType,
		Name,		
		Description,
		TraitType,
		PrereqCivic,
		PlunderType,
		PlunderAmount,
		AdvisorType,
		Cost,
		CostProgressionModel,
		CostProgressionParam1,
		RequiresPlacement,
		RequiresPopulation,
		OnePerCity,
		NoAdjacentCity,
		Aqueduct,
		InternalOnly,
		ZOC,
		Housing,
		CaptureRemovesBuildings,
		CaptureRemovesCityDefenses,
		MilitaryDomain,
		CityStrengthModifier,
		HitPoints
		)
SELECT	'DISTRICT_CVS_KUDARAT_UI', -- DistrictType
		'LOC_DISTRICT_CVS_KUDARAT_UI_NAME', -- Name		
		'LOC_DISTRICT_CVS_KUDARAT_UI_DESCRIPTION', -- Description
		'TRAIT_LEADER_DISTRICT_CVS_KUDARAT_UI', -- TraitType
		'CIVIC_EXPLORATION', -- PrereqCivic
		PlunderType,
		PlunderAmount,
		AdvisorType,
		Cost,
		CostProgressionModel,
		CostProgressionParam1,
		RequiresPlacement,
		RequiresPopulation,
		OnePerCity,
		1, -- NoAdjacentCity
		Aqueduct,
		InternalOnly,
		ZOC,
		4, -- Housing
		CaptureRemovesBuildings,
		CaptureRemovesCityDefenses,
		MilitaryDomain,
		CityStrengthModifier,
		25 -- HitPoints
FROM	Districts
WHERE	DistrictType = 'DISTRICT_NEIGHBORHOOD';

-----------------------------------------------
-- DistrictModifiers
-----------------------------------------------

INSERT INTO	DistrictModifiers
		(DistrictType,				ModifierId )
SELECT	'DISTRICT_CVS_KUDARAT_UI',	'MODIFIER_CVS_KUDARAT_UI_FAITH_'||BuildingType
FROM	Buildings WHERE BuildingType IN ('BUILDING_WALLS', 'BUILDING_CASTLE', 'BUILDING_STAR_FORT');

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,								CollectionType,			EffectType								)
VALUES	('MODTYPE_CVS_KUDARAT_UI_DISTRICT_YIELD',	'COLLECTION_OWNER',		'EFFECT_ADJUST_DISTRICT_YIELD_CHANGE'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,										ModifierType,								SubjectRequirementSetId	)	
SELECT	'MODIFIER_CVS_KUDARAT_UI_FAITH_'||BuildingType,		'MODTYPE_CVS_KUDARAT_UI_DISTRICT_YIELD',	'REQSET_CVS_KUDARAT_UI_HAS_'||BuildingType
FROM	Buildings WHERE BuildingType IN ('BUILDING_WALLS', 'BUILDING_CASTLE', 'BUILDING_STAR_FORT');

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,										Name,			Value )
SELECT	'MODIFIER_CVS_KUDARAT_UI_FAITH_'||BuildingType,		'YieldType',	'YIELD_FAITH'
FROM	Buildings WHERE BuildingType IN ('BUILDING_WALLS', 'BUILDING_CASTLE', 'BUILDING_STAR_FORT');

INSERT INTO	ModifierArguments
		(ModifierId,										Name,		Value )
SELECT	'MODIFIER_CVS_KUDARAT_UI_FAITH_'||BuildingType,		'Amount',	1
FROM	Buildings WHERE BuildingType IN ('BUILDING_WALLS', 'BUILDING_CASTLE', 'BUILDING_STAR_FORT');

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements	
		(RequirementSetId,							RequirementId )
SELECT	'REQSET_CVS_KUDARAT_UI_HAS_'||BuildingType,	'REQ_CVS_KUDARAT_UI_HAS_'||BuildingType
FROM	Buildings WHERE BuildingType IN ('BUILDING_WALLS', 'BUILDING_CASTLE', 'BUILDING_STAR_FORT');

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType )
SELECT	'REQSET_CVS_KUDARAT_UI_HAS_'||BuildingType,	'REQUIREMENTSET_TEST_ALL'
FROM	Buildings WHERE BuildingType IN ('BUILDING_WALLS', 'BUILDING_CASTLE', 'BUILDING_STAR_FORT');

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,								RequirementType )
SELECT	'REQ_CVS_KUDARAT_UI_HAS_'||BuildingType,	'REQUIREMENT_CITY_HAS_BUILDING'
FROM	Buildings WHERE BuildingType IN ('BUILDING_WALLS', 'BUILDING_CASTLE', 'BUILDING_STAR_FORT');

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
		
INSERT INTO RequirementArguments
		(RequirementId,								Name,			Value )
SELECT	'REQ_CVS_KUDARAT_UI_HAS_'||BuildingType,	'BuildingType',	BuildingType
FROM	Buildings WHERE BuildingType IN ('BUILDING_WALLS', 'BUILDING_CASTLE', 'BUILDING_STAR_FORT');
		



