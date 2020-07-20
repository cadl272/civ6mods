--=============================================
-- DARIUS / Traits
--=============================================
-----------------------------------------------	
-- Types
-----------------------------------------------	
INSERT INTO Types 
		(Type,								Kind)
VALUES	('TRAIT_LEADER_CVS_DARIUS_UA',		'KIND_TRAIT'),
		('DYNMOD_CVS_DARIUS_ROADIES',		'KIND_MODIFIER'),
		('DYNMOD_CVS_DARIUS_AMENITY',		'KIND_MODIFIER');

-----------------------------------------------
-- Traits
-----------------------------------------------
INSERT INTO Traits
		(TraitType,							Name,										Description)
VALUES	('TRAIT_LEADER_CVS_DARIUS_UA',		'LOC_TRAIT_LEADER_CVS_DARIUS_UA_NAME',		'LOC_TRAIT_LEADER_CVS_DARIUS_UA_DESCRIPTION');

-----------------------------------------------
-- LeaderTraits
-----------------------------------------------	
INSERT INTO LeaderTraits	
		(LeaderType,						TraitType)
VALUES	('LEADER_CVS_DARIUS',				'TRAIT_LEADER_CVS_DARIUS_UA');

-----------------------------------------------
-- GovernorPromotionModifiers
-----------------------------------------------
INSERT INTO GovernorPromotionModifiers
		(GovernorPromotionType,			ModifierId)
SELECT	GovernorPromotionType,			'CVS_DARIUS_GOVERNOR_AMENITIES_'||GovernorPromotionType
FROM	GovernorPromotions;

INSERT INTO GovernorPromotionModifiers
		(GovernorPromotionType,			ModifierId)
SELECT	GovernorPromotionType,			'CVS_DARIUS_GOVERNOR_GOLD_'||GovernorPromotionType
FROM	GovernorPromotions;

-----------------------------------------------			
-- Improvement	
-----------------------------------------------	
CREATE TABLE IF NOT EXISTS Sailor_Darius_Roadies (EraType TEXT default NULL, RouteType TEXT default NULL);
INSERT INTO Sailor_Darius_Roadies 
		(EraType,			RouteType)
VALUES	('ERA_ANCIENT',		'ROUTE_MEDIEVAL_ROAD'),
		('ERA_CLASSICAL',	'ROUTE_INDUSTRIAL_ROAD'),
		('ERA_INDUSTRIAL',	'ROUTE_MODERN_ROAD');

INSERT INTO ImprovementModifiers
		(ImprovementType,		ModifierId)
SELECT	ImprovementType,		'CVS_DARIUS_ROADIES_ON_'||a.ImprovementType||'_'||b.EraType
FROM Improvements a, Sailor_Darius_Roadies b WHERE Domain = 'DOMAIN_LAND' AND 
(TraitType IN (SELECT TraitType FROM CivilizationTraits WHERE CivilizationType = 'CIVILIZATION_PERSIA') 
OR TraitType IS NULL 
OR TraitType NOT IN (SELECT TraitType FROM CivilizationTraits WHERE CivilizationType != 'CIVILIZATION_PERSIA'));

-----------------------------------------------			
-- TraitModifiers		
-----------------------------------------------	
INSERT INTO DynamicModifiers 
		(ModifierType,					CollectionType,		EffectType)
VALUES	('DYNMOD_CVS_DARIUS_ROADIES',	'COLLECTION_OWNER', 'EFFECT_GRANT_ROUTE_IN_RADIUS'),
		('DYNMOD_CVS_DARIUS_AMENITY',	'COLLECTION_OWNER', 'EFFECT_ADJUST_POLICY_AMENITY');

-----------------------------------------------
-- Modifiers
-----------------------------------------------
INSERT INTO Modifiers
		(ModifierId,													ModifierType,					OwnerRequirementSetId)
SELECT	'CVS_DARIUS_ROADIES_ON_'||a.ImprovementType||'_'||b.EraType,	'DYNMOD_CVS_DARIUS_ROADIES',	'CVS_IS_DARIUS_'||b.EraType
FROM Improvements a, Sailor_Darius_Roadies b WHERE Domain = 'DOMAIN_LAND' AND 
(TraitType IN (SELECT TraitType FROM CivilizationTraits WHERE CivilizationType = 'CIVILIZATION_PERSIA') 
OR TraitType IS NULL 
OR TraitType NOT IN (SELECT TraitType FROM CivilizationTraits WHERE CivilizationType != 'CIVILIZATION_PERSIA'));

INSERT INTO Modifiers
		(ModifierId,												ModifierType,					OwnerRequirementSetId)
