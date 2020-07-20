--==========================================================================================================================
-- Districts
--==========================================================================================================================
-- Types
-----------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,									Kind)
VALUES	('DISTRICT_SUK_FLOATINGMARKET',			'KIND_DISTRICT');
-----------------------------------------------------------------------------------
-- Districts
-----------------------------------------------------------------------------------
INSERT INTO Districts
			(DistrictType,						Name,										Description,										TraitType,												Cost,		PrereqTech,		Aqueduct,		PlunderType,		PlunderAmount,		AdvisorType,		CostProgressionModel,		CostProgressionParam1,		RequiresPlacement,		RequiresPopulation,		NoAdjacentCity,		InternalOnly,		ZOC,		CaptureRemovesBuildings,		CaptureRemovesCityDefenses,		MilitaryDomain,		TravelTime,		CityStrengthModifier)
SELECT		'DISTRICT_SUK_FLOATINGMARKET',		'LOC_DISTRICT_SUK_FLOATINGMARKET_NAME',		'LOC_DISTRICT_SUK_FLOATINGMARKET_DESCRIPTION',		'TRAIT_CIVILIZATION_DISTRICT_SUK_FLOATINGMARKET',		Cost/2,		PrereqTech,		Aqueduct,		PlunderType,		PlunderAmount,		AdvisorType,		CostProgressionModel,		CostProgressionParam1,		RequiresPlacement,		RequiresPopulation,		NoAdjacentCity,		InternalOnly,		ZOC,		CaptureRemovesBuildings,		CaptureRemovesCityDefenses,		MilitaryDomain,		TravelTime,		CityStrengthModifier
FROM Districts WHERE DistrictType = 'DISTRICT_COMMERCIAL_HUB';
-----------------------------------------------------------------------------------
-- DistrictReplaces
-----------------------------------------------------------------------------------
INSERT INTO DistrictReplaces
			(CivUniqueDistrictType,					ReplacesDistrictType)
VALUES		('DISTRICT_SUK_FLOATINGMARKET',			'DISTRICT_COMMERCIAL_HUB');
-----------------------------------------------------------------------------------
-- District_GreatPersonPoints
-----------------------------------------------------------------------------------
INSERT INTO District_GreatPersonPoints
			(DistrictType,							GreatPersonClassType,		PointsPerTurn)
SELECT 		'DISTRICT_SUK_FLOATINGMARKET',			GreatPersonClassType,		PointsPerTurn
FROM District_GreatPersonPoints WHERE DistrictType = 'DISTRICT_COMMERCIAL_HUB';
-----------------------------------------------------------------------------------
-- District_TradeRouteYields
-----------------------------------------------------------------------------------
INSERT INTO District_TradeRouteYields
			(DistrictType,							YieldType,	YieldChangeAsOrigin,	YieldChangeAsDomesticDestination,	YieldChangeAsInternationalDestination)
SELECT 		'DISTRICT_SUK_FLOATINGMARKET',			YieldType,	YieldChangeAsOrigin,	YieldChangeAsDomesticDestination,	YieldChangeAsInternationalDestination
FROM District_TradeRouteYields WHERE DistrictType = 'DISTRICT_COMMERCIAL_HUB';
-----------------------------------------------------------------------------------
-- District_ValidTerrains
-----------------------------------------------------------------------------------
INSERT INTO District_ValidTerrains
			(DistrictType,							TerrainType)
SELECT 		'DISTRICT_SUK_FLOATINGMARKET',			TerrainType
FROM District_ValidTerrains WHERE DistrictType = 'DISTRICT_SPACEPORT';
-----------------------------------------------------------------------------------
-- District_Adjacencies
-----------------------------------------------------------------------------------
INSERT INTO District_Adjacencies
			(DistrictType,							YieldChangeId)
SELECT 		'DISTRICT_SUK_FLOATINGMARKET',			YieldChangeId
FROM District_Adjacencies WHERE DistrictType = 'DISTRICT_COMMERCIAL_HUB';
-----------------------------------------------------------------------------------
-- District_CitizenYieldChanges
-----------------------------------------------------------------------------------
INSERT INTO District_CitizenYieldChanges
			(DistrictType,							YieldType,		YieldChange)
SELECT 		'DISTRICT_SUK_FLOATINGMARKET',			YieldType,		YieldChange
FROM District_CitizenYieldChanges WHERE DistrictType = 'DISTRICT_COMMERCIAL_HUB';
-----------------------------------------------------------------------------------
-- DistrictModifiers
-----------------------------------------------------------------------------------
INSERT INTO DistrictModifiers
			(DistrictType,							ModifierId)
SELECT 		'DISTRICT_SUK_FLOATINGMARKET',			ModifierId
FROM DistrictModifiers WHERE DistrictType = 'DISTRICT_COMMERCIAL_HUB';

INSERT INTO DistrictModifiers			
		(DistrictType,						ModifierId)
VALUES	('DISTRICT_SUK_FLOATINGMARKET', 	'SUK_FLOATINGMARKET_LUXURY_GOLD_MODIFIER'),
		('DISTRICT_SUK_FLOATINGMARKET', 	'SUK_FLOATINGMARKET_LUXURY_CULTURE_MODIFIER');
--==========================================================================================================================
-- Modifiers
--==========================================================================================================================
-- Modifiers
-------------------------------------
INSERT INTO Modifiers	
		(ModifierId,												ModifierType,										SubjectRequirementSetId)
VALUES	('SUK_FLOATINGMARKET_LUXURY_GOLD_MODIFIER',					'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',		'SUK_FLOATINGMARKET_PLOT_HAS_LUXURY'),
		('SUK_FLOATINGMARKET_LUXURY_CULTURE_MODIFIER',				'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',		'SUK_FLOATINGMARKET_PLOT_HAS_LUXURY');
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,										Name,						Value)
VALUES	('SUK_FLOATINGMARKET_LUXURY_GOLD_MODIFIER',			'YieldType',				'YIELD_GOLD'),
		('SUK_FLOATINGMARKET_LUXURY_GOLD_MODIFIER',			'Amount',					1),	

		('SUK_FLOATINGMARKET_LUXURY_CULTURE_MODIFIER',		'YieldType',				'YIELD_CULTURE'),
		('SUK_FLOATINGMARKET_LUXURY_CULTURE_MODIFIER',		'Amount',					1);
--==========================================================================================================================
-- Requirements
--==========================================================================================================================
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType)
VALUES	('SUK_FLOATINGMARKET_PLOT_HAS_LUXURY',						'REQUIREMENTSET_TEST_ALL');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,					RequirementId)
VALUES	('SUK_FLOATINGMARKET_PLOT_HAS_LUXURY',				'REQUIRES_PLOT_HAS_LUXURY');
--==========================================================================================================================
--==========================================================================================================================