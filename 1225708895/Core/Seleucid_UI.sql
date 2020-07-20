/*
	UI
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------		

INSERT INTO Types	
		(Type,													Kind				)
VALUES	('TRAIT_CIVILIZATION_DISTRICT_CVS_SELEUCID_UI',			'KIND_TRAIT'		),
		('DISTRICT_CVS_SELEUCID_UI',							'KIND_DISTRICT'		),
		('MODTYPE_CVS_SELEUCID_UI_DISTRICTS_YIELD',				'KIND_MODIFIER'		),
		('MODTYPE_CVS_SELEUCID_UI_TRADE_YIELD_DOMESTIC',		'KIND_MODIFIER'		),
		('MODTYPE_CVS_SELEUCID_UI_TRADE_YIELD_INTERNATIONAL',	'KIND_MODIFIER'		),
		('MODTYPE_CVS_SELEUCID_UI_TRADE_ROUTE_CAPACITY',		'KIND_MODIFIER'		);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits
		(TraitType,										Name								)
VALUES	('TRAIT_CIVILIZATION_DISTRICT_CVS_SELEUCID_UI',	'LOC_DISTRICT_CVS_SELEUCID_UI_NAME'	);

-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------
		
INSERT INTO CivilizationTraits
		(TraitType,										CivilizationType			)
VALUES	('TRAIT_CIVILIZATION_DISTRICT_CVS_SELEUCID_UI',	'CIVILIZATION_CVS_SELEUCID'	);

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
SELECT	'DISTRICT_CVS_SELEUCID_UI', -- DistrictType
		'LOC_DISTRICT_CVS_SELEUCID_UI_NAME', -- Name
		'LOC_DISTRICT_CVS_SELEUCID_UI_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_DISTRICT_CVS_SELEUCID_UI', -- TraitType
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
FROM	Districts
WHERE	DistrictType = 'DISTRICT_COMMERCIAL_HUB';

-----------------------------------------------
-- DistrictReplaces
-----------------------------------------------

INSERT INTO DistrictReplaces
		(CivUniqueDistrictType,			ReplacesDistrictType		)
VALUES	('DISTRICT_CVS_SELEUCID_UI',	'DISTRICT_COMMERCIAL_HUB'	);

-----------------------------------------------
-- District_TradeRouteYields
-----------------------------------------------

INSERT INTO District_TradeRouteYields
		(DistrictType,				YieldType,		YieldChangeAsOrigin,	YieldChangeAsDomesticDestination,	YieldChangeAsInternationalDestination	)
SELECT	'DISTRICT_CVS_SELEUCID_UI',	YieldType,		YieldChangeAsOrigin,	YieldChangeAsDomesticDestination,	YieldChangeAsInternationalDestination	
FROM	District_TradeRouteYields
WHERE	DistrictType = 'DISTRICT_COMMERCIAL_HUB';

-----------------------------------------------
-- District_CitizenYieldChanges
-----------------------------------------------

INSERT INTO District_CitizenYieldChanges
		(DistrictType,				YieldType,	YieldChange	)
SELECT	'DISTRICT_CVS_SELEUCID_UI',	YieldType,	YieldChange
FROM	District_CitizenYieldChanges
WHERE	DistrictType = 'DISTRICT_COMMERCIAL_HUB';

-----------------------------------------------
-- District_GreatPersonPoints
-----------------------------------------------

INSERT INTO District_GreatPersonPoints
		(DistrictType,				GreatPersonClassType,	PointsPerTurn	)
SELECT	'DISTRICT_CVS_SELEUCID_UI',	GreatPersonClassType,	PointsPerTurn
FROM	District_GreatPersonPoints
WHERE	DistrictType = 'DISTRICT_COMMERCIAL_HUB';

INSERT INTO District_GreatPersonPoints
		(DistrictType,					GreatPersonClassType,			PointsPerTurn	)
VALUES	('DISTRICT_CVS_SELEUCID_UI',	'GREAT_PERSON_CLASS_GENERAL',	1				);

-----------------------------------------------
-- District_Adjacencies
-----------------------------------------------

INSERT INTO District_Adjacencies
		(DistrictType,				YieldChangeId	)
SELECT	'DISTRICT_CVS_SELEUCID_UI',	YieldChangeId
FROM	District_Adjacencies
WHERE	DistrictType = 'DISTRICT_COMMERCIAL_HUB';

INSERT INTO District_Adjacencies
		(DistrictType,					YieldChangeId						)
VALUES	('DISTRICT_CVS_SELEUCID_UI',	'ADJ_CVS_SELEUCID_UI_FARM_GOLD'		),
		('DISTRICT_CVS_SELEUCID_UI',	'ADJ_CVS_SELEUCID_UI_PASTURE_GOLD'	);

-----------------------------------------------
-- Adjacency_YieldChanges
-----------------------------------------------

INSERT INTO Adjacency_YieldChanges
		(ID,									Description,							YieldType,		YieldChange,	TilesRequired,	AdjacentImprovement		)
VALUES	('ADJ_CVS_SELEUCID_UI_FARM_GOLD',		'LOC_ADJ_CVS_SELEUCID_UI_FARM_GOLD',	'YIELD_GOLD',	1,				1,				'IMPROVEMENT_FARM'		),
		('ADJ_CVS_SELEUCID_UI_PASTURE_GOLD',	'LOC_ADJ_CVS_SELEUCID_UI_PASTURE_GOLD',	'YIELD_GOLD',	1,				1,				'IMPROVEMENT_PASTURE'	);

-----------------------------------------------
-- DistrictModifiers
-----------------------------------------------

INSERT INTO DistrictModifiers
		(DistrictType,					ModifierId									)
VALUES	('DISTRICT_CVS_SELEUCID_UI',	'MODIFIER_CVS_SELEUCID_UI_TRADE_CAPACITY'	);

INSERT INTO	DistrictModifiers
		(DistrictType,				ModifierId	)
SELECT	'DISTRICT_CVS_SELEUCID_UI',	'MODIFIER_CVS_SELEUCID_UI_TRADE_D_'||BuildingType
FROM	Buildings WHERE	PrereqDistrict = 'DISTRICT_COMMERCIAL_HUB' AND TraitType IS NULL;

INSERT INTO	DistrictModifiers
		(DistrictType,				ModifierId	)
SELECT	'DISTRICT_CVS_SELEUCID_UI',	'MODIFIER_CVS_SELEUCID_UI_TRADE_I_'||BuildingType
FROM	Buildings WHERE	PrereqDistrict = 'DISTRICT_COMMERCIAL_HUB' AND TraitType IS NULL;

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,											CollectionType,			EffectType													)
VALUES	('MODTYPE_CVS_SELEUCID_UI_TRADE_YIELD_DOMESTIC',		'COLLECTION_OWNER',		'EFFECT_ADJUST_TRADE_ROUTE_YIELD_TO_OTHERS'					),
		('MODTYPE_CVS_SELEUCID_UI_TRADE_YIELD_INTERNATIONAL',	'COLLECTION_OWNER',		'EFFECT_ADJUST_CITY_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL'	),
		('MODTYPE_CVS_SELEUCID_UI_TRADE_ROUTE_CAPACITY',		'COLLECTION_OWNER',		'EFFECT_ADJUST_TRADE_ROUTE_CAPACITY'						);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,								ModifierType,									SubjectRequirementSetId	)
VALUES	('MODIFIER_CVS_SELEUCID_UI_TRADE_CAPACITY',	'MODTYPE_CVS_SELEUCID_UI_TRADE_ROUTE_CAPACITY',	NULL					);

INSERT INTO	Modifiers
		(ModifierId,										ModifierType,									SubjectRequirementSetId	)
SELECT	'MODIFIER_CVS_SELEUCID_UI_TRADE_D_'||BuildingType,	'MODTYPE_CVS_SELEUCID_UI_TRADE_YIELD_DOMESTIC',	'REQSET_CVS_SELEUCID_UI_HAS_'||BuildingType
FROM	Buildings WHERE	PrereqDistrict = 'DISTRICT_COMMERCIAL_HUB' AND TraitType IS NULL;

INSERT INTO	Modifiers
		(ModifierId,										ModifierType,											SubjectRequirementSetId	)
SELECT	'MODIFIER_CVS_SELEUCID_UI_TRADE_I_'||BuildingType,	'MODTYPE_CVS_SELEUCID_UI_TRADE_YIELD_INTERNATIONAL',	'REQSET_CVS_SELEUCID_UI_HAS_'||BuildingType
FROM	Buildings WHERE	PrereqDistrict = 'DISTRICT_COMMERCIAL_HUB' AND TraitType IS NULL;

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,								Name,		Value	)
VALUES	('MODIFIER_CVS_SELEUCID_UI_TRADE_CAPACITY',	'Amount',	1		);

INSERT INTO	ModifierArguments
		(ModifierId,											Name,			Value	)
SELECT	'MODIFIER_CVS_SELEUCID_UI_TRADE_D_'||BuildingType,		'YieldType',	'YIELD_FOOD'
FROM	Buildings WHERE	PrereqDistrict = 'DISTRICT_COMMERCIAL_HUB' AND TraitType IS NULL;

INSERT INTO	ModifierArguments
		(ModifierId,											Name,			Value	)
SELECT	'MODIFIER_CVS_SELEUCID_UI_TRADE_D_'||BuildingType,		'Amount',		1
FROM	Buildings WHERE	PrereqDistrict = 'DISTRICT_COMMERCIAL_HUB' AND TraitType IS NULL;

INSERT INTO	ModifierArguments
		(ModifierId,											Name,			Value	)
SELECT	'MODIFIER_CVS_SELEUCID_UI_TRADE_D_'||BuildingType,		'Domestic',		1
FROM	Buildings WHERE	PrereqDistrict = 'DISTRICT_COMMERCIAL_HUB' AND TraitType IS NULL;

INSERT INTO	ModifierArguments
		(ModifierId,											Name,			Value	)
SELECT	'MODIFIER_CVS_SELEUCID_UI_TRADE_I_'||BuildingType,		'YieldType',	'YIELD_PRODUCTION'
FROM	Buildings WHERE	PrereqDistrict = 'DISTRICT_COMMERCIAL_HUB' AND TraitType IS NULL;

INSERT INTO	ModifierArguments
		(ModifierId,											Name,			Value	)
SELECT	'MODIFIER_CVS_SELEUCID_UI_TRADE_I_'||BuildingType,		'Amount',		1
FROM	Buildings WHERE	PrereqDistrict = 'DISTRICT_COMMERCIAL_HUB' AND TraitType IS NULL;

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
        (RequirementSetId,								RequirementId	)
SELECT	'REQSET_CVS_SELEUCID_UI_HAS_'||BuildingType,	'REQ_CVS_SELEUCID_UI_HAS_'||BuildingType
FROM	Buildings WHERE	PrereqDistrict = 'DISTRICT_COMMERCIAL_HUB' AND TraitType IS NULL;

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
        (RequirementSetId,								RequirementSetType	)
SELECT	'REQSET_CVS_SELEUCID_UI_HAS_'||BuildingType,	'REQUIREMENTSET_TEST_ALL'
FROM	Buildings WHERE	PrereqDistrict = 'DISTRICT_COMMERCIAL_HUB' AND TraitType IS NULL;

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,								RequirementType	)
SELECT	'REQ_CVS_SELEUCID_UI_HAS_'||BuildingType,	'REQUIREMENT_CITY_HAS_BUILDING'
FROM	Buildings WHERE	PrereqDistrict = 'DISTRICT_COMMERCIAL_HUB' AND TraitType IS NULL;

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,								Name,			Value	)
SELECT	'REQ_CVS_SELEUCID_UI_HAS_'||BuildingType,	'BuildingType', BuildingType
FROM	Buildings WHERE	PrereqDistrict = 'DISTRICT_COMMERCIAL_HUB' AND TraitType IS NULL;