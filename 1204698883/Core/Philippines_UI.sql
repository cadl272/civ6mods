/*
	UI
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------		

INSERT INTO Types
		(Type,												Kind			)
VALUES	('TRAIT_CIVILIZATION_BUILDING_CVS_PHILIPPINES_UI',	'KIND_TRAIT'	),
		('BUILDING_CVS_PHILIPPINES_UI',						'KIND_BUILDING'	),
		('MODTYPE_CVS_PHILIPPINES_UI_TRADE_DOMESTIC',		'KIND_MODIFIER'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits
		(TraitType,											Name									)
VALUES	('TRAIT_CIVILIZATION_BUILDING_CVS_PHILIPPINES_UI',	'LOC_BUILDING_CVS_PHILIPPINES_UI_NAME'	);

-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------
		
INSERT INTO CivilizationTraits
		(TraitType,											CivilizationType				)
VALUES	('TRAIT_CIVILIZATION_BUILDING_CVS_PHILIPPINES_UI',	'CIVILIZATION_CVS_PHILIPPINES'	);

-----------------------------------------------
-- Buildings
-----------------------------------------------

INSERT INTO Buildings	(
		BuildingType,
		Name,
		Description,
		TraitType,
		PrereqTech,
		PrereqCivic,
		Cost,
		PrereqDistrict,
		Housing,
		PurchaseYield,
		Maintenance,
		CitizenSlots,
		OuterDefenseStrength,
		DefenseModifier,
		AdvisorType
		)
SELECT	'BUILDING_CVS_PHILIPPINES_UI', -- BuildingType
		'LOC_BUILDING_CVS_PHILIPPINES_UI_NAME', -- Name
		'LOC_BUILDING_CVS_PHILIPPINES_UI_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_BUILDING_CVS_PHILIPPINES_UI', -- TraitType
		PrereqTech,
		PrereqCivic,
		Cost,
		PrereqDistrict,
		Housing,
		PurchaseYield,
		Maintenance,
		CitizenSlots,
		OuterDefenseStrength,
		DefenseModifier,
		AdvisorType
FROM	Buildings
WHERE	BuildingType = 'BUILDING_MARKET';

-----------------------------------------------
-- BuildingReplaces
-----------------------------------------------

INSERT INTO BuildingReplaces
		(CivUniqueBuildingType,			ReplacesBuildingType	)
VALUES	('BUILDING_CVS_PHILIPPINES_UI',	'BUILDING_MARKET'		);

-----------------------------------------------
-- Building_YieldChanges
-----------------------------------------------

INSERT INTO Building_YieldChanges
		(BuildingType,					YieldType,	YieldChange		)
SELECT	'BUILDING_CVS_PHILIPPINES_UI',	YieldType,	YieldChange
FROM	Building_YieldChanges
WHERE	BuildingType = 'BUILDING_MARKET';

-----------------------------------------------
-- Building_GreatPersonPoints
-----------------------------------------------

INSERT INTO Building_GreatPersonPoints
		(BuildingType,					GreatPersonClassType,	PointsPerTurn	)
SELECT	'BUILDING_CVS_PHILIPPINES_UI',	GreatPersonClassType,	PointsPerTurn
FROM	Building_GreatPersonPoints
WHERE	BuildingType = "BUILDING_MARKET";

-----------------------------------------------
-- ImprovementModifiers
-----------------------------------------------

INSERT INTO	ImprovementModifiers (ImprovementType, ModifierId)
SELECT DISTINCT
		ImprovementType,
		'MODIFIER_CVS_MALAYSIA_UA_TRADE_DOMESTIC'
FROM	Improvement_ValidResources
WHERE	ResourceType IN (SELECT ResourceType FROM Resources WHERE ResourceClassType = 'RESOURCECLASS_BONUS');

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,									CollectionType,		EffectType									)
VALUES	('MODTYPE_CVS_PHILIPPINES_UI_TRADE_DOMESTIC',	'COLLECTION_OWNER',	'EFFECT_ADJUST_TRADE_ROUTE_YIELD_TO_OTHERS'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,								ModifierType,									OwnerRequirementSetId,								SubjectRequirementSetId						)
VALUES	('MODIFIER_CVS_MALAYSIA_UA_TRADE_DOMESTIC',	'MODTYPE_CVS_PHILIPPINES_UI_TRADE_DOMESTIC',	'REQSET_CVS_PHILIPPINES_UI_PLOT_IMPROVED_BONUS',	'REQSET_CVS_PHILIPPINES_UI_HAS_PALENGKE'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,										Name,			Value			)
VALUES	('MODIFIER_CVS_MALAYSIA_UA_TRADE_DOMESTIC',			'YieldType',	'YIELD_FOOD'	),
		('MODIFIER_CVS_MALAYSIA_UA_TRADE_DOMESTIC',			'Amount',		1				),
		('MODIFIER_CVS_MALAYSIA_UA_TRADE_DOMESTIC',			'Domestic',		1				);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,									RequirementSetType			)
VALUES	('REQSET_CVS_PHILIPPINES_UI_PLOT_IMPROVED_BONUS',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_PHILIPPINES_UI_HAS_PALENGKE',			'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,									RequirementId									)
VALUES	('REQSET_CVS_PHILIPPINES_UI_PLOT_IMPROVED_BONUS',	'REQ_CVS_PHILIPPINES_UI_PLOT_HAS_BONUS'			),
		('REQSET_CVS_PHILIPPINES_UI_PLOT_IMPROVED_BONUS',	'REQ_CVS_PHILIPPINES_UI_PLOT_HAS_IMPROVEMENT'	),
		('REQSET_CVS_PHILIPPINES_UI_HAS_PALENGKE',			'REQ_CVS_PHILIPPINES_UI_HAS_PALENGKE'			);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,									RequirementType,								Inverse	)
VALUES	('REQ_CVS_PHILIPPINES_UI_PLOT_HAS_IMPROVEMENT',	'REQUIREMENT_PLOT_HAS_ANY_IMPROVEMENT',			0		),
		('REQ_CVS_PHILIPPINES_UI_PLOT_HAS_BONUS',		'REQUIREMENT_PLOT_RESOURCE_CLASS_TYPE_MATCHES',	0		),
		('REQ_CVS_PHILIPPINES_UI_HAS_PALENGKE',			'REQUIREMENT_CITY_HAS_BUILDING',				0		);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
		
INSERT INTO RequirementArguments
		(RequirementId,									Name,					Value							)
VALUES	('REQ_CVS_PHILIPPINES_UI_PLOT_HAS_BONUS',		'ResourceClassType',	'RESOURCECLASS_BONUS'			),
		('REQ_CVS_PHILIPPINES_UI_HAS_PALENGKE',			'BuildingType',			'BUILDING_CVS_PHILIPPINES_UI'	);