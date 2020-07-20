-- Suk_SiamRamkhamhaeng_Expansion2
-- Author: Sukrit
--==========================================================================================================================
-- Update UA to use MODIFIER_PLAYER_CITIES_ADJUST_TRAIT_AMENITY
--==========================================================================================================================
UPDATE Modifiers
SET ModifierType = 'MODIFIER_PLAYER_CITIES_ADJUST_TRAIT_AMENITY'
WHERE ModifierId = 'SUK_SRI_AYUTTHAYA_RIVER_AMENITY';
--==========================================================================================================================
-- +1 [ICON_Culture] Culture, +1 [ICON_Gold] Gold from Luxury Resources worked by this City.
-- This bonus is doubled to +2 [ICON_Culture] Culture, +2 [ICON_Gold] Gold if this district was built on Floodplains.
--==========================================================================================================================
UPDATE Districts
SET Description = 'LOC_DISTRICT_SUK_FLOATINGMARKET_EXPANSION_2_DESCRIPTION'
WHERE DistrictType = 'DISTRICT_SUK_FLOATINGMARKET';
--==========================================================================================================================
-- Modifiers
--==========================================================================================================================
-- Modifiers
-------------------------------------
INSERT OR REPLACE INTO Modifiers
		(ModifierId,												ModifierType,										OwnerRequirementSetId,							SubjectRequirementSetId)
VALUES	('SUK_FLOATINGMARKET_LUXURY_GOLD_FLOODPLAINS_MODIFIER',		'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',		'SUK_FLOATINGMARKET_PLOT_HAS_FLOODPLAINS',		'SUK_FLOATINGMARKET_PLOT_HAS_LUXURY'),
		('SUK_FLOATINGMARKET_LUXURY_CULTURE_MODIFIER',				'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',		'PLOT_ADJACENT_TO_RIVER_REQUIREMENTS',			'SUK_FLOATINGMARKET_PLOT_HAS_LUXURY');
-------------------------------------
-- DistrictModifiers
-------------------------------------
INSERT OR REPLACE INTO DistrictModifiers			
		(DistrictType,						ModifierId)
VALUES	('DISTRICT_SUK_FLOATINGMARKET', 	'SUK_FLOATINGMARKET_LUXURY_GOLD_FLOODPLAINS_MODIFIER'),
		('DISTRICT_SUK_FLOATINGMARKET', 	'SUK_FLOATINGMARKET_LUXURY_CULTURE_MODIFIER');
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT OR REPLACE INTO ModifierArguments
		(ModifierId,													Name,						Value)
VALUES	('SUK_FLOATINGMARKET_LUXURY_GOLD_FLOODPLAINS_MODIFIER',			'YieldType',				'YIELD_GOLD'),
		('SUK_FLOATINGMARKET_LUXURY_GOLD_FLOODPLAINS_MODIFIER',			'Amount',					1),

		('SUK_FLOATINGMARKET_LUXURY_CULTURE_MODIFIER',		'YieldType',				'YIELD_CULTURE'),
		('SUK_FLOATINGMARKET_LUXURY_CULTURE_MODIFIER',		'Amount',					1);
----------------------------------------------------------------------------------------------------------------------------
-- Requirements
----------------------------------------------------------------------------------------------------------------------------
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,											RequirementSetType)
VALUES	('SUK_FLOATINGMARKET_PLOT_HAS_FLOODPLAINS',					'REQUIREMENTSET_TEST_ANY');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,										RequirementId)
VALUES	('SUK_FLOATINGMARKET_PLOT_HAS_FLOODPLAINS',				'REQUIRES_PLOT_HAS_FLOODPLAINS'),
		('SUK_FLOATINGMARKET_PLOT_HAS_FLOODPLAINS',				'REQUIRES_SUK_FLOATINGMARKET_PLOT_HAS_FLOODPLAINS_GRASSLAND'),
		('SUK_FLOATINGMARKET_PLOT_HAS_FLOODPLAINS',				'REQUIRES_SUK_FLOATINGMARKET_PLOT_HAS_FLOODPLAINS_PLAINS');
-------------------------------------
-- Requirements
-------------------------------------
INSERT INTO Requirements
		(RequirementId, 														RequirementType)
VALUES	('REQUIRES_SUK_FLOATINGMARKET_PLOT_HAS_FLOODPLAINS_GRASSLAND',			'REQUIREMENT_PLOT_FEATURE_TYPE_MATCHES'),
		('REQUIRES_SUK_FLOATINGMARKET_PLOT_HAS_FLOODPLAINS_PLAINS',				'REQUIREMENT_PLOT_FEATURE_TYPE_MATCHES');
