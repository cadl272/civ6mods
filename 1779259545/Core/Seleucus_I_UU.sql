/*
	UU
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------	
	
INSERT INTO Types
		(Type,											Kind			)
VALUES	('TRAIT_LEADER_CVS_SELEUCUS_I_UU',				'KIND_TRAIT'	),
		('UNIT_CVS_SELEUCUS_I_UU',						'KIND_UNIT'		),
		('ABILITY_CVS_SELEUCUS_I_UU',					'KIND_ABILITY'	),
		('MODTYPE_CVS_SELEUCUS_I_UU_COMBAT_GPP',		'KIND_MODIFIER'	),
		('MODTYPE_CVS_SELEUCUS_I_UU_COMBAT_STRENGTH',	'KIND_MODIFIER'	),
		('MODTYPE_CVS_SELEUCUS_I_UU_WALL_DAMAGE',		'KIND_MODIFIER'	);

-----------------------------------------------
-- Tags
-----------------------------------------------	
	
INSERT INTO Tags
		(Tag,						Vocabulary		)
VALUES	('CLASS_CVS_SELEUCUS_I_UU',	'ABILITY_CLASS'	);

-----------------------------------------------
-- TypeTags
-----------------------------------------------		

INSERT INTO TypeTags
		(Type,							Tag							)
VALUES	('UNIT_CVS_SELEUCUS_I_UU',		'CLASS_CVS_SELEUCUS_I_UU'	),
		('ABILITY_CVS_SELEUCUS_I_UU',	'CLASS_CVS_SELEUCUS_I_UU'	);

INSERT INTO TypeTags (Type,			Tag)
SELECT 	'UNIT_CVS_SELEUCUS_I_UU',	Tag
FROM 	TypeTags
WHERE 	Type = 'UNIT_KNIGHT';

-----------------------------------------------
-- Traits
-----------------------------------------------
		
INSERT INTO Traits
		(TraitType,							Name								)
VALUES	('TRAIT_LEADER_CVS_SELEUCUS_I_UU',	'LOC_UNIT_CVS_SELEUCUS_I_UU_NAME'	);

-----------------------------------------------
-- LeaderTraits
-----------------------------------------------
		
INSERT INTO LeaderTraits
		(LeaderType,				TraitType							)
VALUES	('LEADER_CVS_SELEUCUS_I',	'TRAIT_LEADER_CVS_SELEUCUS_I_UU'	);

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
SELECT	'UNIT_CVS_SELEUCUS_I_UU',	-- UnitType
		'LOC_UNIT_CVS_SELEUCUS_I_UU_NAME',	-- Name
		'LOC_UNIT_CVS_SELEUCUS_I_UU_DESCRIPTION', -- Description
		'TRAIT_LEADER_CVS_SELEUCUS_I_UU', -- TraitType
		BaseMoves - 1, -- BaseMoves
		Cost,
		PurchaseYield,
		AdvisorType,
		Combat,
		BaseSightRange,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		Maintenance + 1, -- Maintenance
		MandatoryObsoleteTech,
		NULL, -- PrereqTech
		'CIVIC_MILITARY_TRAINING' -- PrereqCivic
FROM	Units
WHERE	UnitType = 'UNIT_KNIGHT';

-----------------------------------------------
-- UnitUpgrades
-----------------------------------------------
		
INSERT INTO UnitUpgrades (Unit,	UpgradeUnit)
SELECT 	'UNIT_CVS_SELEUCUS_I_UU',	UpgradeUnit
FROM 	UnitUpgrades
WHERE	Unit = 'UNIT_KNIGHT';

-----------------------------------------------
-- UnitAiInfos
-----------------------------------------------
		
INSERT INTO UnitAiInfos (UnitType,	AiType)
SELECT 	'UNIT_CVS_SELEUCUS_I_UU',	AiType
FROM 	UnitAiInfos
WHERE 	UnitType = 'UNIT_KNIGHT';

-----------------------------------------------
-- UnitReplaces
-----------------------------------------------
		
INSERT INTO UnitReplaces
		(CivUniqueUnitType,			ReplacesUnitType	)
VALUES	('UNIT_CVS_SELEUCUS_I_UU',	'UNIT_KNIGHT'		);

-----------------------------------------------
-- UnitAbilities
-----------------------------------------------

INSERT INTO UnitAbilities
		(UnitAbilityType,				Name,									Description									)
VALUES	('ABILITY_CVS_SELEUCUS_I_UU',	'LOC_ABILITY_CVS_SELEUCUS_I_UU_NAME',	'LOC_ABILITY_CVS_SELEUCUS_I_UU_DESCRIPTION'	);

-----------------------------------------------
-- UnitAbilityModifiers
-----------------------------------------------
		
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,				ModifierId									)
VALUES	('ABILITY_CVS_SELEUCUS_I_UU',	'MODIFIER_CVS_SELEUCUS_I_UU_COMBAT_GPP'		),
		('ABILITY_CVS_SELEUCUS_I_UU',	'MODIFIER_CVS_SELEUCUS_I_UU_DEFENDING'		),
		('ABILITY_CVS_SELEUCUS_I_UU',	'MODIFIER_CVS_SELEUCUS_I_UU_WALL_DAMAGE'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,									CollectionType,				EffectType										)
VALUES	('MODTYPE_CVS_SELEUCUS_I_UU_COMBAT_GPP',		'COLLECTION_OWNER',			'EFFECT_ADJUST_GREAT_PEOPLE_POINTS_PER_KILL'	),
		('MODTYPE_CVS_SELEUCUS_I_UU_COMBAT_STRENGTH',	'COLLECTION_UNIT_COMBAT',	'EFFECT_ADJUST_PLAYER_STRENGTH_MODIFIER'		),
		('MODTYPE_CVS_SELEUCUS_I_UU_WALL_DAMAGE',		'COLLECTION_OWNER',			'EFFECT_ADJUST_UNIT_ENABLE_WALL_ATTACK'			);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,								ModifierType,									SubjectRequirementSetId					)
VALUES	('MODIFIER_CVS_SELEUCUS_I_UU_COMBAT_GPP',	'MODTYPE_CVS_SELEUCUS_I_UU_COMBAT_GPP',			NULL									),
		('MODIFIER_CVS_SELEUCUS_I_UU_DEFENDING',	'MODTYPE_CVS_SELEUCUS_I_UU_COMBAT_STRENGTH',	'REQSET_CVS_SELEUCUS_I_UU_IS_DEFENDING'	),
		('MODIFIER_CVS_SELEUCUS_I_UU_WALL_DAMAGE',	'MODTYPE_CVS_SELEUCUS_I_UU_WALL_DAMAGE',		NULL									);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments		
		(ModifierId,								Name,					Value							)
VALUES	('MODIFIER_CVS_SELEUCUS_I_UU_COMBAT_GPP',	'GreatPersonClassType',	'GREAT_PERSON_CLASS_GENERAL'	),
		('MODIFIER_CVS_SELEUCUS_I_UU_COMBAT_GPP',	'Amount',				5								),
		('MODIFIER_CVS_SELEUCUS_I_UU_DEFENDING',	'Amount',				5								),
		('MODIFIER_CVS_SELEUCUS_I_UU_WALL_DAMAGE',	'Enable',				1								);

-----------------------------------------------
-- ModifierStrings
-----------------------------------------------

INSERT INTO ModifierStrings
        (ModifierId,								Context,	Text													)
VALUES  ('MODIFIER_CVS_SELEUCUS_I_UU_DEFENDING',	'Preview',	'LOC_MODIFIER_CVS_SELEUCUS_I_UU_DEFENDING_DESCRIPTION'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId							)
VALUES	('REQSET_CVS_SELEUCUS_I_UU_IS_DEFENDING',	'REQ_CVS_SELEUCUS_I_UU_IS_DEFENDING'	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType			)
VALUES	('REQSET_CVS_SELEUCUS_I_UU_IS_DEFENDING',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,							RequirementType,					Inverse	)
VALUES	('REQ_CVS_SELEUCUS_I_UU_IS_DEFENDING',	'REQUIREMENT_PLAYER_IS_ATTACKING',	1		);