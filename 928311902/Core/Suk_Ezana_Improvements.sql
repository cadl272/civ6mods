--==========================================================================================================================
-- IMPROVEMENTS
--==========================================================================================================================
-- Types
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,							Kind)
VALUES	('IMPROVEMENT_SUK_STELE',		'KIND_IMPROVEMENT');		
--------------------------------------------------------------------------------------------------------------------------
-- Improvements
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Improvements	
		(ImprovementType,			Name,								Description,								Icon, 							TraitType, 								PrereqCivic,		SameAdjacentValid,	PlunderType, PlunderAmount, Buildable, Appeal)
SELECT	'IMPROVEMENT_SUK_STELE',	'LOC_IMPROVEMENT_SUK_STELE_NAME',	'LOC_IMPROVEMENT_SUK_STELE_DESCRIPTION',	'ICON_IMPROVEMENT_SUK_STELE',	'TRAIT_LEADER_IMPROVEMENT_SUK_STELE',	'CIVIC_MYSTICISM',	0,					PlunderType, PlunderAmount, Buildable, Appeal
FROM Improvements WHERE ImprovementType = 'IMPROVEMENT_CHATEAU';
-----------------------------------------------------------------------------------
-- Improvement_ValidBuildUnits
-----------------------------------------------------------------------------------
INSERT INTO Improvement_ValidBuildUnits
			(ImprovementType,							UnitType)
VALUES 		('IMPROVEMENT_SUK_STELE',					'UNIT_BUILDER');
-----------------------------------------------------------------------------------
-- Improvement_ValidTerrains
-----------------------------------------------------------------------------------
INSERT INTO Improvement_ValidTerrains
			(ImprovementType,							TerrainType)
VALUES 		('IMPROVEMENT_SUK_STELE',					'TERRAIN_DESERT_HILLS'),
			('IMPROVEMENT_SUK_STELE',					'TERRAIN_TUNDRA_HILLS'),
			('IMPROVEMENT_SUK_STELE',					'TERRAIN_PLAINS_HILLS'),
			('IMPROVEMENT_SUK_STELE',					'TERRAIN_GRASS_HILLS'),
			('IMPROVEMENT_SUK_STELE',					'TERRAIN_SNOW_HILLS');
-----------------------------------------------------------------------------------
-- Improvement_YieldChanges
-----------------------------------------------------------------------------------	
INSERT INTO Improvement_YieldChanges	
		(ImprovementType,				YieldType,						YieldChange)
VALUES	('IMPROVEMENT_SUK_STELE',		'YIELD_CULTURE',				2);
-----------------------------------------------------------------------------------
-- Improvement_BonusYieldChanges
-----------------------------------------------------------------------------------
INSERT INTO Improvement_BonusYieldChanges	
		(ImprovementType,				YieldType,						BonusYieldChange,	PrereqCivic)
VALUES	('IMPROVEMENT_SUK_STELE',		'YIELD_CULTURE',				1,					'CIVIC_NATURAL_HISTORY');
-----------------------------------------------------------------------------------
-- Improvement_Tourism
-----------------------------------------------------------------------------------	
INSERT INTO Improvement_Tourism	
		(ImprovementType,				TourismSource,						PrereqTech,			ScalingFactor)
VALUES	('IMPROVEMENT_SUK_STELE',		'TOURISMSOURCE_CULTURE',			'TECH_FLIGHT',		100);
--==========================================================================================================================
--==========================================================================================================================