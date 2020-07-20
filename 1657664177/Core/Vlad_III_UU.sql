/*
	UU
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------	
	
INSERT INTO Types
		(Type,									Kind			)
VALUES	('TRAIT_LEADER_CVS_VLAD_III_UU',		'KIND_TRAIT'	),
		('UNIT_CVS_VLAD_III_UU',				'KIND_UNIT'		),
		('ABILITY_CVS_VLAD_III_UU',				'KIND_ABILITY'	),
		('MODTYPE_CVS_VLAD_III_UU_PILLAGE',		'KIND_MODIFIER'	);

-----------------------------------------------
-- Tags
-----------------------------------------------	
	
INSERT INTO Tags
		(Tag,						Vocabulary		)
VALUES	('CLASS_CVS_VLAD_III_UU',	'ABILITY_CLASS'	);

-----------------------------------------------
-- TypeTags
-----------------------------------------------		

INSERT INTO TypeTags
		(Type,						Tag						)
VALUES	('UNIT_CVS_VLAD_III_UU',	'CLASS_CVS_VLAD_III_UU'	),
		('ABILITY_CVS_VLAD_III_UU',	'CLASS_CVS_VLAD_III_UU'	);

INSERT INTO TypeTags (Type,		Tag)
SELECT 	'UNIT_CVS_VLAD_III_UU',	Tag
FROM 	TypeTags
WHERE 	Type = 'UNIT_CROSSBOWMAN';

-----------------------------------------------
-- Traits
-----------------------------------------------
		
INSERT INTO Traits
		(TraitType,							Name							)
VALUES	('TRAIT_LEADER_CVS_VLAD_III_UU',	'LOC_UNIT_CVS_VLAD_III_UU_NAME'	);

-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------
		
INSERT INTO LeaderTraits
		(LeaderType,			TraitType						)
VALUES	('LEADER_CVS_VLAD_III',	'TRAIT_LEADER_CVS_VLAD_III_UU'	);

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
SELECT	'UNIT_CVS_VLAD_III_UU',	-- UnitType
		'LOC_UNIT_CVS_VLAD_III_UU_NAME',	-- Name
		'LOC_UNIT_CVS_VLAD_III_UU_DESCRIPTION', -- Description
		'TRAIT_LEADER_CVS_VLAD_III_UU', -- TraitType
		BaseMoves + 2, -- BaseMoves
		Cost,
		PurchaseYield,
		AdvisorType,
		Combat,
		RangedCombat * 0.9, -- RangedCombat
		Range,
		BaseSightRange,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		Maintenance,
		MandatoryObsoleteTech,
		NULL, -- PrereqTech
		'CIVIC_MERCENARIES' -- PrereqCivic
FROM	Units
WHERE	UnitType = 'UNIT_CROSSBOWMAN';

-----------------------------------------------
-- Units_XP2
-----------------------------------------------	

INSERT INTO Units_XP2
		(UnitType,					ResourceMaintenanceAmount,	ResourceCost,	ResourceMaintenanceType	)
VALUES	('UNIT_CVS_VLAD_III_UU',	0,							20,				NULL					);

-----------------------------------------------
-- UnitUpgrades
-----------------------------------------------
		
INSERT INTO UnitUpgrades (Unit,	UpgradeUnit)
SELECT 	'UNIT_CVS_VLAD_III_UU',	UpgradeUnit
FROM 	UnitUpgrades
WHERE	Unit = 'UNIT_CROSSBOWMAN';

-----------------------------------------------
-- UnitAiInfos
-----------------------------------------------
		
INSERT INTO UnitAiInfos (UnitType,	AiType)
SELECT 	'UNIT_CVS_VLAD_III_UU',		AiType
FROM 	UnitAiInfos
WHERE 	UnitType = 'UNIT_CROSSBOWMAN';
		
-----------------------------------------------
-- UnitReplaces
-----------------------------------------------
		
INSERT INTO UnitReplaces
		(CivUniqueUnitType,			ReplacesUnitType	)
VALUES	('UNIT_CVS_VLAD_III_UU',	'UNIT_CROSSBOWMAN'	);

-----------------------------------------------
-- UnitAbilities
-----------------------------------------------

INSERT INTO UnitAbilities
		(UnitAbilityType,			Name,								Description									)
VALUES	('ABILITY_CVS_VLAD_III_UU',	'LOC_ABILITY_CVS_VLAD_III_UU_NAME',	'LOC_ABILITY_CVS_VLAD_III_UU_DESCRIPTION'	);

-----------------------------------------------
-- UnitAbilityModifiers
-----------------------------------------------
		
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,			ModifierId								)
VALUES	('ABILITY_CVS_VLAD_III_UU',	'MODIFIER_CVS_VLAD_III_UU_ATTACK_MOVE'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,							CollectionType,		EffectType								)
VALUES	('MODTYPE_CVS_VLAD_III_UU_PILLAGE',		'COLLECTION_OWNER',	'EFFECT_ADJUST_UNIT_ADVANCED_PILLAGING'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,								ModifierType,						SubjectRequirementSetId,	Permanent,	RunOnce	)
VALUES	('MODIFIER_CVS_VLAD_III_UU_ATTACK_MOVE',	'MODTYPE_CVS_VLAD_III_UU_PILLAGE',	NULL,						0,			0		);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments		
		(ModifierId,								Name,					Value	)
VALUES	('MODIFIER_CVS_VLAD_III_UU_ATTACK_MOVE',	'UseAdvancedPillaging',	1		);

-----------------------------------------------
-- MomentIllustrations
-----------------------------------------------

INSERT INTO MomentIllustrations
		(MomentIllustrationType,			MomentDataType,			GameDataType,			Texture						)
VALUES	('MOMENT_ILLUSTRATION_UNIQUE_UNIT',	'MOMENT_DATA_UNIT',		'UNIT_CVS_VLAD_III_UU',	'MOMENT_CVS_VLAD_III_UU'	);
