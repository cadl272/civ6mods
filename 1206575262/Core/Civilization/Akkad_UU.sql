/*
	UU
	Credits: Chrisy15, ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------	
	
INSERT INTO Types
		(Type,										Kind			)
VALUES	('TRAIT_CIVILIZATION_CVS_AKKAD_UU',			'KIND_TRAIT'	),
		('UNIT_CVS_AKKAD_UU',						'KIND_UNIT'		),
		('ABILITY_CVS_AKKAD_UU',					'KIND_ABILITY'	),
		('ABILITY_CVS_AKKAD_UU_EXTENDED',			'KIND_ABILITY'	),
		('MODTYPE_CVS_AKKAD_UU_ATTACH_MODIFIER',	'KIND_MODIFIER'	),
		('MODTYPE_CVS_AKKAD_UU_ADJUST_STRENGTH',	'KIND_MODIFIER'	);
		
-----------------------------------------------
-- Tags
-----------------------------------------------	

INSERT INTO Tags
		(Tag,							Vocabulary		)
VALUES	('CLASS_CVS_AKKAD_UU',			'ABILITY_CLASS'	),
		('CLASS_CVS_AKKAD_UU_EXTENDED',	'ABILITY_CLASS'	);

-----------------------------------------------
-- TypeTags
-----------------------------------------------		

INSERT INTO TypeTags
		(Type,								Tag								)
VALUES	('UNIT_CVS_AKKAD_UU',				'CLASS_CVS_AKKAD_UU'			),
		('ABILITY_CVS_AKKAD_UU',			'CLASS_CVS_AKKAD_UU'			),
		('ABILITY_CVS_AKKAD_UU_EXTENDED',	'CLASS_CVS_AKKAD_UU_EXTENDED'	);

INSERT INTO TypeTags (Type,		Tag)
SELECT 	'UNIT_CVS_AKKAD_UU',	Tag
FROM 	TypeTags
WHERE 	Type = 'UNIT_ARCHER';

INSERT INTO TypeTags (Type,		Tag)
SELECT 	UnitType,	'CLASS_CVS_AKKAD_UU_EXTENDED'
FROM 	Units
WHERE 	PromotionClass = 'PROMOTION_CLASS_MELEE';

-----------------------------------------------
-- Traits
-----------------------------------------------
		
INSERT INTO Traits
		(TraitType,							Name							)
VALUES	('TRAIT_CIVILIZATION_CVS_AKKAD_UU',	'LOC_UNIT_CVS_AKKAD_UU_NAME'	);

-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------
		
INSERT INTO CivilizationTraits
		(CivilizationType,			TraitType							)
VALUES	('CIVILIZATION_CVS_AKKAD',	'TRAIT_CIVILIZATION_CVS_AKKAD_UU'	);

-----------------------------------------------
-- Units
-----------------------------------------------	

INSERT INTO Units	(
		UnitType,
		Name,
		Description,
		TraitType,
		BaseMoves,
		Cost,
		PurchaseYield,
		AdvisorType,
		Combat,
		RangedCombat,
		Range,
		BaseSightRange,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		Maintenance,
		MandatoryObsoleteTech,
		PrereqTech,
		PrereqCivic
		)
SELECT	'UNIT_CVS_AKKAD_UU',	-- UnitType
		'LOC_UNIT_CVS_AKKAD_UU_NAME',	-- Name
		'LOC_UNIT_CVS_AKKAD_UU_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_CVS_AKKAD_UU', -- TraitType
		BaseMoves,
		Cost + 20, -- Cost
		PurchaseYield,
		AdvisorType,
		Combat,
		RangedCombat + 8, -- RangedCombat
		Range,
		BaseSightRange,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		Maintenance,
		MandatoryObsoleteTech,
		PrereqTech,
		PrereqCivic
FROM	Units
WHERE	UnitType = 'UNIT_ARCHER';

-----------------------------------------------
-- UnitUpgrades
-----------------------------------------------
		
INSERT INTO UnitUpgrades (Unit,	UpgradeUnit)
SELECT 	'UNIT_CVS_AKKAD_UU',	UpgradeUnit
FROM 	UnitUpgrades
WHERE	Unit = 'UNIT_ARCHER';

-----------------------------------------------
-- UnitAiInfos
-----------------------------------------------
		
INSERT INTO UnitAiInfos (UnitType,	AiType)
SELECT 	'UNIT_CVS_AKKAD_UU',	AiType
FROM 	UnitAiInfos
WHERE 	UnitType = 'UNIT_ARCHER';
		
-----------------------------------------------
-- UnitReplaces
-----------------------------------------------
		
INSERT INTO UnitReplaces
		(CivUniqueUnitType,		ReplacesUnitType	)
VALUES	('UNIT_CVS_AKKAD_UU',	'UNIT_ARCHER'		);

-----------------------------------------------
-- UnitAbilities
-----------------------------------------------

INSERT INTO UnitAbilities
		(UnitAbilityType,					Name,										Description										)
VALUES	('ABILITY_CVS_AKKAD_UU',			'LOC_ABILITY_CVS_AKKAD_UU_NAME',			'LOC_ABILITY_CVS_AKKAD_UU_DESCRIPTION'			),
		('ABILITY_CVS_AKKAD_UU_EXTENDED',	'LOC_ABILITY_CVS_AKKAD_UU_EXTENDED_NAME',	'LOC_ABILITY_CVS_AKKAD_UU_EXTENDED_DESCRIPTION'	);

-----------------------------------------------
--  UnitAbilityModifiers
-----------------------------------------------

INSERT INTO	UnitAbilityModifiers
		(UnitAbilityType,					ModifierId									)
VALUES	('ABILITY_CVS_AKKAD_UU_EXTENDED',	'MODIFIER_CVS_AKKAD_UU_ADJ_COMBAT_STRENGTH'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,								CollectionType,				EffectType									)
VALUES	('MODTYPE_CVS_AKKAD_UU_ADJUST_STRENGTH',	'COLLECTION_UNIT_COMBAT',	'EFFECT_ADJUST_PLAYER_STRENGTH_MODIFIER'	);
		
-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,									ModifierType,							SubjectRequirementSetId				)
VALUES	('MODIFIER_CVS_AKKAD_UU_ADJ_COMBAT_STRENGTH',	'MODTYPE_CVS_AKKAD_UU_ADJUST_STRENGTH',	'REQSET_CVS_AKKAD_UU_IS_ADJACENT'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,									Name,		Value	)
VALUES	('MODIFIER_CVS_AKKAD_UU_ADJ_COMBAT_STRENGTH',	'Amount',	5		);

-----------------------------------------------
-- ModifierStrings
-----------------------------------------------
		
INSERT INTO ModifierStrings
		(ModifierId,									Context,	Text														)
VALUES	('MODIFIER_CVS_AKKAD_UU_ADJ_COMBAT_STRENGTH',	'Preview',	'LOC_MODIFIER_CVS_AKKAD_UU_ADJ_COMBAT_STRENGTH_DESCRIPTION'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,					RequirementId					)
VALUES	('REQSET_CVS_AKKAD_UU_IS_ADJACENT',	'REQ_CVS_AKKAD_UU_IS_ADJACENT'	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,					RequirementSetType			)
VALUES	('REQSET_CVS_AKKAD_UU_IS_ADJACENT',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,						RequirementType											)
VALUES	('REQ_CVS_AKKAD_UU_IS_ADJACENT',	'REQUIREMENT_PLOT_ADJACENT_FRIENDLY_UNIT_TYPE_MATCHES'	);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
		
INSERT INTO RequirementArguments
		(RequirementId,						Name,		Value				)
VALUES	('REQ_CVS_AKKAD_UU_IS_ADJACENT',	'UnitType',	'UNIT_CVS_AKKAD_UU'	);