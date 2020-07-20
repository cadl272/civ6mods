-- CVS_CityState_Urgench
-- Author: SailorCat and thecrazyscotsman
-- DateCreated: 2/5/2018 10:39:32 AM
--------------------------------------------------------------
INSERT INTO THECRAZYSCOTSMAN_DEBUGGING (Document, Marker, Pass) SELECT 'CVS_CityState_Urgench', 'BEGIN', 1;
-----------------------------------------------	
-- Types
-----------------------------------------------
INSERT INTO Types (Type, Kind)
	VALUES	
		('CVS_CIVILIZATION_URGENCH', 'KIND_CIVILIZATION'),
		('CVS_LEADER_MINOR_CIV_URGENCH', 'KIND_LEADER'),
		('CVS_MINOR_CIV_URGENCH_TRAIT', 'KIND_TRAIT'),
		('CVS_MODIFIER_URGENCH_TRADE_ROUTE_CAPACITY', 'KIND_MODIFIER'),
		('CVS_MODIFIER_URGENCH_PLAYER_DISTRICTS_ATTACH_MODIFIER', 'KIND_MODIFIER');

INSERT INTO TypeProperties (Type, Name, Value)
	VALUES
		('CVS_CIVILIZATION_URGENCH', 'CityStateCategory', 'CULTURAL');

-----------------------------------------------	
-- Civilizations
-----------------------------------------------
INSERT INTO Civilizations (CivilizationType, Name, Description, Adjective, StartingCivilizationLevelType, RandomCityNameDepth, Ethnicity)
	VALUES
		('CVS_CIVILIZATION_URGENCH', 'LOC_CVS_CIVILIZATION_URGENCH_NAME', 'LOC_CVS_CIVILIZATION_URGENCH_DESCRIPTION', 'LOC_CVS_CIVILIZATION_URGENCH_ADJECTIVE', 'CIVILIZATION_LEVEL_CITY_STATE', 1, 'ETHNICITY_MEDIT');

-----------------------------------------------	
-- Leaders
-----------------------------------------------
INSERT INTO CivilizationLeaders (CivilizationType, LeaderType, CapitalName)
	VALUES
		('CVS_CIVILIZATION_URGENCH', 'CVS_LEADER_MINOR_CIV_URGENCH', 'LOC_CITY_NAME_URGENCH');

INSERT INTO Leaders (LeaderType, Name, InheritFrom)
	VALUES
		('CVS_LEADER_MINOR_CIV_URGENCH', 'LOC_CVS_CIVILIZATION_URGENCH_NAME', 'LEADER_MINOR_CIV_CULTURAL');

-----------------------------------------------	
-- City Names
-----------------------------------------------
INSERT INTO CityNames (CivilizationType, CityName)
	VALUES
		('CVS_CIVILIZATION_URGENCH', 'LOC_CITY_NAME_URGENCH');

-----------------------------------------------	
-- Player Colors
-----------------------------------------------
INSERT INTO PlayerColors (Type, Usage, PrimaryColor, SecondaryColor, TextColor)
	VALUES
		('CVS_CIVILIZATION_URGENCH', 'Minor', 'COLOR_PLAYER_CITY_STATE_PRIMARY', 'COLOR_PLAYER_CITY_STATE_CULTURAL_SECONDARY', 'COLOR_PLAYER_CITY_STATE_CULTURAL_SECONDARY');

-----------------------------------------------	
-- Traits
-----------------------------------------------
INSERT INTO LeaderTraits (LeaderType, TraitType)
	VALUES
		('CVS_LEADER_MINOR_CIV_URGENCH', 'CVS_MINOR_CIV_URGENCH_TRAIT');

INSERT INTO Traits (TraitType, Name, Description)
	VALUES
		('CVS_MINOR_CIV_URGENCH_TRAIT', 'LOC_CVS_LEADER_TRAIT_URGENCH_NAME', 'LOC_CVS_LEADER_TRAIT_URGENCH_DESCRIPTION');

INSERT INTO TraitModifiers (TraitType, ModifierId)
	VALUES
		('CVS_MINOR_CIV_URGENCH_TRAIT', 'CVS_MINOR_CIV_URGENCH_UNIQUE_BONUS');

-----------------------------------------------	
-- DynamicModifiers
-----------------------------------------------
INSERT INTO DynamicModifiers (ModifierType, CollectionType, EffectType)
	VALUES	
		('CVS_MODIFIER_URGENCH_TRADE_ROUTE_CAPACITY', 'COLLECTION_OWNER', 'EFFECT_ADJUST_TRADE_ROUTE_CAPACITY'),
		('CVS_MODIFIER_URGENCH_PLAYER_DISTRICTS_ATTACH_MODIFIER', 'COLLECTION_PLAYER_DISTRICTS', 'EFFECT_ATTACH_MODIFIER');