-------------------------------------
-- RequirementArguments
-------------------------------------
INSERT INTO RequirementArguments
		(RequirementId, 														Name,					Value)
VALUES	('REQUIRES_SUK_FLOATINGMARKET_PLOT_HAS_FLOODPLAINS_GRASSLAND', 			'FeatureType',			'FEATURE_FLOODPLAINS_GRASSLAND'),
		('REQUIRES_SUK_FLOATINGMARKET_PLOT_HAS_FLOODPLAINS_PLAINS', 			'FeatureType',			'FEATURE_FLOODPLAINS_PLAINS');
--==========================================================================================================================
-- Change Start Bias to Floodplains
--==========================================================================================================================
DELETE FROM StartBiasTerrains 
WHERE CivilizationType = 'CIVILIZATION_SUK_SIAM';
-------------------------------------			
-- StartBiasFeatures			
-------------------------------------	
INSERT INTO StartBiasFeatures	
		(CivilizationType,					FeatureType,						Tier)
VALUES	('CIVILIZATION_SUK_SIAM',			'FEATURE_FLOODPLAINS_GRASSLAND',	2),
		('CIVILIZATION_SUK_SIAM',			'FEATURE_FLOODPLAINS_PLAINS',		2);
-------------------------------------			
-- StartBiasRivers			
-------------------------------------
UPDATE StartBiasRivers
SET Tier = 5
WHERE CivilizationType = 'CIVILIZATION_SUK_SIAM';		
--==========================================================================================================================
											-- NAMED PLACES --
--==========================================================================================================================
-- Types
--------------------------------------------------------------------
INSERT OR REPLACE INTO Types
		(Type,										Kind)
VALUES	("NAMED_RIVER_CHAO_PHRAYA",					"KIND_NAMED_RIVER"),
		("NAMED_RIVER_PING",						"KIND_NAMED_RIVER"),
		("NAMED_RIVER_NAN",							"KIND_NAMED_RIVER"),
		("NAMED_RIVER_WANG",						"KIND_NAMED_RIVER"),
		("NAMED_RIVER_YOM",							"KIND_NAMED_RIVER"),
		("NAMED_RIVER_PA_SAK",						"KIND_NAMED_RIVER"),
		("NAMED_RIVER_MUN",							"KIND_NAMED_RIVER"),
		("NAMED_MOUNTAIN_DAEN_LAO",					"KIND_NAMED_MOUNTAIN"),
		("NAMED_MOUNTAIN_LUANG_PRABANG",			"KIND_NAMED_MOUNTAIN"),
		("NAMED_MOUNTAIN_THANON_THONG_CHAI",		"KIND_NAMED_MOUNTAIN"),
		("NAMED_MOUNTAIN_PHI_PAN_NAM",				"KIND_NAMED_MOUNTAIN"),
		("NAMED_MOUNTAIN_PETCHABUN",				"KIND_NAMED_MOUNTAIN"),
		("NAMED_MOUNTAIN_SANKHAMPHAENG",			"KIND_NAMED_MOUNTAIN"),
		("NAMED_MOUNTAIN_BANTHAT",					"KIND_NAMED_MOUNTAIN"),
		("NAMED_MOUNTAIN_SANKALAKHIRI",				"KIND_NAMED_MOUNTAIN"),
		("NAMED_MOUNTAIN_TENASSERIM",				"KIND_NAMED_MOUNTAIN"),
		("NAMED_VOLCANO_DOI_PHA_KHOK_HIN_FUU",		"KIND_NAMED_VOLCANO");

INSERT OR REPLACE INTO Types
		(Type,								Kind)
VALUES	("NAMED_LAKE_BUENG_BORAPHET",		"KIND_NAMED_LAKE"),
		("NAMED_LAKE_SONGKHLA",				"KIND_NAMED_LAKE"),
		("NAMED_LAKE_PHAYAO",				"KIND_NAMED_LAKE"),
		("NAMED_LAKE_NONG_HAN",				"KIND_NAMED_LAKE"),
		("NAMED_SEA_KRUNG_THEP_BAY",		"KIND_NAMED_SEA"),
		("NAMED_SEA_PHANG_NGA_BAY",			"KIND_NAMED_SEA"),
		("NAMED_SEA_PRACHUAP_BAY",			"KIND_NAMED_SEA"),
		("NAMED_SEA_SATTAHIP_BAY",			"KIND_NAMED_SEA"),
		("NAMED_SEA_BANDON_BAY",			"KIND_NAMED_SEA"),
		("NAMED_SEA_MANAO_BAY",				"KIND_NAMED_SEA");		
--------------------------------------------------------------------
-- NamedRivers
--------------------------------------------------------------------
INSERT OR REPLACE INTO NamedRivers
		(NamedRiverType,				Name)
