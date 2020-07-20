/*
	UI
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------		

INSERT INTO Types	
		(Type,									Kind			)
VALUES	('TRAIT_CIVILIZATION_CVS_ROMANIA_UI',	'KIND_TRAIT'	),
		('BUILDING_CVS_ROMANIA_UI',				'KIND_DISTRICT'	),
		('MODTYPE_CVS_ROMANIA_UI_GW_YIELD',		'KIND_MODIFIER'	),
		('MODTYPE_CVS_ROMANIA_UI_GW_TOURISM',	'KIND_MODIFIER'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits
		(TraitType,								Name								)
VALUES	('TRAIT_CIVILIZATION_CVS_ROMANIA_UI',	'LOC_BUILDING_CVS_ROMANIA_UI_NAME'	);

-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------
		
INSERT INTO CivilizationTraits
		(TraitType,								CivilizationType			)
VALUES	('TRAIT_CIVILIZATION_CVS_ROMANIA_UI',	'CIVILIZATION_CVS_ROMANIA'	);

-----------------------------------------------
-- Districts
-----------------------------------------------

INSERT INTO Districts	(
		DistrictType,
		Name,
		Description,
		TraitType,
		PrereqTech,
		Cost,
		RequiresPlacement,
		RequiresPopulation,
		NoAdjacentCity,
		ZOC,
		HitPoints,
		CaptureRemovesBuildings,
		CaptureRemovesCityDefenses,
		PlunderType,
		PlunderAmount,
		CostProgressionModel,
		CostProgressionParam1,
		Aqueduct,
		NoAdjacentCity,
		Appeal,
		Housing,
		Entertainment,
		OnePerCity,
		Maintenance,
		CitizenSlots,
		TravelTime,
		CityStrengthModifier,
		MilitaryDomain,
		AdvisorType,
		InternalOnly
		)
SELECT	'BUILDING_CVS_ROMANIA_UI', -- DistrictType
		'LOC_BUILDING_CVS_ROMANIA_UI_NAME', -- Name
		'LOC_BUILDING_CVS_ROMANIA_UI_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_CVS_ROMANIA_UI', -- TraitType
		PrereqTech,
		Cost * 0.5, -- Cost
		RequiresPlacement,
		RequiresPopulation,
		NoAdjacentCity,
		ZOC,
		HitPoints,
		CaptureRemovesBuildings,
		CaptureRemovesCityDefenses,
		PlunderType,
		PlunderAmount,
		CostProgressionModel,
		CostProgressionParam1,
		Aqueduct,
		NoAdjacentCity,
		1, -- Appeal
		Housing,
		Entertainment,
		OnePerCity,
		Maintenance,
		CitizenSlots,
		TravelTime,
		CityStrengthModifier,
		MilitaryDomain,
		AdvisorType,
		InternalOnly
FROM	Districts
WHERE	DistrictType = 'DISTRICT_ENCAMPMENT';

-----------------------------------------------
-- DistrictReplaces
-----------------------------------------------

INSERT INTO DistrictReplaces
		(CivUniqueDistrictType,		ReplacesDistrictType	)
VALUES	('BUILDING_CVS_ROMANIA_UI',	'DISTRICT_ENCAMPMENT'	);

-----------------------------------------------
-- District_TradeRouteYields
-----------------------------------------------

INSERT INTO District_TradeRouteYields
		(DistrictType,				YieldType,		YieldChangeAsOrigin,	YieldChangeAsDomesticDestination,	YieldChangeAsInternationalDestination	)
SELECT	'BUILDING_CVS_ROMANIA_UI',	YieldType,		YieldChangeAsOrigin,	YieldChangeAsDomesticDestination,	YieldChangeAsInternationalDestination	
FROM	District_TradeRouteYields
WHERE	DistrictType = 'DISTRICT_ENCAMPMENT';

-----------------------------------------------
-- District_CitizenYieldChanges
-----------------------------------------------

INSERT INTO District_CitizenYieldChanges
		(DistrictType,				YieldType,	YieldChange	)
SELECT	'BUILDING_CVS_ROMANIA_UI',	YieldType,	YieldChange
FROM	District_CitizenYieldChanges
WHERE	DistrictType = 'DISTRICT_ENCAMPMENT';

-----------------------------------------------
-- District_GreatPersonPoints
-----------------------------------------------

INSERT INTO District_GreatPersonPoints
		(DistrictType,				GreatPersonClassType,	PointsPerTurn	)
SELECT	'BUILDING_CVS_ROMANIA_UI',	GreatPersonClassType,	PointsPerTurn
FROM	District_GreatPersonPoints
WHERE	DistrictType = 'DISTRICT_ENCAMPMENT';

-----------------------------------------------
-- District_Adjacencies
-----------------------------------------------

INSERT INTO District_Adjacencies
		(DistrictType,				YieldChangeId	)
SELECT	'BUILDING_CVS_ROMANIA_UI',	YieldChangeId
FROM	District_Adjacencies
WHERE	DistrictType = 'DISTRICT_ENCAMPMENT';

INSERT INTO District_Adjacencies
		(DistrictType,				YieldChangeId						)
VALUES	('BUILDING_CVS_ROMANIA_UI',	'ADJ_CVS_ROMANIA_UI_FOREST_CULTURE'	);

-----------------------------------------------
-- Adjacency_YieldChanges
-----------------------------------------------

INSERT INTO Adjacency_YieldChanges
		(ID,									Description,								YieldType,			YieldChange,	TilesRequired,	AdjacentFeature		)
VALUES	('ADJ_CVS_ROMANIA_UI_FOREST_CULTURE',	'LOC_ADJ_CVS_ROMANIA_UI_FOREST_CULTURE',	'YIELD_CULTURE',	1,				1,				'FEATURE_FOREST'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------
/*
INSERT INTO	TraitModifiers (TraitType, ModifierId)
SELECT	'TRAIT_CIVILIZATION_CVS_ROMANIA_UI',
		'MODIFIER_CVS_ROMANIA_UI_CULTURE_'||GreatWorkObjectType
FROM	GreatWorkObjectTypes
WHERE	GreatWorkObjectType NOT IN ('GREATWORKOBJECT_ARTIFACT', 'GREATWORKOBJECT_RELIC');
*/
INSERT INTO	TraitModifiers (TraitType, ModifierId)
SELECT	'TRAIT_CIVILIZATION_CVS_ROMANIA_UI',
		'MODIFIER_CVS_ROMANIA_UI_TOURISM_'||GreatWorkObjectType