-----------------------------------------------	
-- Modifiers
-----------------------------------------------
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES	
		('CVS_MINOR_CIV_URGENCH_UNIQUE_BONUS', 'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',	'PLAYER_IS_SUZERAIN'),
		('CVS_MINOR_CIV_URGENCH_DESERT_TRADE', 'CVS_MODIFIER_URGENCH_PLAYER_DISTRICTS_ATTACH_MODIFIER', 'CVS_URGENCH_CITY_CENTER_ON_DESERT_REQUIREMENTSET'),
		('CVS_MINOR_CIV_URGENCH_DESERT_TRADE_MODIFIER',	'CVS_MODIFIER_URGENCH_TRADE_ROUTE_CAPACITY', NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES	
		('CVS_MINOR_CIV_URGENCH_UNIQUE_BONUS', 'ModifierId', 'CVS_MINOR_CIV_URGENCH_DESERT_TRADE'),
		('CVS_MINOR_CIV_URGENCH_DESERT_TRADE', 'ModifierId', 'CVS_MINOR_CIV_URGENCH_DESERT_TRADE_MODIFIER'),
		('CVS_MINOR_CIV_URGENCH_DESERT_TRADE_MODIFIER',	'Amount', 1);

-----------------------------------------------	
-- Requirements
-----------------------------------------------
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)
	VALUES	
		('CVS_URGENCH_CITY_CENTER_ON_DESERT_REQUIREMENTSET', 'REQUIREMENTSET_TEST_ALL'),
		('CVS_URGENCH_PLOT_IS_DESERT_REQUIREMENTSET', 'REQUIREMENTSET_TEST_ANY');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
	VALUES	
		('CVS_URGENCH_CITY_CENTER_ON_DESERT_REQUIREMENTSET', 'CVS_URGENCH_REQUIRES_CITY_CENTER'),
		('CVS_URGENCH_CITY_CENTER_ON_DESERT_REQUIREMENTSET', 'CVS_URGENCH_REQUIRES_PLOT_IS_DESERT_REQUIREMENTSET'),
		('CVS_URGENCH_PLOT_IS_DESERT_REQUIREMENTSET', 'CVS_URGENCH_REQUIRES_DESERT'),
		('CVS_URGENCH_PLOT_IS_DESERT_REQUIREMENTSET', 'CVS_URGENCH_REQUIRES_DESERT_HILLS');

INSERT INTO Requirements (RequirementId, RequirementType)
	VALUES	
		('CVS_URGENCH_REQUIRES_CITY_CENTER', 'REQUIREMENT_DISTRICT_TYPE_MATCHES'),
		('CVS_URGENCH_REQUIRES_PLOT_IS_DESERT_REQUIREMENTSET', 'REQUIREMENT_REQUIREMENTSET_IS_MET'),
		('CVS_URGENCH_REQUIRES_DESERT', 'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES'),
		('CVS_URGENCH_REQUIRES_DESERT_HILLS', 'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES');

INSERT INTO RequirementArguments (RequirementId, Name, Value)
	VALUES	
		('CVS_URGENCH_REQUIRES_CITY_CENTER', 'DistrictType', 'DISTRICT_CITY_CENTER'),
		('CVS_URGENCH_REQUIRES_PLOT_IS_DESERT_REQUIREMENTSET', 'RequirementSetId', 'CVS_URGENCH_PLOT_IS_DESERT_REQUIREMENTSET'),
		('CVS_URGENCH_REQUIRES_DESERT', 'TerrainType', 'TERRAIN_DESERT'),
		('CVS_URGENCH_REQUIRES_DESERT_HILLS', 'TerrainType', 'TERRAIN_DESERT_HILLS');

-----------------------------------------------	
-- Start Biases
-----------------------------------------------
INSERT INTO StartBiasRivers (CivilizationType, Tier)
	VALUES
		('CVS_CIVILIZATION_URGENCH', 1);

INSERT INTO StartBiasTerrains (CivilizationType, TerrainType, Tier)
	VALUES
		('CVS_CIVILIZATION_URGENCH', 'TERRAIN_DESERT', 2),
		('CVS_CIVILIZATION_URGENCH', 'TERRAIN_DESERT_HILLS', 2);

INSERT INTO StartBiasFeatures (CivilizationType, FeatureType, Tier)
	VALUES
		('CVS_CIVILIZATION_URGENCH', 'FEATURE_FLOODPLAINS', 3),
		('CVS_CIVILIZATION_URGENCH', 'FEATURE_OASIS', 3);

INSERT INTO StartBiasResources (CivilizationType, ResourceType, Tier)
	VALUES
		('CVS_CIVILIZATION_URGENCH', 'RESOURCE_WHEAT', 4);

INSERT INTO THECRAZYSCOTSMAN_DEBUGGING (Document, Marker, Pass) SELECT 'CVS_CityState_Urgench', 'END', 1;