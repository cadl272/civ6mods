/*
	UI
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------		

INSERT INTO Types
		(Type,											Kind			)
VALUES	('TRAIT_CIVILIZATION_CVS_SWITZERLAND_UI',		'KIND_TRAIT'	),
		('BUILDING_CVS_SWITZERLAND_UI',					'KIND_BUILDING'	),
		('MODTYPE_CVS_SWITZERLAND_UI_ATTACH_PLAYERS',	'KIND_MODIFIER'	),
		('MODTYPE_CVS_SWITZERLAND_UI_BUILDING_YIELD',	'KIND_MODIFIER'	),
		('MODTYPE_CVS_SWITZERLAND_UI_ADJUST_INFLUENCE',	'KIND_MODIFIER'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits
		(TraitType,									Name									)
VALUES	('TRAIT_CIVILIZATION_CVS_SWITZERLAND_UI',	'LOC_BUILDING_CVS_SWITZERLAND_UI_NAME'	);

-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------
		
INSERT INTO CivilizationTraits
		(TraitType,									CivilizationType				)
VALUES	('TRAIT_CIVILIZATION_CVS_SWITZERLAND_UI',	'CIVILIZATION_CVS_SWITZERLAND'	);

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
SELECT	'BUILDING_CVS_SWITZERLAND_UI', -- BuildingType
		'LOC_BUILDING_CVS_SWITZERLAND_UI_NAME', -- Name
		'LOC_BUILDING_CVS_SWITZERLAND_UI_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_CVS_SWITZERLAND_UI', -- TraitType
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
WHERE	BuildingType = 'BUILDING_BANK';

-----------------------------------------------
-- BuildingReplaces
-----------------------------------------------

INSERT INTO BuildingReplaces
		(CivUniqueBuildingType,			ReplacesBuildingType	)
VALUES	('BUILDING_CVS_SWITZERLAND_UI',	'BUILDING_BANK'			);

-----------------------------------------------
-- BuildingPrereqs
-----------------------------------------------

INSERT INTO BuildingPrereqs
		(Building,						PrereqBuilding		)
VALUES	('BUILDING_CVS_SWITZERLAND_UI',	'BUILDING_MARKET'	);

-----------------------------------------------
-- Building_YieldChanges
-----------------------------------------------

INSERT INTO Building_YieldChanges
		(BuildingType,					YieldType,		YieldChange	)
VALUES	('BUILDING_CVS_SWITZERLAND_UI',	'YIELD_GOLD',	3			);

-----------------------------------------------
-- Building_GreatPersonPoints
-----------------------------------------------

INSERT INTO Building_GreatPersonPoints
		(BuildingType,					GreatPersonClassType,	PointsPerTurn	)
SELECT	'BUILDING_CVS_SWITZERLAND_UI',	GreatPersonClassType,	PointsPerTurn
FROM	Building_GreatPersonPoints
WHERE	BuildingType = "BUILDING_BANK";

-----------------------------------------------
-- BuildingModifiers
-----------------------------------------------

INSERT INTO BuildingModifiers
		(BuildingType,						ModifierId										)
VALUES	('BUILDING_CVS_SWITZERLAND_UI',		'MODTYPE_CVS_SWITZERLAND_UI_ADJUST_INFLUENCE'	);

-----------------------------------------------
-- TraitModifiers
-- Instead of BuildingModifiers because this needs to be routed via City-States
-----------------------------------------------

INSERT INTO	TraitModifiers
		(TraitType,					ModifierId								)
VALUES	('MINOR_CIV_DEFAULT_TRAIT',	'MODIFIER_CVS_SWITZERLAND_UI_CS_GOLD'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,									CollectionType,				EffectType									)
VALUES	('MODTYPE_CVS_SWITZERLAND_UI_ATTACH_PLAYERS',	'COLLECTION_ALL_PLAYERS',	'EFFECT_ATTACH_MODIFIER'					),
		('MODTYPE_CVS_SWITZERLAND_UI_BUILDING_YIELD',	'COLLECTION_PLAYER_CITIES',	'EFFECT_ADJUST_BUILDING_YIELD_CHANGE'		),
		('MODTYPE_CVS_SWITZERLAND_UI_ADJUST_INFLUENCE',	'COLLECTION_OWNER',			'EFFECT_ADJUST_INFLUENCE_POINTS_PER_TURN'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,										ModifierType,									SubjectRequirementSetId							)
VALUES	('MODIFIER_CVS_SWITZERLAND_UI_CS_GOLD',				'MODTYPE_CVS_SWITZERLAND_UI_ATTACH_PLAYERS',	'REQSET_CVS_SWITZERLAND_UI_IS_SUZERAIN'			),
		('MODIFIER_CVS_SWITZERLAND_UI_CS_GOLD_MOD',			'MODTYPE_CVS_SWITZERLAND_UI_BUILDING_YIELD',	NULL											),
		('MODIFIER_CVS_SWITZERLAND_UI_ADJUST_INFLUENCE',	'MODTYPE_CVS_SWITZERLAND_UI_ADJUST_INFLUENCE',	'REQSET_CVS_SWITZERLAND_UI_CITY_HAS_GOVERNOR'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,										Name,			Value										)
VALUES	('MODIFIER_CVS_SWITZERLAND_UI_CS_GOLD',				'ModifierId',	'MODIFIER_CVS_SWITZERLAND_UI_CS_GOLD_MOD'	),
		('MODIFIER_CVS_SWITZERLAND_UI_CS_GOLD_MOD',			'BuildingType',	'BUILDING_CVS_SWITZERLAND_UI'				),
		('MODIFIER_CVS_SWITZERLAND_UI_CS_GOLD_MOD',			'YieldType',	'YIELD_GOLD'								),
		('MODIFIER_CVS_SWITZERLAND_UI_CS_GOLD_MOD',			'Amount',		1											),
		('MODIFIER_CVS_SWITZERLAND_UI_ADJUST_INFLUENCE',	'Amount',		1											);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
        (RequirementSetId,								RequirementId								)
VALUES	('REQSET_CVS_SWITZERLAND_UI_IS_SUZERAIN',		'REQ_CVS_PLAYER_IS_SWITZERLAND'				),
		('REQSET_CVS_SWITZERLAND_UI_IS_SUZERAIN',		'REQ_CVS_SWITZERLAND_UI_PLAYER_IS_SUZERAIN'	),
		('REQSET_CVS_SWITZERLAND_UI_CITY_HAS_GOVERNOR',	'REQ_CVS_SWITZERLAND_UI_CITY_HAS_GOVERNOR'	);
		
-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
        (RequirementSetId,								RequirementSetType			)
VALUES	('REQSET_CVS_SWITZERLAND_UI_IS_SUZERAIN',		'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_SWITZERLAND_UI_CITY_HAS_GOVERNOR',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,									RequirementType						)
VALUES	('REQ_CVS_SWITZERLAND_UI_PLAYER_IS_SUZERAIN',	'REQUIREMENT_PLAYER_IS_SUZERAIN'	),
		('REQ_CVS_SWITZERLAND_UI_CITY_HAS_GOVERNOR',	'REQUIREMENT_CITY_HAS_GOVERNOR'		);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,											Name,			Value	)
VALUES	('REQ_CVS_SWITZERLAND_UI_CITY_HAS_GOVERNOR',			'Established',	1		);

-----------------------------------------------
-- MomentIllustrations
-----------------------------------------------

INSERT INTO MomentIllustrations
		(MomentIllustrationType,				MomentDataType,			GameDataType,					Texture										)
VALUES	('MOMENT_ILLUSTRATION_UNIQUE_BUILDING',	'MOMENT_DATA_BUILDING',	'BUILDING_CVS_SWITZERLAND_UI',	'MOMENT_BUILDING_CVS_SWITZERLAND_UI.dds'	);