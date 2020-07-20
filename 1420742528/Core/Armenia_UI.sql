/*
	UI
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------		

INSERT INTO Types
		(Type,												Kind				)
VALUES	('TRAIT_CIVILIZATION_DISTRICT_CVS_ARMENIA_UI',		'KIND_TRAIT'		),
		('TRAIT_CIVILIZATION_CVS_ARMENIA_UI_NO_PLAYER',		'KIND_TRAIT'		),
		('DISTRICT_CVS_ARMENIA_UI',							'KIND_DISTRICT'		),
		('MODTYPE_CVS_ARMENIA_UI_ATTACH_PLAYERS',			'KIND_MODIFIER'		),
		('MODTYPE_CVS_ARMENIA_UI_VALID_IMPROVEMENT',		'KIND_MODIFIER'		),
		('IMPROVEMENT_CVS_ARMENIA_UI',						'KIND_IMPROVEMENT'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits
		(TraitType,										Name													)
VALUES	('TRAIT_CIVILIZATION_DISTRICT_CVS_ARMENIA_UI',	'LOC_DISTRICT_CVS_ARMENIA_UI_NAME'						),
		('TRAIT_CIVILIZATION_CVS_ARMENIA_UI_NO_PLAYER',	'LOC_TRAIT_CIVILIZATION_CVS_ARMENIA_UI_NO_PLAYER_NAME'	);

-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------
		
INSERT INTO CivilizationTraits
		(TraitType,										CivilizationType			)
VALUES	('TRAIT_CIVILIZATION_DISTRICT_CVS_ARMENIA_UI',	'CIVILIZATION_CVS_ARMENIA'	);

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
		AllowsHolyCity,
		InternalOnly
		)
SELECT	'DISTRICT_CVS_ARMENIA_UI', -- DistrictType
		'LOC_DISTRICT_CVS_ARMENIA_UI_NAME', -- Name
		'LOC_DISTRICT_CVS_ARMENIA_UI_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_DISTRICT_CVS_ARMENIA_UI', -- TraitType
		PrereqTech,
		Cost * 0.5,
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
		AllowsHolyCity,
		InternalOnly
FROM	Districts
WHERE	DistrictType = 'DISTRICT_HOLY_SITE';

-----------------------------------------------
-- DistrictReplaces
-----------------------------------------------

INSERT INTO DistrictReplaces
		(CivUniqueDistrictType,		ReplacesDistrictType	)
VALUES	('DISTRICT_CVS_ARMENIA_UI',	'DISTRICT_HOLY_SITE'	);

-----------------------------------------------
-- District_ValidTerrains
-----------------------------------------------

INSERT INTO District_ValidTerrains
		(DistrictType,				TerrainType	)
SELECT	'DISTRICT_CVS_ARMENIA_UI',	TerrainType
FROM	Terrains WHERE Mountain = 0 AND Water = 0 AND Hills = 1;

-----------------------------------------------
-- District_TradeRouteYields
-----------------------------------------------

INSERT INTO District_TradeRouteYields
		(DistrictType,				YieldType,		YieldChangeAsOrigin,	YieldChangeAsDomesticDestination,	YieldChangeAsInternationalDestination	)
SELECT	'DISTRICT_CVS_ARMENIA_UI',	YieldType,		YieldChangeAsOrigin,	YieldChangeAsDomesticDestination,	YieldChangeAsInternationalDestination	
FROM	District_TradeRouteYields
WHERE	DistrictType = 'DISTRICT_HOLY_SITE';

-----------------------------------------------
-- District_CitizenYieldChanges
-----------------------------------------------

INSERT INTO District_CitizenYieldChanges
		(DistrictType,				YieldType,	YieldChange	)
SELECT	'DISTRICT_CVS_ARMENIA_UI',	YieldType,	YieldChange
FROM	District_CitizenYieldChanges
WHERE	DistrictType = 'DISTRICT_HOLY_SITE';

-----------------------------------------------
-- District_GreatPersonPoints
-----------------------------------------------

INSERT INTO District_GreatPersonPoints
		(DistrictType,				GreatPersonClassType,	PointsPerTurn	)
SELECT	'DISTRICT_CVS_ARMENIA_UI',	GreatPersonClassType,	PointsPerTurn
FROM	District_GreatPersonPoints
WHERE	DistrictType = 'DISTRICT_HOLY_SITE';

INSERT INTO District_GreatPersonPoints
		(DistrictType,				GreatPersonClassType,			PointsPerTurn	)
VALUES	('DISTRICT_CVS_ARMENIA_UI',	'GREAT_PERSON_CLASS_ENGINEER',	1				);

-----------------------------------------------
-- District_Adjacencies
-----------------------------------------------

INSERT INTO District_Adjacencies
		(DistrictType,				YieldChangeId	)
SELECT	'DISTRICT_CVS_ARMENIA_UI',	YieldChangeId
FROM	District_Adjacencies
WHERE	DistrictType = 'DISTRICT_HOLY_SITE';

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,									CollectionType,			EffectType									)
VALUES	('MODTYPE_CVS_ARMENIA_UI_VALID_IMPROVEMENT',	'COLLECTION_OWNER',		'EFFECT_ADJUST_CITY_ALLOWED_IMPROVEMENT'	);

-----------------------------------------------
-- DistrictModifiers
-----------------------------------------------

INSERT INTO	DistrictModifiers	
		(DistrictType,				ModifierId									)
VALUES	('DISTRICT_CVS_ARMENIA_UI',	'MODIFIER_CVS_ARMENIA_UI_VALID_IMPROVEMENT'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,									ModifierType,								SubjectRequirementSetId				)
VALUES	('MODIFIER_CVS_ARMENIA_UI_VALID_IMPROVEMENT',	'MODTYPE_CVS_ARMENIA_UI_VALID_IMPROVEMENT',	'REQSET_CVS_ARMENIA_UI_HAS_PREREQ'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,									Name,					Value							)
VALUES	('MODIFIER_CVS_ARMENIA_UI_VALID_IMPROVEMENT',	'ImprovementType',		'IMPROVEMENT_CVS_ARMENIA_UI'	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
        (RequirementSetId,								RequirementSetType			)
VALUES	('REQSET_CVS_ARMENIA_UI_HAS_PREREQ',			'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_ARMENIA_UI_HAS_QUARRIED_RESOURCE',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_ARMENIA_UI_HAS_RESOURCE',			'REQUIREMENTSET_TEST_ANY'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
        (RequirementSetId,								RequirementId							)
VALUES	('REQSET_CVS_ARMENIA_UI_HAS_PREREQ',			'REQ_CVS_ARMENIA_UI_HAS_PREREQ'			),
		('REQSET_CVS_ARMENIA_UI_HAS_QUARRIED_RESOURCE',	'REQ_CVS_ARMENIA_UI_HAS_QUARRY'			),
		('REQSET_CVS_ARMENIA_UI_HAS_QUARRIED_RESOURCE',	'REQ_CVS_ARMENIA_UI_HAS_RESOURCE'		),
		('REQSET_CVS_ARMENIA_UI_HAS_QUARRIED_RESOURCE',	'REQ_CVS_ARMENIA_UI_RESOURCE_VISIBLE'	),
		('REQSET_CVS_ARMENIA_UI_HAS_RESOURCE',			'REQ_CVS_ARMENIA_UI_HAS_BONUS'			),
		('REQSET_CVS_ARMENIA_UI_HAS_RESOURCE',			'REQ_CVS_ARMENIA_UI_HAS_STRATEGIC'		),
		('REQSET_CVS_ARMENIA_UI_HAS_RESOURCE',			'REQ_CVS_ARMENIA_UI_HAS_LUXURY'			);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,							RequirementType									)
VALUES	('REQ_CVS_ARMENIA_UI_HAS_PREREQ',		'REQUIREMENT_PLAYER_HAS_TECHNOLOGY'				),
		('REQ_CVS_ARMENIA_UI_HAS_QUARRY',		'REQUIREMENT_PLOT_IMPROVEMENT_TYPE_MATCHES'		),
		('REQ_CVS_ARMENIA_UI_RESOURCE_VISIBLE',	'REQUIREMENT_PLOT_RESOURCE_VISIBLE'				),
		('REQ_CVS_ARMENIA_UI_HAS_RESOURCE',		'REQUIREMENT_REQUIREMENTSET_IS_MET'				),
		('REQ_CVS_ARMENIA_UI_HAS_BONUS',		'REQUIREMENT_PLOT_RESOURCE_CLASS_TYPE_MATCHES'	),
		('REQ_CVS_ARMENIA_UI_HAS_STRATEGIC',	'REQUIREMENT_PLOT_RESOURCE_CLASS_TYPE_MATCHES'	),
		('REQ_CVS_ARMENIA_UI_HAS_LUXURY',		'REQUIREMENT_PLOT_RESOURCE_CLASS_TYPE_MATCHES'	);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,							Name,					Value									)
VALUES	('REQ_CVS_ARMENIA_UI_HAS_PREREQ',		'TechnologyType',		'TECH_MINING'							),
		('REQ_CVS_ARMENIA_UI_HAS_QUARRY',		'ImprovementType',		'IMPROVEMENT_QUARRY'					),
		('REQ_CVS_ARMENIA_UI_HAS_RESOURCE',		'RequirementSetId',		'REQSET_CVS_ARMENIA_UI_HAS_RESOURCE'	),
		('REQ_CVS_ARMENIA_UI_HAS_BONUS',		'ResourceClassType',	'RESOURCECLASS_BONUS'					),
		('REQ_CVS_ARMENIA_UI_HAS_STRATEGIC',	'ResourceClassType',	'RESOURCECLASS_STRATEGIC'				),
		('REQ_CVS_ARMENIA_UI_HAS_LUXURY',		'ResourceClassType',	'RESOURCECLASS_LUXURY'					);

-----------------------------------------------
-- Improvements
-----------------------------------------------

INSERT INTO Improvements
		(ImprovementType,				Name,	Description,	Icon,	TraitType,										PlunderType,	PlunderAmount, Buildable,	PrereqTech,	Appeal	)
SELECT	'IMPROVEMENT_CVS_ARMENIA_UI',	Name,	Description,	Icon,	'TRAIT_CIVILIZATION_CVS_ARMENIA_UI_NO_PLAYER',	PlunderType,	PlunderAmount, Buildable,	PrereqTech,	Appeal
FROM	Improvements WHERE ImprovementType = 'IMPROVEMENT_QUARRY';

-----------------------------------------------
-- Improvement_ValidBuildUnits
-----------------------------------------------
		
INSERT INTO Improvement_ValidBuildUnits
		(ImprovementType,				UnitType	)
SELECT	'IMPROVEMENT_CVS_ARMENIA_UI',	UnitType
FROM	Improvement_ValidBuildUnits WHERE ImprovementType = 'IMPROVEMENT_QUARRY';

-----------------------------------------------
-- Improvement_ValidTerrains
-----------------------------------------------
	
INSERT INTO Improvement_ValidTerrains
		(ImprovementType,				TerrainType	)
SELECT	'IMPROVEMENT_CVS_ARMENIA_UI',	TerrainType
FROM	Terrains WHERE Mountain = 0 AND Water = 0 AND Hills = 0;

-----------------------------------------------
-- Improvement_YieldChanges
-----------------------------------------------
	
INSERT INTO Improvement_YieldChanges
		(ImprovementType,				YieldType,	YieldChange	)
SELECT	'IMPROVEMENT_CVS_ARMENIA_UI',	YieldType,	YieldChange
FROM	Improvement_YieldChanges WHERE ImprovementType = 'IMPROVEMENT_QUARRY';

-----------------------------------------------
-- Compatibility
-- Changes the Stone Circles belief to apply to quarried resources, as opposed to quarries.
-- This does not affect other Civilizations.
-----------------------------------------------

UPDATE	Modifiers
SET		SubjectRequirementSetId = 'REQSET_CVS_ARMENIA_UI_HAS_QUARRIED_RESOURCE'
WHERE	ModifierId = 'STONE_CIRCLES_QUARRY_FAITH_MODIFIER';

UPDATE	Beliefs
SET		Description = 'LOC_CVS_ARMENIA_UI_STONE_CIRCLES_DESCRIPTION'
WHERE	BeliefType = 'BELIEF_STONE_CIRCLES';

-----------------------------------------------
-- MomentIllustrations
-----------------------------------------------

INSERT INTO MomentIllustrations
		(MomentIllustrationType,				MomentDataType,			GameDataType,				Texture								)
VALUES	('MOMENT_ILLUSTRATION_UNIQUE_DISTRICT',	'MOMENT_DATA_DISTRICT',	'DISTRICT_CVS_ARMENIA_UI',	'MOMENT_DISTRICT_CVS_ARMENIA_UI'	);