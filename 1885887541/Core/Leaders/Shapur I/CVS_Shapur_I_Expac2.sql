--==========================================================================================================================
-- Shapur I / Gathering Storm
--==========================================================================================================================
UPDATE Traits
SET Description = 'LOC_TRAIT_LEADER_CVS_SHAPUR_I_UA_EXPAC2_DESCRIPTION'
WHERE TraitType = 'TRAIT_LEADER_CVS_SHAPUR_I_UA';

UPDATE Units
SET Description = 'LOC_UNIT_CVS_SHAPUR_I_UU_EXPAC2_DESCRIPTION'
WHERE UnitType = 'UNIT_CVS_SHAPUR_I_UU';

INSERT INTO Units_XP2
		(UnitType,
		ResourceMaintenanceAmount,
		ResourceCost,
		TourismBomb,
		CanEarnExperience,
		TourismBombPossible,
		CanFormMilitaryFormation,
		MajorCivOnly)
SELECT	'UNIT_CVS_SHAPUR_I_UU',
		ResourceMaintenanceAmount,
		10,
		TourismBomb,
		CanEarnExperience,
		TourismBombPossible,
		CanFormMilitaryFormation,
		MajorCivOnly
FROM Units_XP2 WHERE UnitType = 'UNIT_SWORDSMAN';

INSERT INTO TypeTags (Type, Tag) VALUES	('ABILITY_CVS_SHAPUR_I_UU_MTN',	'CLASS_CVS_SHAPUR_I_UU');	
INSERT INTO Types (Type, Kind) VALUES ('ABILITY_CVS_SHAPUR_I_UU_MTN',	'KIND_ABILITY');
INSERT INTO UnitAbilities (UnitAbilityType,	Name, Description) VALUES ('ABILITY_CVS_SHAPUR_I_UU_MTN', 'LOC_ABILITY_CVS_SHAPUR_I_UU_MTN_NAME', 'LOC_ABILITY_CVS_SHAPUR_I_UU_MTN_DESCRIPTION');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES ('ABILITY_CVS_SHAPUR_I_UU_MTN', 'CVS_SHAPUR_I_UU_MTN_MOD');

INSERT INTO Modifiers
		(ModifierId,				ModifierType,							OwnerRequirementSetId)
VALUES	('CVS_SHAPUR_I_UU_MTN_MOD',	'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',	'CVS_SHAPUR_I_UU_MTN_REQUIREMENTSET');

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('CVS_SHAPUR_I_UU_MTN_MOD', 'Amount', 7);
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('CVS_SHAPUR_I_UU_MTN_REQUIREMENTSET', 'REQUIREMENTSET_TEST_ANY');

INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
VALUES	('CVS_SHAPUR_I_UU_MTN_REQUIREMENTSET',	'CVS_SHAPUR_I_UU_ADJ_DESERT_MTN'),
		('CVS_SHAPUR_I_UU_MTN_REQUIREMENTSET',	'CVS_SHAPUR_I_UU_ADJ_PLAINS_MTN'),
		('CVS_SHAPUR_I_UU_MTN_REQUIREMENTSET',	'CVS_SHAPUR_I_UU_ADJ_SNOW_MTN'),
		('CVS_SHAPUR_I_UU_MTN_REQUIREMENTSET',	'CVS_SHAPUR_I_UU_ADJ_TUNDRA_MTN'),
		('CVS_SHAPUR_I_UU_MTN_REQUIREMENTSET',	'CVS_SHAPUR_I_UU_ADJ_GRASS_MTN');

INSERT INTO Requirements
		(RequirementId,						RequirementType)
VALUES	('CVS_SHAPUR_I_UU_ADJ_DESERT_MTN',	'REQUIREMENT_PLOT_ADJACENT_TERRAIN_TYPE_MATCHES'),
		('CVS_SHAPUR_I_UU_ADJ_PLAINS_MTN',	'REQUIREMENT_PLOT_ADJACENT_TERRAIN_TYPE_MATCHES'),
		('CVS_SHAPUR_I_UU_ADJ_SNOW_MTN',	'REQUIREMENT_PLOT_ADJACENT_TERRAIN_TYPE_MATCHES'),
		('CVS_SHAPUR_I_UU_ADJ_TUNDRA_MTN',	'REQUIREMENT_PLOT_ADJACENT_TERRAIN_TYPE_MATCHES'),
		('CVS_SHAPUR_I_UU_ADJ_GRASS_MTN',	'REQUIREMENT_PLOT_ADJACENT_TERRAIN_TYPE_MATCHES');

INSERT INTO RequirementArguments
		(RequirementId,						Name,			Value)
VALUES	('CVS_SHAPUR_I_UU_ADJ_DESERT_MTN',	'TerrainType',	'TERRAIN_DESERT_MOUNTAIN'),
		('CVS_SHAPUR_I_UU_ADJ_DESERT_MTN',	'MinRange',		0),
		('CVS_SHAPUR_I_UU_ADJ_DESERT_MTN',	'MaxRange',		1),
		('CVS_SHAPUR_I_UU_ADJ_PLAINS_MTN',	'TerrainType',	'TERRAIN_PLAINS_MOUNTAIN'),
		('CVS_SHAPUR_I_UU_ADJ_PLAINS_MTN',	'MinRange',		0),
		('CVS_SHAPUR_I_UU_ADJ_PLAINS_MTN',	'MaxRange',		1),
		('CVS_SHAPUR_I_UU_ADJ_SNOW_MTN',	'TerrainType',	'TERRAIN_SNOW_MOUNTAIN'),
		('CVS_SHAPUR_I_UU_ADJ_SNOW_MTN',	'MinRange',		0),
		('CVS_SHAPUR_I_UU_ADJ_SNOW_MTN',	'MaxRange',		1),
		('CVS_SHAPUR_I_UU_ADJ_TUNDRA_MTN',	'TerrainType',	'TERRAIN_TUNDRA_MOUNTAIN'),
		('CVS_SHAPUR_I_UU_ADJ_TUNDRA_MTN',	'MinRange',		0),
		('CVS_SHAPUR_I_UU_ADJ_TUNDRA_MTN',	'MaxRange',		1),
		('CVS_SHAPUR_I_UU_ADJ_GRASS_MTN',	'TerrainType',	'TERRAIN_GRASS_MOUNTAIN'),
		('CVS_SHAPUR_I_UU_ADJ_GRASS_MTN',	'MinRange',		0),
		('CVS_SHAPUR_I_UU_ADJ_GRASS_MTN',	'MaxRange',		1);

INSERT INTO ModifierStrings
		(ModifierId,				Context,	Text)
VALUES	('CVS_SHAPUR_I_UU_MTN_MOD',	'Preview',	'LOC_CVS_SHAPUR_I_UU_MTN_MOD_PREVIEW_TEXT');