VALUES	("NAMED_RIVER_CHAO_PHRAYA",		"LOC_NAMED_RIVER_CHAO_PHRAYA_NAME"),
		("NAMED_RIVER_PING",			"LOC_NAMED_RIVER_PING_NAME"),
		("NAMED_RIVER_NAN",				"LOC_NAMED_RIVER_NAN_NAME"),
		("NAMED_RIVER_WANG",			"LOC_NAMED_RIVER_WANG_NAME"),
		("NAMED_RIVER_YOM",				"LOC_NAMED_RIVER_YOM_NAME"),
		("NAMED_RIVER_PA_SAK",			"LOC_NAMED_RIVER_PA_SAK_NAME"),
		("NAMED_RIVER_MUN",				"LOC_NAMED_RIVER_MUN_NAME");
--------------------------------------------------------------------
-- NamedMountains
--------------------------------------------------------------------
INSERT OR REPLACE INTO NamedMountains
		(NamedMountainType,						Name)
VALUES	("NAMED_MOUNTAIN_DAEN_LAO",				"LOC_NAMED_MOUNTAIN_DAEN_LAO_NAME"),
		("NAMED_MOUNTAIN_LUANG_PRABANG",		"LOC_NAMED_MOUNTAIN_LUANG_PRABANG_NAME"),
		("NAMED_MOUNTAIN_THANON_THONG_CHAI",	"LOC_NAMED_MOUNTAIN_THANON_THONG_CHAI_NAME"),
		("NAMED_MOUNTAIN_PHI_PAN_NAM",			"LOC_NAMED_MOUNTAIN_PHI_PAN_NAM_NAME"),
		("NAMED_MOUNTAIN_PETCHABUN",			"LOC_NAMED_MOUNTAIN_PETCHABUN_NAME"),
		("NAMED_MOUNTAIN_SANKHAMPHAENG",		"LOC_NAMED_MOUNTAIN_SANKHAMPHAENG_NAME"),
		("NAMED_MOUNTAIN_BANTHAT",				"LOC_NAMED_MOUNTAIN_BANTHAT_NAME"),
		("NAMED_MOUNTAIN_SANKALAKHIRI",			"LOC_NAMED_MOUNTAIN_SANKALAKHIRI_NAME"),
		("NAMED_MOUNTAIN_TENASSERIM",			"LOC_NAMED_MOUNTAIN_TENASSERIM_NAME");
--------------------------------------------------------------------
-- NamedVolcanoes
--------------------------------------------------------------------
INSERT OR REPLACE INTO NamedVolcanoes
		(NamedVolcanoType,							Name)
VALUES	("NAMED_VOLCANO_DOI_PHA_KHOK_HIN_FUU",		"LOC_NAMED_VOLCANO_DOI_PHA_KHOK_HIN_FUU_NAME");
--------------------------------------------------------------------
-- NamedRiverCivilizations
--------------------------------------------------------------------
INSERT OR REPLACE INTO NamedRiverCivilizations
		(NamedRiverType,				CivilizationType)
VALUES	("NAMED_RIVER_CHAO_PHRAYA",		"CIVILIZATION_SUK_SIAM"),
		("NAMED_RIVER_PING",			"CIVILIZATION_SUK_SIAM"),
		("NAMED_RIVER_NAN",				"CIVILIZATION_SUK_SIAM"),
		("NAMED_RIVER_WANG",			"CIVILIZATION_SUK_SIAM"),
		("NAMED_RIVER_YOM",				"CIVILIZATION_SUK_SIAM"),
		("NAMED_RIVER_PA_SAK",			"CIVILIZATION_SUK_SIAM"),
		("NAMED_RIVER_MUN",				"CIVILIZATION_SUK_SIAM"),
		
		("NAMED_RIVER_MEKONG",			"CIVILIZATION_SUK_SIAM");
--------------------------------------------------------------------
-- NamedMountainCivilizations
--------------------------------------------------------------------
INSERT OR REPLACE INTO NamedMountainCivilizations
		(NamedMountainType,						CivilizationType)
