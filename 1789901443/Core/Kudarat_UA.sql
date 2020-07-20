/*
	UA
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,											Kind			)
VALUES	('TRAIT_LEADER_CVS_KUDARAT_UA',					'KIND_TRAIT'	),
		('MODTYPE_CVS_KUDARAT_UA_YIELD_UNIT_CREATED',	'KIND_MODIFIER'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,									CollectionType,					EffectType											)
VALUES	('MODTYPE_CVS_KUDARAT_UA_YIELD_UNIT_CREATED',	'COLLECTION_PLAYER_CITIES',		'EFFECT_GRANT_CITY_YIELD_PERCENT_UNIT_CREATED_COST'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO	Traits
		(TraitType,						Name,									Description										)
VALUES	('TRAIT_LEADER_CVS_KUDARAT_UA',	'LOC_TRAIT_LEADER_CVS_KUDARAT_UA_NAME',	'LOC_TRAIT_LEADER_CVS_KUDARAT_UA_DESCRIPTION'	);
		
-----------------------------------------------
-- LeaderTraits
-----------------------------------------------

INSERT INTO	LeaderTraits
		(LeaderType,			TraitType							)
VALUES	('LEADER_CVS_KUDARAT',	'TRAIT_LEADER_CVS_KUDARAT_UA'		),
		('LEADER_CVS_KUDARAT',	'TRAIT_LEADER_RELIGIOUS_MAJOR_CIV'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers
		(TraitType,						ModifierId	)
VALUES	('TRAIT_LEADER_CVS_KUDARAT_UA',	'MODIFIER_CVS_KUDARAT_QUICKER_WALLS'),
		('TRAIT_LEADER_CVS_KUDARAT_UA',	'MODIFIER_CVS_KUDARAT_QUICKER_CASTLE'),
		('TRAIT_LEADER_CVS_KUDARAT_UA',	'MODIFIER_CVS_KUDARAT_QUICKER_STAR_FORT'),
		('TRAIT_LEADER_CVS_KUDARAT_UA',	'MODIFIER_CVS_KUDARAT_FAITH_FROM_WALLS'),
		('TRAIT_LEADER_CVS_KUDARAT_UA',	'MODIFIER_CVS_KUDARAT_FAITH_FROM_CASTLE'),
		('TRAIT_LEADER_CVS_KUDARAT_UA',	'MODIFIER_CVS_KUDARAT_FAITH_FROM_STAR_FORT'),
		('TRAIT_LEADER_CVS_KUDARAT_UA',	'MODIFIER_CVS_KUDARAT_FAITH_FROM_WALLED_CITY_UNITS'),
		('TRAIT_LEADER_CVS_KUDARAT_UA',	'MODIFIER_CVS_KUDARAT_PURCHASE_TRADERS_WITH_FAITH');

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,											ModifierType,												SubjectRequirementSetId	)
VALUES	('MODIFIER_CVS_KUDARAT_QUICKER_WALLS',					'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION',		NULL),
		('MODIFIER_CVS_KUDARAT_QUICKER_CASTLE',					'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION',		NULL),	
		('MODIFIER_CVS_KUDARAT_QUICKER_STAR_FORT',				'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION',		NULL),
		('MODIFIER_CVS_KUDARAT_FAITH_FROM_WALLS',				'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_PER_POPULATION',	'REQSET_CVS_CITY_HAS_WALLS'),
		('MODIFIER_CVS_KUDARAT_FAITH_FROM_CASTLE',				'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_PER_POPULATION',	'REQSET_CVS_CITY_HAS_CASTLE'),
		('MODIFIER_CVS_KUDARAT_FAITH_FROM_STAR_FORT',			'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_PER_POPULATION',	'REQSET_CVS_CITY_HAS_STAR_FORT'),
		('MODIFIER_CVS_KUDARAT_PURCHASE_TRADERS_WITH_FAITH',	'MODIFIER_PLAYER_CITIES_ENABLE_UNIT_FAITH_PURCHASE',		NULL),

		('MODIFIER_CVS_KUDARAT_FAITH_FROM_WALLED_CITY_UNITS',	'MODTYPE_CVS_KUDARAT_UA_YIELD_UNIT_CREATED',				'REQSET_CVS_CITY_HAS_WALLS');

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,											Name,						Value )
VALUES	('MODIFIER_CVS_KUDARAT_QUICKER_WALLS',					'Amount',					50),
		('MODIFIER_CVS_KUDARAT_QUICKER_WALLS',					'BuildingType',				'BUILDING_WALLS'),
		('MODIFIER_CVS_KUDARAT_QUICKER_CASTLE',					'Amount',					50),
		('MODIFIER_CVS_KUDARAT_QUICKER_CASTLE',					'BuildingType',				'BUILDING_CASTLE'),
		('MODIFIER_CVS_KUDARAT_QUICKER_STAR_FORT',				'Amount',					50),
		('MODIFIER_CVS_KUDARAT_QUICKER_STAR_FORT',				'BuildingType',				'BUILDING_STAR_FORT'),

		('MODIFIER_CVS_KUDARAT_FAITH_FROM_WALLS',				'Amount',					.5),
		('MODIFIER_CVS_KUDARAT_FAITH_FROM_WALLS',				'YieldType',				'YIELD_FAITH'),
		('MODIFIER_CVS_KUDARAT_FAITH_FROM_CASTLE',				'Amount',					1),
		('MODIFIER_CVS_KUDARAT_FAITH_FROM_CASTLE',				'YieldType',				'YIELD_FAITH'),
		('MODIFIER_CVS_KUDARAT_FAITH_FROM_STAR_FORT',			'Amount',					1.5),
		('MODIFIER_CVS_KUDARAT_FAITH_FROM_STAR_FORT',			'YieldType',				'YIELD_FAITH'),

		('MODIFIER_CVS_KUDARAT_PURCHASE_TRADERS_WITH_FAITH',	'Tag',						'CLASS_TRADER'),

		('MODIFIER_CVS_KUDARAT_FAITH_FROM_WALLED_CITY_UNITS',	'YieldType',				'YIELD_FAITH'),
		('MODIFIER_CVS_KUDARAT_FAITH_FROM_WALLED_CITY_UNITS',	'UnitProductionPercent',	20);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,									RequirementSetType			)
VALUES	('REQSET_CVS_CITY_HAS_WALLS',						'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_CITY_HAS_CASTLE',						'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_CITY_HAS_STAR_FORT',					'REQUIREMENTSET_TEST_ALL'	);
-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements	
		(RequirementSetId,									RequirementId						)
VALUES	('REQSET_CVS_CITY_HAS_WALLS',						'REQ_CVS_CITY_HAS_WALLS'			),
		('REQSET_CVS_CITY_HAS_WALLS',						'REQ_CVS_CITY_NO_HAS_CASTLE'		),
		('REQSET_CVS_CITY_HAS_WALLS',						'REQ_CVS_CITY_NO_HAS_STAR_FORT'		),
		('REQSET_CVS_CITY_HAS_CASTLE',						'REQ_CVS_CITY_HAS_CASTLE'			),
		('REQSET_CVS_CITY_HAS_CASTLE',						'REQ_CVS_CITY_NO_HAS_STAR_FORT'		),
		('REQSET_CVS_CITY_HAS_STAR_FORT',					'REQ_CVS_CITY_HAS_STAR_FORT'		);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,										RequirementType,							Inverse	)
VALUES	('REQ_CVS_CITY_HAS_WALLS',							'REQUIREMENT_CITY_HAS_BUILDING',			0		),
		('REQ_CVS_CITY_HAS_CASTLE',							'REQUIREMENT_CITY_HAS_BUILDING',			0		),
		('REQ_CVS_CITY_HAS_STAR_FORT',						'REQUIREMENT_CITY_HAS_BUILDING',			0		),
		('REQ_CVS_CITY_NO_HAS_CASTLE',						'REQUIREMENT_CITY_HAS_BUILDING',			1		),
		('REQ_CVS_CITY_NO_HAS_STAR_FORT',					'REQUIREMENT_CITY_HAS_BUILDING',			1		);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,										Name,					Value					)
VALUES	('REQ_CVS_CITY_HAS_WALLS',							'BuildingType',			'BUILDING_WALLS'		),
		('REQ_CVS_CITY_HAS_CASTLE',							'BuildingType',			'BUILDING_CASTLE'		),
		('REQ_CVS_CITY_HAS_STAR_FORT',						'BuildingType',			'BUILDING_STAR_FORT'	),
		('REQ_CVS_CITY_NO_HAS_CASTLE',						'BuildingType',			'BUILDING_CASTLE'		),
		('REQ_CVS_CITY_NO_HAS_STAR_FORT',					'BuildingType',			'BUILDING_STAR_FORT'	);