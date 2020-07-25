--==========================================================================================================================
-- BUILDINGS
--==========================================================================================================================
-- Types
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,									Kind)
VALUES	('BUILDING_SUK_ROCK_HEWN_CHURCH',		'KIND_BUILDING');
--------------------------------------------------------------------------------------------------------------------------
-- Buildings
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO Buildings
		(BuildingType,						Name,										Description,										PrereqCivic, PrereqDistrict, PurchaseYield, Cost, AdvisorType, Maintenance, CitizenSlots,  TraitType)
SELECT  'BUILDING_SUK_ROCK_HEWN_CHURCH',	'LOC_BUILDING_SUK_ROCK_HEWN_CHURCH_NAME',	'LOC_BUILDING_SUK_ROCK_HEWN_CHURCH_DESCRIPTION',	PrereqCivic, PrereqDistrict, PurchaseYield, Cost, AdvisorType, Maintenance, CitizenSlots,  'TRAIT_CIVILIZATION_BUILDING_SUK_ROCK_HEWN_CHURCH'
FROM Buildings WHERE BuildingType = 'BUILDING_TEMPLE';
-----------------------------------------------------------------------------------
-- BuildingReplaces
-----------------------------------------------------------------------------------
INSERT INTO BuildingReplaces
			(CivUniqueBuildingType,					ReplacesBuildingType)
VALUES		('BUILDING_SUK_ROCK_HEWN_CHURCH',		'BUILDING_TEMPLE');
-----------------------------------------------------------------------------------
-- BuildingPrereqs
-----------------------------------------------------------------------------------
INSERT INTO BuildingPrereqs
			(Building,							PrereqBuilding)
SELECT		'BUILDING_SUK_ROCK_HEWN_CHURCH',	PrereqBuilding
FROM BuildingPrereqs WHERE Building = 'BUILDING_TEMPLE';
-----------------------------------------------------------------------------------
-- Unit_BuildingPrereqs
-----------------------------------------------------------------------------------
INSERT INTO Unit_BuildingPrereqs
			(Unit,	PrereqBuilding)
SELECT		Unit,	'BUILDING_SUK_ROCK_HEWN_CHURCH'
FROM Unit_BuildingPrereqs WHERE PrereqBuilding = 'BUILDING_TEMPLE';
-----------------------------------------------------------------------------------
-- Building_YieldChanges
-----------------------------------------------------------------------------------
INSERT INTO Building_YieldChanges
		(BuildingType,							YieldType,		YieldChange)
SELECT	'BUILDING_SUK_ROCK_HEWN_CHURCH',		YieldType, 		YieldChange
FROM Building_YieldChanges WHERE BuildingType = 'BUILDING_TEMPLE';

INSERT INTO Building_YieldChanges
		(BuildingType,							YieldType,						YieldChange)
VALUES	('BUILDING_SUK_ROCK_HEWN_CHURCH',		'YIELD_PRODUCTION',				3);
-----------------------------------------------------------------------------------
-- Building_GreatPersonPoints
-----------------------------------------------------------------------------------
INSERT INTO Building_GreatPersonPoints
		(BuildingType,							GreatPersonClassType,		PointsPerTurn)
SELECT	'BUILDING_SUK_ROCK_HEWN_CHURCH',		GreatPersonClassType, 		PointsPerTurn
FROM Building_GreatPersonPoints WHERE BuildingType = 'BUILDING_TEMPLE';

INSERT INTO Building_GreatPersonPoints
		(BuildingType,							GreatPersonClassType,			PointsPerTurn)
VALUES	('BUILDING_SUK_ROCK_HEWN_CHURCH',		'GREAT_PERSON_CLASS_ENGINEER',	1);
-----------------------------------------------------------------------------------
-- Building_GreatWorks
-----------------------------------------------------------------------------------
INSERT INTO Building_GreatWorks
		(BuildingType,							GreatWorkSlotType,		NumSlots)
SELECT	'BUILDING_SUK_ROCK_HEWN_CHURCH',		GreatWorkSlotType, 		NumSlots
FROM Building_GreatWorks WHERE BuildingType = 'BUILDING_TEMPLE';
--------------------------------------------------------------------------------------------------------------------------
-- BuildingModifiers
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO BuildingModifiers
			(BuildingType,							ModifierId)
VALUES		('BUILDING_SUK_ROCK_HEWN_CHURCH',		'SUK_ROCK_HEWN_CHURCH_WORSHIP_BUILDING');
-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers
		(ModifierId,									ModifierType,							SubjectRequirementSetId)
VALUES	('SUK_ROCK_HEWN_CHURCH_WORSHIP_BUILDING',		'MODIFIER_BUILDING_YIELD_CHANGE',		'SUK_ROCK_HEWN_CHURCH_HAS_WORSHIP_BUILDING');
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,											Name,				Value)
VALUES	('SUK_ROCK_HEWN_CHURCH_WORSHIP_BUILDING',				'BuildingType',		'BUILDING_SUK_ROCK_HEWN_CHURCH'),
		('SUK_ROCK_HEWN_CHURCH_WORSHIP_BUILDING',				'YieldType',		'YIELD_PRODUCTION'),
		('SUK_ROCK_HEWN_CHURCH_WORSHIP_BUILDING',				'Amount',			2);
-------------------------------------
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,											RequirementSetType)
VALUES	('SUK_ROCK_HEWN_CHURCH_HAS_WORSHIP_BUILDING',				'REQUIREMENTSET_TEST_ANY');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,									RequirementId)
SELECT	'SUK_ROCK_HEWN_CHURCH_HAS_WORSHIP_BUILDING',		'REQUIRES_SUK_ETHIOPIA_CITY_HAS_' || BuildingType
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
		(RequirementId, 									Name,					Value)
SELECT	'REQUIRES_SUK_ETHIOPIA_CITY_HAS_' || BuildingType, 	'BuildingType',			BuildingType
FROM Buildings WHERE EnabledByReligion = 1;
--==========================================================================================================================
--==========================================================================================================================