VALUES	("NAMED_MOUNTAIN_DAEN_LAO",				"CIVILIZATION_SUK_SIAM"),
		("NAMED_MOUNTAIN_LUANG_PRABANG",		"CIVILIZATION_SUK_SIAM"),
		("NAMED_MOUNTAIN_THANON_THONG_CHAI",	"CIVILIZATION_SUK_SIAM"),
		("NAMED_MOUNTAIN_PHI_PAN_NAM",			"CIVILIZATION_SUK_SIAM"),
		("NAMED_MOUNTAIN_PETCHABUN",			"CIVILIZATION_SUK_SIAM"),
		("NAMED_MOUNTAIN_SANKHAMPHAENG",		"CIVILIZATION_SUK_SIAM"),
		("NAMED_MOUNTAIN_BANTHAT",				"CIVILIZATION_SUK_SIAM"),
		("NAMED_MOUNTAIN_SANKALAKHIRI",			"CIVILIZATION_SUK_SIAM"),
		("NAMED_MOUNTAIN_TENASSERIM",			"CIVILIZATION_SUK_SIAM"),

		("NAMED_MOUNTAIN_DANGREK_MOUNTAINS",	"CIVILIZATION_SUK_SIAM");
--------------------------------------------------------------------
-- NamedVolcanoCivilizations
--------------------------------------------------------------------
INSERT OR REPLACE INTO NamedVolcanoCivilizations
		(NamedVolcanoType,							CivilizationType)
VALUES	("NAMED_VOLCANO_DOI_PHA_KHOK_HIN_FUU",		"CIVILIZATION_SUK_SIAM"),

		("NAMED_VOLCANO_PHANOM_RUNG_VOLCANO",		"CIVILIZATION_SUK_SIAM");
--------------------------------------------------------------------
-- NamedLakes
--------------------------------------------------------------------
INSERT OR REPLACE INTO NamedLakes
		(NamedLakeType,						Name)
VALUES	("NAMED_LAKE_BUENG_BORAPHET",		"LOC_NAMED_LAKE_BUENG_BORAPHET_NAME"),
		("NAMED_LAKE_SONGKHLA",				"LOC_NAMED_LAKE_SONGKHLA_NAME"),
		("NAMED_LAKE_PHAYAO",				"LOC_NAMED_LAKE_PHAYAO_NAME"),
		("NAMED_LAKE_NONG_HAN",				"LOC_NAMED_LAKE_NONG_HAN_NAME");
--------------------------------------------------------------------
-- NamedSeas
--------------------------------------------------------------------
INSERT OR REPLACE INTO NamedSeas
		(NamedSeaType,					Name)
VALUES	("NAMED_SEA_KRUNG_THEP_BAY",	"LOC_NAMED_SEA_KRUNG_THEP_BAY_NAME"),
		("NAMED_SEA_PHANG_NGA_BAY",		"LOC_NAMED_SEA_PHANG_NGA_BAY_NAME"),
		("NAMED_SEA_PRACHUAP_BAY",		"LOC_NAMED_SEA_PRACHUAP_BAY_NAME"),
		("NAMED_SEA_SATTAHIP_BAY",		"LOC_NAMED_SEA_SATTAHIP_BAY_NAME"),
		("NAMED_SEA_BANDON_BAY",		"LOC_NAMED_SEA_BANDON_BAY_NAME"),
		("NAMED_SEA_MANAO_BAY",			"LOC_NAMED_SEA_MANAO_BAY_NAME");
--------------------------------------------------------------------
-- NamedLakeCivilizations
--------------------------------------------------------------------
INSERT OR REPLACE INTO NamedLakeCivilizations
		(NamedLakeType,						CivilizationType)
VALUES	("NAMED_LAKE_BUENG_BORAPHET",		"CIVILIZATION_SUK_SIAM"),
		("NAMED_LAKE_SONGKHLA",				"CIVILIZATION_SUK_SIAM"),
		("NAMED_LAKE_PHAYAO",				"CIVILIZATION_SUK_SIAM"),
		("NAMED_LAKE_NONG_HAN",				"CIVILIZATION_SUK_SIAM");
--------------------------------------------------------------------
-- NamedSeaCivilizations
--------------------------------------------------------------------
INSERT OR REPLACE INTO NamedSeaCivilizations
		(NamedSeaType,						CivilizationType)
VALUES	("NAMED_SEA_GULF_OF_THAILAND",		"CIVILIZATION_SUK_SIAM"),
		("NAMED_SEA_ANDAMAN_SEA",			"CIVILIZATION_SUK_SIAM"),
		("NAMED_SEA_KRUNG_THEP_BAY",		"CIVILIZATION_SUK_SIAM"),
		("NAMED_SEA_PHANG_NGA_BAY",			"CIVILIZATION_SUK_SIAM"),
		("NAMED_SEA_PRACHUAP_BAY",			"CIVILIZATION_SUK_SIAM"),
		("NAMED_SEA_SATTAHIP_BAY",			"CIVILIZATION_SUK_SIAM"),
		("NAMED_SEA_BANDON_BAY",			"CIVILIZATION_SUK_SIAM"),
		("NAMED_SEA_MANAO_BAY",				"CIVILIZATION_SUK_SIAM");		
--==========================================================================================================================
--==========================================================================================================================