FROM	GreatWorkObjectTypes
WHERE	GreatWorkObjectType NOT IN ('GREATWORKOBJECT_ARTIFACT', 'GREATWORKOBJECT_RELIC');

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,							CollectionType,				EffectType								)
VALUES	('MODTYPE_CVS_ROMANIA_UI_GW_YIELD',		'COLLECTION_PLAYER_CITIES',	'EFFECT_ADJUST_CITY_GREATWORK_YIELD'	),
		('MODTYPE_CVS_ROMANIA_UI_GW_TOURISM',	'COLLECTION_PLAYER_CITIES',	'EFFECT_ADJUST_CITY_TOURISM'			);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
SELECT	'MODIFIER_CVS_ROMANIA_UI_CULTURE_'||GreatWorkObjectType,
		'MODTYPE_CVS_ROMANIA_UI_GW_YIELD',
		'REQSET_CVS_ROMANIA_UI_CITY_HAS_FORTAREATA'
FROM	GreatWorkObjectTypes
WHERE	GreatWorkObjectType NOT IN ('GREATWORKOBJECT_ARTIFACT', 'GREATWORKOBJECT_RELIC');

INSERT INTO	Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
SELECT	'MODIFIER_CVS_ROMANIA_UI_TOURISM_'||GreatWorkObjectType,
		'MODTYPE_CVS_ROMANIA_UI_GW_TOURISM',
		'REQSET_CVS_ROMANIA_UI_CITY_HAS_FORTAREATA'
FROM	GreatWorkObjectTypes
WHERE	GreatWorkObjectType NOT IN ('GREATWORKOBJECT_ARTIFACT', 'GREATWORKOBJECT_RELIC');

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_ROMANIA_UI_CULTURE_'||GreatWorkObjectType,
		'GreatWorkObjectType',
		GreatWorkObjectType
FROM	GreatWorkObjectTypes
WHERE	GreatWorkObjectType NOT IN ('GREATWORKOBJECT_ARTIFACT', 'GREATWORKOBJECT_RELIC');

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_ROMANIA_UI_CULTURE_'||GreatWorkObjectType,
		'YieldType',
		'YIELD_CULTURE'
FROM	GreatWorkObjectTypes
WHERE	GreatWorkObjectType NOT IN ('GREATWORKOBJECT_ARTIFACT', 'GREATWORKOBJECT_RELIC');

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_ROMANIA_UI_CULTURE_'||GreatWorkObjectType,
		'YieldChange',
		2
FROM	GreatWorkObjectTypes
WHERE	GreatWorkObjectType NOT IN ('GREATWORKOBJECT_ARTIFACT', 'GREATWORKOBJECT_RELIC');

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_ROMANIA_UI_TOURISM_'||GreatWorkObjectType,
		'GreatWorkObjectType',
		GreatWorkObjectType
FROM	GreatWorkObjectTypes
WHERE	GreatWorkObjectType NOT IN ('GREATWORKOBJECT_ARTIFACT', 'GREATWORKOBJECT_RELIC');

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_ROMANIA_UI_TOURISM_'||GreatWorkObjectType,
		'ScalingFactor',
		150 -- +2
FROM	GreatWorkObjectTypes
WHERE	GreatWorkObjectType NOT IN ('GREATWORKOBJECT_ARTIFACT', 'GREATWORKOBJECT_RELIC');

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,								RequirementSetType			)
VALUES	('REQSET_CVS_ROMANIA_UI_CITY_HAS_FORTAREATA',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId								)
VALUES	('REQSET_CVS_ROMANIA_UI_CITY_HAS_FORTAREATA',	'REQ_CVS_ROMANIA_UI_CITY_HAS_FORTAREATA'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,								RequirementType					)
VALUES	('REQ_CVS_ROMANIA_UI_CITY_HAS_FORTAREATA',	'REQUIREMENT_CITY_HAS_DISTRICT'	);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,								Name,			Value						)
VALUES	('REQ_CVS_ROMANIA_UI_CITY_HAS_FORTAREATA',	'DistrictType', 'BUILDING_CVS_ROMANIA_UI'	);

-----------------------------------------------
-- MomentIllustrations
-----------------------------------------------

INSERT INTO MomentIllustrations
		(MomentIllustrationType,				MomentDataType,			GameDataType,				Texture					)
VALUES	('MOMENT_ILLUSTRATION_UNIQUE_DISTRICT',	'MOMENT_DATA_DISTRICT',	'BUILDING_CVS_ROMANIA_UI',	'MOMENT_CVS_ROMANIA_UI'	);
