/*
	UI
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------		

INSERT INTO Types
		(Type,											Kind				)
VALUES	('TRAIT_CIVILIZATION_DISTRICT_CVS_AKKAD_UI',	'KIND_TRAIT'		),
		('DISTRICT_CVS_AKKAD_UI',						'KIND_DISTRICT'		),
		('MODTYPE_CVS_AKKAD_UI_ADJUST_AMENITIES',		'KIND_MODIFIER'		),
		('MODTYPE_CVS_AKKAD_UI_GRANT_ROAD',				'KIND_MODIFIER'		),
		('MODTYPE_CVS_AKKAD_UI_BUILDING_PRODUCTION',	'KIND_MODIFIER'		),
		('MODTYPE_CVS_AKKAD_UI_UNIT_PRODUCTION',		'KIND_MODIFIER'		);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits
		(TraitType,										Name								)
VALUES	('TRAIT_CIVILIZATION_DISTRICT_CVS_AKKAD_UI',	'LOC_DISTRICT_CVS_AKKAD_UI_NAME'	);

-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------
		
INSERT INTO CivilizationTraits
		(TraitType,										CivilizationType			)
VALUES	('TRAIT_CIVILIZATION_DISTRICT_CVS_AKKAD_UI',	'CIVILIZATION_CVS_AKKAD'	);

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
		CanAttack,
		HitPoints,
		MilitaryDomain,
		AdvisorType,
		InternalOnly
		)
SELECT	'DISTRICT_CVS_AKKAD_UI', -- DistrictType
		'LOC_DISTRICT_CVS_AKKAD_UI_NAME', -- Name
		'LOC_DISTRICT_CVS_AKKAD_UI_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_DISTRICT_CVS_AKKAD_UI', -- TraitType
		PrereqTech,
		Cost / 2,
		RequiresPlacement,
		RequiresPopulation,
		NoAdjacentCity,
		ZOC,
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
		1, -- Entertainment
		OnePerCity,
		Maintenance,
		CitizenSlots,
		TravelTime,
		CityStrengthModifier,
		CanAttack,
		HitPoints,
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
VALUES	('DISTRICT_CVS_AKKAD_UI',	'DISTRICT_ENCAMPMENT'	);

-----------------------------------------------
-- District_TradeRouteYields
-----------------------------------------------

INSERT OR REPLACE INTO District_TradeRouteYields
		(DistrictType,				YieldType,			YieldChangeAsOrigin,	YieldChangeAsDomesticDestination,	YieldChangeAsInternationalDestination	)
SELECT	'DISTRICT_CVS_AKKAD_UI',	YieldType,			YieldChangeAsOrigin,	YieldChangeAsDomesticDestination,	YieldChangeAsInternationalDestination	
FROM	District_TradeRouteYields
WHERE	DistrictType = 'DISTRICT_ENCAMPMENT';

-----------------------------------------------
-- District_Adjacencies
-----------------------------------------------

-- Guess which bits I'm touching now huh

INSERT OR REPLACE INTO District_Adjacencies
		(DistrictType,					YieldChangeId)
SELECT	'DISTRICT_CVS_AKKAD_UI',		YieldChangeId
FROM District_Adjacencies WHERE	DistrictType = 'DISTRICT_ENCAMPMENT';

CREATE TRIGGER TRG_CVS_AKKAD_UI_District_Adjacencies
AFTER INSERT ON District_Adjacencies
WHEN NEW.DistrictType = 'DISTRICT_ENCAMPMENT'
BEGIN
	INSERT OR REPLACE INTO District_Adjacencies
			(DistrictType,				YieldChangeId	)
	VALUES	('DISTRICT_CVS_AKKAD_UI',	NEW.YieldChangeId);
END;

-- Citizen shit

INSERT OR REPLACE INTO District_CitizenYieldChanges
		(DistrictType,				YieldType,		YieldChange)
SELECT	'DISTRICT_CVS_AKKAD_UI',	YieldType,		YieldChange
FROM District_CitizenYieldChanges WHERE DistrictType = 'DISTRICT_ENCAMPMENT'; -- I can't be fucked to think about whether triggers are even meant to be used on this shit so w/e

-- The GP catalyst that started this all

INSERT OR REPLACE INTO District_GreatPersonPoints
		(DistrictType,				GreatPersonClassType,		PointsPerTurn)
SELECT	'DISTRICT_CVS_AKKAD_UI',	GreatPersonClassType,		PointsPerTurn
FROM District_GreatPersonPoints WHERE DistrictType = 'DISTRICT_ENCAMPMENT';

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers
		(TraitType,										ModifierId									)
VALUES	('TRAIT_CIVILIZATION_DISTRICT_CVS_AKKAD_UI',	'MODIFIER_CVS_AKKAD_UI_ADJUST_AMENITIES'	),
		('TRAIT_CIVILIZATION_DISTRICT_CVS_AKKAD_UI',	'MODIFIER_CVS_AKKAD_UI_GRANT_ROAD'			);

INSERT INTO	TraitModifiers
		(TraitType,										ModifierId									)
SELECT	'TRAIT_CIVILIZATION_DISTRICT_CVS_AKKAD_UI',		'MODIFIER_CVS_AKKAD_UI_PRODUCTION_'||BuildingType
FROM	Buildings
WHERE	InternalOnly = 0 AND IsWonder = 0;

INSERT INTO	TraitModifiers
		(TraitType,										ModifierId									)
SELECT	'TRAIT_CIVILIZATION_DISTRICT_CVS_AKKAD_UI',		'MODIFIER_CVS_AKKAD_UI_PRODUCTION_'||UnitType
FROM	Units
WHERE	MustPurchase = 0;

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,									CollectionType,							EffectType										)
VALUES	('MODTYPE_CVS_AKKAD_UI_ADJUST_AMENITIES',		'COLLECTION_PLAYER_DISTRICTS',			'EFFECT_ADJUST_DISTRICT_EXTRA_ENTERTAINMENT'	),
		('MODTYPE_CVS_AKKAD_UI_GRANT_ROAD',				'COLLECTION_PLAYER_CITIES',				'EFFECT_GRANT_CITY_ROAD_TO_CAPITAL'				),
		('MODTYPE_CVS_AKKAD_UI_BUILDING_PRODUCTION',	'COLLECTION_PLAYER_BUILT_CITIES',		'EFFECT_ADJUST_BUILDING_PRODUCTION'				),
		('MODTYPE_CVS_AKKAD_UI_UNIT_PRODUCTION',		'COLLECTION_PLAYER_CAPTURED_CITIES',	'EFFECT_ADJUST_UNIT_PRODUCTION'					);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,									ModifierType,								SubjectRequirementSetId					)
VALUES	('MODIFIER_CVS_AKKAD_UI_ADJUST_AMENITIES',		'MODTYPE_CVS_AKKAD_UI_ADJUST_AMENITIES',	'REQSET_CVS_AKKAD_UI_DISTRICT_IS_UI'	),
		('MODIFIER_CVS_AKKAD_UI_GRANT_ROAD',			'MODTYPE_CVS_AKKAD_UI_GRANT_ROAD',			'REQSET_CVS_AKKAD_UI_CITY_HAS_UI'		);

INSERT INTO	Modifiers
		(ModifierId,										ModifierType,								SubjectRequirementSetId	)
SELECT	'MODIFIER_CVS_AKKAD_UI_PRODUCTION_'||BuildingType,	'MODTYPE_CVS_AKKAD_UI_BUILDING_PRODUCTION',	'REQSET_CVS_AKKAD_UI_CITY_HAS_UI'
FROM	Buildings
WHERE	InternalOnly = 0 AND IsWonder = 0;

INSERT INTO	Modifiers
		(ModifierId,									ModifierType,							SubjectRequirementSetId	)
SELECT	'MODIFIER_CVS_AKKAD_UI_PRODUCTION_'||UnitType,	'MODTYPE_CVS_AKKAD_UI_UNIT_PRODUCTION',	'REQSET_CVS_AKKAD_UI_CITY_HAS_UI'
FROM	Units
WHERE	MustPurchase = 0;

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,									Name,		Value	)
VALUES	('MODIFIER_CVS_AKKAD_UI_ADJUST_AMENITIES',		'Amount',	1		);

INSERT INTO	ModifierArguments
		(ModifierId,										Name,			Value	)
SELECT	'MODIFIER_CVS_AKKAD_UI_PRODUCTION_'||BuildingType,	'BuildingType',	BuildingType
FROM	Buildings
WHERE	InternalOnly = 0 AND IsWonder = 0;

INSERT INTO	ModifierArguments
		(ModifierId,										Name,		Value	)
SELECT	'MODIFIER_CVS_AKKAD_UI_PRODUCTION_'||BuildingType,	'Amount',	25
FROM	Buildings
WHERE	InternalOnly = 0 AND IsWonder = 0;

INSERT INTO	ModifierArguments
		(ModifierId,									Name,		Value	)
SELECT	'MODIFIER_CVS_AKKAD_UI_PRODUCTION_'||UnitType,	'UnitType',	UnitType
FROM	Units
WHERE	MustPurchase = 0;

INSERT INTO	ModifierArguments
		(ModifierId,									Name,		Value	)
SELECT	'MODIFIER_CVS_AKKAD_UI_PRODUCTION_'||UnitType,	'Amount',	25
FROM	Units
WHERE	MustPurchase = 0;

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId						)
VALUES	('REQSET_CVS_AKKAD_UI_DISTRICT_IS_UI',		'REQ_CVS_AKKAD_UI_DISTRICT_IS_UI'	),
		('REQSET_CVS_AKKAD_UI_CITY_HAS_UI',			'REQ_CVS_AKKAD_UI_CITY_HAS_UI'		);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType			)
VALUES	('REQSET_CVS_AKKAD_UI_DISTRICT_IS_UI',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_AKKAD_UI_CITY_HAS_UI',		'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,							RequirementType,						Inverse	)
VALUES	('REQ_CVS_AKKAD_UI_DISTRICT_IS_UI',		'REQUIREMENT_DISTRICT_TYPE_MATCHES',	0		),
		('REQ_CVS_AKKAD_UI_CITY_HAS_UI',		'REQUIREMENT_CITY_HAS_DISTRICT',		0		);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
		
INSERT INTO RequirementArguments
		(RequirementId,						Name,			Value					)
VALUES	('REQ_CVS_AKKAD_UI_DISTRICT_IS_UI',	'DistrictType',	'DISTRICT_CVS_AKKAD_UI'	),
		('REQ_CVS_AKKAD_UI_CITY_HAS_UI',	'DistrictType',	'DISTRICT_CVS_AKKAD_UI'	);