SELECT	'CVS_DARIUS_GOVERNOR_AMENITIES_'||GovernorPromotionType,	'DYNMOD_CVS_DARIUS_AMENITY',	'CVS_IS_DARIUS_REQUIREMENTS'
FROM	GovernorPromotions;

INSERT INTO Modifiers
		(ModifierId,											ModifierType,										OwnerRequirementSetId)
SELECT	'CVS_DARIUS_GOVERNOR_GOLD_'||GovernorPromotionType,		'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',	'CVS_IS_DARIUS_REQUIREMENTS'
FROM	GovernorPromotions;

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,													Name,				Value)
SELECT	'CVS_DARIUS_ROADIES_ON_'||a.ImprovementType||'_'||b.EraType,	'RouteType',		b.RouteType AS Value
FROM Improvements a, Sailor_Darius_Roadies b WHERE Domain = 'DOMAIN_LAND' AND 
(TraitType IN (SELECT TraitType FROM CivilizationTraits WHERE CivilizationType = 'CIVILIZATION_PERSIA') 
OR TraitType IS NULL 
OR TraitType NOT IN (SELECT TraitType FROM CivilizationTraits WHERE CivilizationType != 'CIVILIZATION_PERSIA'));

INSERT INTO ModifierArguments
		(ModifierId,													Name,				Value)
SELECT	'CVS_DARIUS_ROADIES_ON_'||a.ImprovementType||'_'||b.EraType,	'Radius',			1
FROM Improvements a, Sailor_Darius_Roadies b WHERE Domain = 'DOMAIN_LAND' AND 
(TraitType IN (SELECT TraitType FROM CivilizationTraits WHERE CivilizationType = 'CIVILIZATION_PERSIA') 
OR TraitType IS NULL 
OR TraitType NOT IN (SELECT TraitType FROM CivilizationTraits WHERE CivilizationType != 'CIVILIZATION_PERSIA'));

INSERT INTO ModifierArguments
		(ModifierId,												Name,				Value)
SELECT	'CVS_DARIUS_GOVERNOR_AMENITIES_'||GovernorPromotionType,	'Amount',			1
FROM	GovernorPromotions;

INSERT INTO ModifierArguments
		(ModifierId,												Name,				Value)
SELECT	'CVS_DARIUS_GOVERNOR_GOLD_'||GovernorPromotionType,			'Amount',			5
FROM	GovernorPromotions;

INSERT INTO ModifierArguments
		(ModifierId,												Name,				Value)
SELECT	'CVS_DARIUS_GOVERNOR_GOLD_'||GovernorPromotionType,			'YieldType',		'YIELD_GOLD'
FROM	GovernorPromotions;


-----------------------------------------------		
-- RequirementSets
-----------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,					RequirementSetType)
VALUES	('CVS_IS_DARIUS_REQUIREMENTS',		'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSets
		(RequirementSetId,					RequirementSetType)
SELECT	'CVS_IS_DARIUS_'||EraType,			'REQUIREMENTSET_TEST_ALL'
FROM Sailor_Darius_Roadies;
-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,					RequirementId)
VALUES	('CVS_IS_DARIUS_REQUIREMENTS',		'CVS_DARIUS_REQUIRES_DARIUS');

INSERT INTO RequirementSetRequirements
		(RequirementSetId,					RequirementId)
SELECT	'CVS_IS_DARIUS_'||EraType,			'CVS_DARIUS_REQUIRES_DARIUS'
FROM Sailor_Darius_Roadies;

INSERT INTO RequirementSetRequirements
		(RequirementSetId,					RequirementId)
SELECT	'CVS_IS_DARIUS_'||EraType,			'CVS_DARIUS_REQUIRES_'||EraType
FROM Sailor_Darius_Roadies;

-----------------------------------------------
-- Requirements
-----------------------------------------------
INSERT INTO Requirements
		(RequirementId,						RequirementType)
VALUES	('CVS_DARIUS_REQUIRES_DARIUS',		'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES');

INSERT INTO Requirements
		(RequirementId,						RequirementType)
SELECT	'CVS_DARIUS_REQUIRES_'||EraType,	'REQUIREMENT_PLAYER_ERA_AT_LEAST'
FROM Sailor_Darius_Roadies;

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
INSERT INTO RequirementArguments 
		(RequirementId,					Name,				Value) 
VALUES	('CVS_DARIUS_REQUIRES_DARIUS',	'LeaderType',		'LEADER_CVS_DARIUS');

INSERT INTO RequirementArguments 
		(RequirementId,						Name,			Value) 
SELECT	'CVS_DARIUS_REQUIRES_'||EraType,	'EraType',		EraType
FROM Sailor_Darius_Roadies;