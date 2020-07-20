-- CVS_CityState_Alamut
-- Authors: SailorCat and thecrazyscotsman
-- DateCreated: 2/5/2018 10:39:20 AM
--------------------------------------------------------------
INSERT INTO THECRAZYSCOTSMAN_DEBUGGING (Document, Marker, Pass) SELECT 'CVS_CityState_Alamut', 'BEGIN', 1;
-----------------------------------------------	
-- Types
-----------------------------------------------
INSERT INTO Types (Type, Kind)
	VALUES	
		('CVS_CIVILIZATION_ALAMUT', 'KIND_CIVILIZATION'),
		('CVS_LEADER_MINOR_CIV_ALAMUT', 'KIND_LEADER'),
		('CVS_MINOR_CIV_ALAMUT_TRAIT', 'KIND_TRAIT'),
		('CVS_RESOURCE_ALAMUT', 'KIND_RESOURCE'),
		('CVS_MODIFIER_ALAMUT_FREE_RESOURCE_IMPORT', 'KIND_MODIFIER');

-----------------------------------------------	
-- TypeProperties
-----------------------------------------------
INSERT INTO TypeProperties (Type, Name, Value)
	VALUES	
		('CVS_CIVILIZATION_ALAMUT', 'CityStateCategory', 'MILITARISTIC');

-----------------------------------------------	
-- Civilizations
-----------------------------------------------
INSERT INTO Civilizations (CivilizationType, Name, Description, Adjective, StartingCivilizationLevelType, RandomCityNameDepth, Ethnicity)
	VALUES
		('CVS_CIVILIZATION_ALAMUT', 'LOC_CVS_CIVILIZATION_ALAMUT_NAME', 'LOC_CVS_CIVILIZATION_ALAMUT_DESCRIPTION', 'LOC_CVS_CIVILIZATION_ALAMUT_ADJECTIVE',	'CIVILIZATION_LEVEL_CITY_STATE', 1, 'ETHNICITY_MEDIT');

-----------------------------------------------	
-- Leaders
-----------------------------------------------
INSERT INTO CivilizationLeaders	(CivilizationType, LeaderType, CapitalName)
	VALUES	
		('CVS_CIVILIZATION_ALAMUT', 'CVS_LEADER_MINOR_CIV_ALAMUT', 'LOC_CITY_NAME_ALAMUT');

INSERT INTO Leaders (LeaderType, Name, InheritFrom)
	VALUES	
		('CVS_LEADER_MINOR_CIV_ALAMUT', 'LOC_CVS_CIVILIZATION_ALAMUT_NAME', 'LEADER_MINOR_CIV_MILITARISTIC');

-----------------------------------------------	
-- City Names
-----------------------------------------------
INSERT INTO CityNames (CivilizationType, CityName)
	VALUES
		('CVS_CIVILIZATION_ALAMUT', 'LOC_CITY_NAME_ALAMUT');

-----------------------------------------------	
-- Player Colors
-----------------------------------------------
INSERT INTO PlayerColors (Type, Usage, PrimaryColor, SecondaryColor, TextColor)
	VALUES
		('CVS_CIVILIZATION_ALAMUT', 'Minor', 'COLOR_PLAYER_CITY_STATE_PRIMARY', 'COLOR_PLAYER_CITY_STATE_MILITARISTIC_SECONDARY', 'COLOR_PLAYER_CITY_STATE_MILITARISTIC_SECONDARY');

-----------------------------------------------	
-- Traits
-----------------------------------------------
INSERT INTO LeaderTraits (LeaderType, TraitType)
	VALUES	
		('CVS_LEADER_MINOR_CIV_ALAMUT',	'CVS_MINOR_CIV_ALAMUT_TRAIT');

INSERT INTO Traits (TraitType, Name, Description)
	VALUES	
		('CVS_MINOR_CIV_ALAMUT_TRAIT', 'LOC_CVS_LEADER_TRAIT_ALAMUT_NAME', 'LOC_CVS_LEADER_TRAIT_ALAMUT_DESCRIPTION');

INSERT INTO TraitModifiers (TraitType, ModifierId)
	VALUES	
		('CVS_MINOR_CIV_ALAMUT_TRAIT', 'CVS_MINOR_CIV_ALAMUT_RES'),
		('CVS_MINOR_CIV_ALAMUT_TRAIT', 'CVS_MINOR_CIV_ALAMUT_RES_MODIFIER');

-----------------------------------------------	
-- Resources
-----------------------------------------------
INSERT INTO Resources (ResourceType, Name, ResourceClassType)
	VALUES
		('CVS_RESOURCE_ALAMUT', 'LOC_CVS_RESOURCE_ALAMUT_NAME', 'RESOURCECLASS_STRATEGIC');	

-----------------------------------------------	
-- DynamicModifiers
-----------------------------------------------
INSERT INTO DynamicModifiers (ModifierType, CollectionType, EffectType)
	VALUES	
		('CVS_MODIFIER_ALAMUT_FREE_RESOURCE_IMPORT', 'COLLECTION_OWNER', 'EFFECT_ADJUST_PLAYER_FREE_RESOURCE_IMPORT');

-----------------------------------------------	
-- Modifiers
-----------------------------------------------
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES	
		('CVS_MINOR_CIV_ALAMUT_RES', 'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER', 'PLAYER_IS_SUZERAIN'),
		('CVS_MINOR_CIV_ALAMUT_RES_MODIFIER', 'CVS_MODIFIER_ALAMUT_FREE_RESOURCE_IMPORT', NULL);

-----------------------------------------------	
-- ModifierArguments
-----------------------------------------------
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES	
		('CVS_MINOR_CIV_ALAMUT_RES', 'ModifierId', 'CVS_MINOR_CIV_ALAMUT_RES_MODIFIER'),
		('CVS_MINOR_CIV_ALAMUT_RES_MODIFIER', 'ResourceType', 'CVS_RESOURCE_ALAMUT'),
		('CVS_MINOR_CIV_ALAMUT_RES_MODIFIER', 'Amount', 2);

-----------------------------------------------	
-- Start Biases
-----------------------------------------------
INSERT INTO StartBiasTerrains (CivilizationType, TerrainType, Tier)
	VALUES
		('CVS_CIVILIZATION_ALAMUT', 'TERRAIN_GRASS_HILLS', 1),
		('CVS_CIVILIZATION_ALAMUT', 'TERRAIN_PLAINS_HILLS', 1),
		('CVS_CIVILIZATION_ALAMUT', 'TERRAIN_DESERT_HILLS', 1),
		('CVS_CIVILIZATION_ALAMUT', 'TERRAIN_GRASS_MOUNTAIN', 2),
		('CVS_CIVILIZATION_ALAMUT', 'TERRAIN_PLAINS_MOUNTAIN', 2),
		('CVS_CIVILIZATION_ALAMUT', 'TERRAIN_DESERT_MOUNTAIN', 2);

INSERT INTO StartBiasResources (CivilizationType, ResourceType, Tier)
	VALUES
		('CVS_CIVILIZATION_ALAMUT', 'RESOURCE_IRON', 3),
		('CVS_CIVILIZATION_ALAMUT', 'RESOURCE_COPPER', 4);

INSERT INTO THECRAZYSCOTSMAN_DEBUGGING (Document, Marker, Pass) SELECT 'CVS_CityState_Alamut', 'END', 1;