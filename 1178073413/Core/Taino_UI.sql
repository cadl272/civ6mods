/*
	UI
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------		

INSERT INTO Types
		(Type,											Kind				)
VALUES	('TRAIT_CIVILIZATION_DISTRICT_CVS_TAINO_UI',	'KIND_TRAIT'		),
		('DISTRICT_CVS_TAINO_UI',						'KIND_DISTRICT'		),
		('MODTYPE_CVS_TAINO_UI_ADJUST_AMENITIES',		'KIND_MODIFIER'		),
		('MODTYPE_CVS_TAINO_UI_ATTACH_DISTRICTS',		'KIND_MODIFIER'		);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits
		(TraitType,										Name								)
VALUES	('TRAIT_CIVILIZATION_DISTRICT_CVS_TAINO_UI',	'LOC_DISTRICT_CVS_TAINO_UI_NAME'	);

-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------
		
INSERT INTO CivilizationTraits
		(TraitType,										CivilizationType			)
VALUES	('TRAIT_CIVILIZATION_DISTRICT_CVS_TAINO_UI',	'CIVILIZATION_CVS_TAINO'	);

-----------------------------------------------
-- Districts
-----------------------------------------------

INSERT INTO Districts	(
		DistrictType,
		Name,
		Description,
		TraitType,
		PrereqCivic,
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
		MilitaryDomain,
		AdvisorType,
		InternalOnly
		)
SELECT	'DISTRICT_CVS_TAINO_UI', -- DistrictType
		'LOC_DISTRICT_CVS_TAINO_UI_NAME', -- Name
		'LOC_DISTRICT_CVS_TAINO_UI_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_DISTRICT_CVS_TAINO_UI', -- TraitType
		PrereqCivic,
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
		MilitaryDomain,
		AdvisorType,
		InternalOnly
FROM	Districts
WHERE	DistrictType = 'DISTRICT_ENTERTAINMENT_COMPLEX';

-----------------------------------------------
-- DistrictReplaces
-----------------------------------------------

INSERT INTO DistrictReplaces
		(CivUniqueDistrictType,		ReplacesDistrictType				)
VALUES	('DISTRICT_CVS_TAINO_UI',	'DISTRICT_ENTERTAINMENT_COMPLEX'	);

-----------------------------------------------
-- MutuallyExclusiveDistricts
-----------------------------------------------

INSERT INTO MutuallyExclusiveDistricts
		(District,					MutuallyExclusiveDistrict				)
VALUES	('DISTRICT_CVS_TAINO_UI',	'DISTRICT_WATER_ENTERTAINMENT_COMPLEX'	);

-----------------------------------------------
-- District_ValidTerrains
-----------------------------------------------

INSERT INTO District_ValidTerrains
		(DistrictType,				TerrainType				)
VALUES	('DISTRICT_CVS_TAINO_UI',	'TERRAIN_GRASS'			),
		('DISTRICT_CVS_TAINO_UI',	'TERRAIN_GRASS_HILLS'	),
		('DISTRICT_CVS_TAINO_UI',	'TERRAIN_PLAINS'		),
		('DISTRICT_CVS_TAINO_UI',	'TERRAIN_PLAINS_HILLS'	),
		('DISTRICT_CVS_TAINO_UI',	'TERRAIN_TUNDRA'		),
		('DISTRICT_CVS_TAINO_UI',	'TERRAIN_TUNDRA_HILLS'	),
		('DISTRICT_CVS_TAINO_UI',	'TERRAIN_DESERT'		),
		('DISTRICT_CVS_TAINO_UI',	'TERRAIN_DESERT_HILLS'	),
		('DISTRICT_CVS_TAINO_UI',	'TERRAIN_SNOW'			),
		('DISTRICT_CVS_TAINO_UI',	'TERRAIN_SNOW_HILLS'	);

-----------------------------------------------
-- District_TradeRouteYields
-----------------------------------------------

INSERT INTO District_TradeRouteYields
		(DistrictType,				YieldType,			YieldChangeAsOrigin,	YieldChangeAsDomesticDestination,	YieldChangeAsInternationalDestination	)
SELECT	'DISTRICT_CVS_TAINO_UI',	YieldType,			YieldChangeAsOrigin,	YieldChangeAsDomesticDestination,	YieldChangeAsInternationalDestination	
FROM	District_TradeRouteYields
WHERE	DistrictType = 'DISTRICT_ENTERTAINMENT_COMPLEX';

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers
		(TraitType,										ModifierId										)
VALUES	('TRAIT_CIVILIZATION_DISTRICT_CVS_TAINO_UI',	'MODIFIER_CVS_TAINO_UI_ADJUST_AMENITY_ARENA'	),
		('TRAIT_CIVILIZATION_DISTRICT_CVS_TAINO_UI',	'MODIFIER_CVS_TAINO_UI_ADJUST_AMENITY_ZOO'		),
		('TRAIT_CIVILIZATION_DISTRICT_CVS_TAINO_UI',	'MODIFIER_CVS_TAINO_UI_ADJUST_AMENITY_STADIUM'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,								CollectionType,					EffectType										)
VALUES	('MODTYPE_CVS_TAINO_UI_ATTACH_DISTRICTS',	'COLLECTION_PLAYER_DISTRICTS',	'EFFECT_ATTACH_MODIFIER'						),
		('MODTYPE_CVS_TAINO_UI_ADJUST_AMENITIES',	'COLLECTION_OWNER',				'EFFECT_ADJUST_DISTRICT_EXTRA_ENTERTAINMENT'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,										ModifierType,								SubjectRequirementSetId				)
VALUES	('MODIFIER_CVS_TAINO_UI_ATTACH_ARENA',				'MODTYPE_CVS_TAINO_UI_ATTACH_DISTRICTS',	'REQSET_CVS_TAINO_UI_HAS_ARENA'		),
		('MODIFIER_CVS_TAINO_UI_ADJUST_AMENITY_ARENA',		'MODTYPE_CVS_TAINO_UI_ADJUST_AMENITIES',	NULL								),
		('MODIFIER_CVS_TAINO_UI_ATTACH_ZOO',				'MODTYPE_CVS_TAINO_UI_ATTACH_DISTRICTS',	'REQSET_CVS_TAINO_UI_HAS_ZOO'		),
		('MODIFIER_CVS_TAINO_UI_ADJUST_AMENITY_ZOO',		'MODTYPE_CVS_TAINO_UI_ADJUST_AMENITIES',	NULL								),
		('MODIFIER_CVS_TAINO_UI_ATTACH_STADIUM',			'MODTYPE_CVS_TAINO_UI_ATTACH_DISTRICTS',	'REQSET_CVS_TAINO_UI_HAS_STADIUM'	),
		('MODIFIER_CVS_TAINO_UI_ADJUST_AMENITY_STADIUM',	'MODTYPE_CVS_TAINO_UI_ADJUST_AMENITIES',	NULL								);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,										Name,			Value											)
VALUES	('MODIFIER_CVS_TAINO_UI_ATTACH_ARENA',				'ModifierId',	'MODIFIER_CVS_TAINO_UI_ADJUST_AMENITY_ARENA'	),
		('MODIFIER_CVS_TAINO_UI_ADJUST_AMENITY_ARENA',		'Amount',		1												),
		('MODIFIER_CVS_TAINO_UI_ATTACH_ZOO',				'ModifierId',	'MODIFIER_CVS_TAINO_UI_ADJUST_AMENITY_ZOO'		),
		('MODIFIER_CVS_TAINO_UI_ADJUST_AMENITY_ZOO',		'Amount',		1												),
		('MODIFIER_CVS_TAINO_UI_ATTACH_STADIUM',			'ModifierId',	'MODIFIER_CVS_TAINO_UI_ADJUST_AMENITY_STADIUM'	),
		('MODIFIER_CVS_TAINO_UI_ADJUST_AMENITY_STADIUM',	'Amount',		1												);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,					RequirementSetType			)
VALUES	('REQSET_CVS_TAINO_UI_HAS_ARENA',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_TAINO_UI_HAS_ZOO',		'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_TAINO_UI_HAS_STADIUM',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId					)
VALUES	('REQSET_CVS_TAINO_UI_HAS_ARENA',		'REQ_CVS_TAINO_UI_IS_BATEY'		),
		('REQSET_CVS_TAINO_UI_HAS_ARENA',		'REQ_CVS_TAINO_UI_HAS_ARENA'	),
		('REQSET_CVS_TAINO_UI_HAS_ZOO',			'REQ_CVS_TAINO_UI_IS_BATEY'		),
		('REQSET_CVS_TAINO_UI_HAS_ZOO',			'REQ_CVS_TAINO_UI_HAS_ZOO'		),
		('REQSET_CVS_TAINO_UI_HAS_STADIUM',		'REQ_CVS_TAINO_UI_IS_BATEY'		),
		('REQSET_CVS_TAINO_UI_HAS_STADIUM',		'REQ_CVS_TAINO_UI_HAS_STADIUM'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,						RequirementType						)
VALUES	('REQ_CVS_TAINO_UI_IS_BATEY',		'REQUIREMENT_DISTRICT_TYPE_MATCHES'	),
		('REQ_CVS_TAINO_UI_HAS_ARENA',		'REQUIREMENT_CITY_HAS_BUILDING'		),
		('REQ_CVS_TAINO_UI_HAS_ZOO',		'REQUIREMENT_CITY_HAS_BUILDING'		),
		('REQ_CVS_TAINO_UI_HAS_STADIUM',	'REQUIREMENT_CITY_HAS_BUILDING'		);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
		
INSERT INTO RequirementArguments
		(RequirementId,						Name,			Value					)
VALUES	('REQ_CVS_TAINO_UI_IS_BATEY',		'DistrictType',	'DISTRICT_CVS_TAINO_UI'	),
		('REQ_CVS_TAINO_UI_HAS_ARENA',		'BuildingType',	'BUILDING_ARENA'		),
		('REQ_CVS_TAINO_UI_HAS_ZOO',		'BuildingType',	'BUILDING_ZOO'			),
		('REQ_CVS_TAINO_UI_HAS_STADIUM',	'BuildingType',	'BUILDING_STADIUM'		);

-----------------------------------------------
-- MomentIllustrations
-----------------------------------------------

INSERT INTO MomentIllustrations
		(MomentIllustrationType,					MomentDataType,				GameDataType,				Texture								)
VALUES	('MOMENT_ILLUSTRATION_UNIQUE_DISTRICT',		'MOMENT_DATA_DISTRICT',		'DISTRICT_CVS_TAINO_UI',	'Moment_Infrastructure_CVS_Batey'	);