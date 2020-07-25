--==========================================================================================================================
-- TRAITS
--==========================================================================================================================
-- Traits
-------------------------------------
UPDATE Traits
	SET Description = 'LOC_TRAIT_CIVILIZATION_ETHIOPIA_DESCRIPTION_SUK_REWORK'
	WHERE TraitType = 'TRAIT_CIVILIZATION_ETHIOPIA';
-------------------------------------
-- TraitModifiers
-------------------------------------
DELETE FROM TraitModifiers
	WHERE TraitType = 'TRAIT_CIVILIZATION_ETHIOPIA'
	AND ModifierId IN ('TRAIT_FAITH_ARCHAEOLOGIST', 'TRAIT_FAITH_MUSEUM_ARTIFACT');
--=================================================================================
-- May purchase Traders with [ICON_Faith] Faith in cities with a Shrine
-- Builders in cities with a Temple.
-- Settlers in cities with a Worship Building.
-----------------------------------------------------------------------------------
-- TraitModifiers
-------------------------------------
INSERT INTO TraitModifiers
		(TraitType,								ModifierId)
VALUES	('TRAIT_CIVILIZATION_ETHIOPIA',			'TRAIT_CIVILIZATION_ETHIOPIA_SUK_TRADER'),
		('TRAIT_CIVILIZATION_ETHIOPIA',			'TRAIT_CIVILIZATION_ETHIOPIA_SUK_BUILDER'),
		('TRAIT_CIVILIZATION_ETHIOPIA',			'TRAIT_CIVILIZATION_ETHIOPIA_SUK_SETTLER');
-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers
		(ModifierId,									ModifierType,											OwnerRequirementSetId,	SubjectRequirementSetId)
VALUES	('TRAIT_CIVILIZATION_ETHIOPIA_SUK_TRADER',		'MODIFIER_PLAYER_CITIES_ENABLE_UNIT_FAITH_PURCHASE',	'ON_TURN_STARTED',		'TRAIT_CIVILIZATION_ETHIOPIA_SUK_TRADER_REQS'),
		('TRAIT_CIVILIZATION_ETHIOPIA_SUK_BUILDER',		'MODIFIER_PLAYER_CITIES_ENABLE_UNIT_FAITH_PURCHASE',	'ON_TURN_STARTED',		'TRAIT_CIVILIZATION_ETHIOPIA_SUK_BUILDER_REQS'),
		('TRAIT_CIVILIZATION_ETHIOPIA_SUK_SETTLER',		'MODIFIER_PLAYER_CITIES_ENABLE_UNIT_FAITH_PURCHASE',	'ON_TURN_STARTED',		'TRAIT_CIVILIZATION_ETHIOPIA_SUK_SETTLER_REQS');
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,											Name,				Value)
VALUES	('TRAIT_CIVILIZATION_ETHIOPIA_SUK_TRADER',				'Tag',				'CLASS_TRADER'),
		('TRAIT_CIVILIZATION_ETHIOPIA_SUK_BUILDER',				'Tag',				'CLASS_BUILDER'),
		('TRAIT_CIVILIZATION_ETHIOPIA_SUK_SETTLER',				'Tag',				'CLASS_SETTLER');
-------------------------------------
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,										RequirementSetType)
VALUES	('TRAIT_CIVILIZATION_ETHIOPIA_SUK_TRADER_REQS',			'REQUIREMENTSET_TEST_ALL'),
		('TRAIT_CIVILIZATION_ETHIOPIA_SUK_BUILDER_REQS',		'REQUIREMENTSET_TEST_ALL'),
		('TRAIT_CIVILIZATION_ETHIOPIA_SUK_SETTLER_REQS',		'REQUIREMENTSET_TEST_ANY');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,										RequirementId)
VALUES	('TRAIT_CIVILIZATION_ETHIOPIA_SUK_TRADER_REQS',			'REQUIRES_CITY_HAS_SHRINE'),
		('TRAIT_CIVILIZATION_ETHIOPIA_SUK_BUILDER_REQS',		'REQUIRES_CITY_HAS_TEMPLE');

INSERT INTO RequirementSetRequirements
		(RequirementSetId,										RequirementId)
SELECT	'TRAIT_CIVILIZATION_ETHIOPIA_SUK_SETTLER_REQS',			'REQUIRES_SUK_ETHIOPIA_CITY_HAS_' || BuildingType
FROM Buildings WHERE EnabledByReligion = 1;
-------------------------------------
-- Requirements
-------------------------------------
INSERT INTO Requirements
		(RequirementId, 										RequirementType)
SELECT	'REQUIRES_SUK_ETHIOPIA_CITY_HAS_' || BuildingType,		'REQUIREMENT_CITY_HAS_BUILDING'
FROM Buildings WHERE EnabledByReligion = 1;
-------------------------------------
-- RequirementArguments
-------------------------------------
INSERT INTO RequirementArguments
		(RequirementId, 										Name,					Value)
SELECT	'REQUIRES_SUK_ETHIOPIA_CITY_HAS_' || BuildingType, 		'BuildingType',			BuildingType
FROM Buildings WHERE EnabledByReligion = 1;
--==========================================================================================================================
--==========================================================================================================================