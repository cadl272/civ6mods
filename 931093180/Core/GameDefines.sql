--==========================================================================================================================
-- LOADING INFO
--==========================================================================================================================
-- LoadingInfo
-------------------------------------	
INSERT INTO LoadingInfo	
		(LeaderType,						ForegroundImage,							BackgroundImage,						PlayDawnOfManAudio)
VALUES	('LEADER_SUK_CHULALONGKORN',		'LEADER_SUK_CHULALONGKORN_NEUTRAL.dds',		'LEADER_SUK_CHULALONGKORN_BACKGROUND',	0);	
--==========================================================================================================================
-- LEADERS
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,								Kind)
VALUES	('LEADER_SUK_CHULALONGKORN',		'KIND_LEADER');	
-------------------------------------
-- Leaders
-------------------------------------	
INSERT INTO Leaders	
		(LeaderType,						Name,													InheritFrom,		SceneLayers)
VALUES	('LEADER_SUK_CHULALONGKORN',		'LOC_LEADER_SUK_CHULALONGKORN_NAME',					'LEADER_DEFAULT',	4);	
-------------------------------------
-- LeaderQuotes
-------------------------------------	
INSERT INTO LeaderQuotes	
		(LeaderType,						Quote)
VALUES	('LEADER_SUK_CHULALONGKORN',		'LOC_PEDIA_LEADERS_PAGE_SUK_CHULALONGKORN_QUOTE');	
-------------------------------------
-- LeaderTraits
-------------------------------------	
INSERT INTO LeaderTraits	
		(LeaderType,						TraitType)
VALUES	('LEADER_SUK_CHULALONGKORN',		'TRAIT_LEADER_SUK_MONTHON_SYSTEM');	
-- -------------------------------------
-- -- FavoredReligions
-- -------------------------------------	
INSERT INTO FavoredReligions	
		(LeaderType,						ReligionType)
VALUES	('LEADER_SUK_CHULALONGKORN',		'RELIGION_BUDDHISM');
--==========================================================================================================================
-- TRAITS
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT OR REPLACE INTO Types	
		(Type,													Kind)
VALUES	('TRAIT_LEADER_SUK_MONTHON_SYSTEM',						'KIND_TRAIT');
-------------------------------------			
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,								Name,											Description)
VALUES	('TRAIT_LEADER_SUK_MONTHON_SYSTEM',		'LOC_TRAIT_LEADER_SUK_MONTHON_SYSTEM_NAME',		'LOC_TRAIT_LEADER_SUK_MONTHON_SYSTEM_DESCRIPTION');
-----------------------------------------------------------------------------------
-- Cities on your Home Continent receive +1 [ICON_Production] Production, +1 [ICON_Culture] Culture and +1 [ICON_Science] Science. These bonuses are increased to +3 when you research the Industrialization technology.
-----------------------------------------------------------------------------------
-- TraitModifiers
-------------------------------------
INSERT INTO TraitModifiers			
		(TraitType,												ModifierId)
VALUES	('TRAIT_LEADER_SUK_MONTHON_SYSTEM', 					'SUK_MONTHON_SYSTEM_FOOD'),
		('TRAIT_LEADER_SUK_MONTHON_SYSTEM', 					'SUK_MONTHON_SYSTEM_PRODUCTION'),
		('TRAIT_LEADER_SUK_MONTHON_SYSTEM', 					'SUK_MONTHON_SYSTEM_CULTURE'),
		('TRAIT_LEADER_SUK_MONTHON_SYSTEM', 					'SUK_MONTHON_SYSTEM_SCIENCE'),

		('TRAIT_LEADER_SUK_MONTHON_SYSTEM', 					'SUK_MONTHON_SYSTEM_FOOD_INDUSTRIALIZATION'),
		('TRAIT_LEADER_SUK_MONTHON_SYSTEM', 					'SUK_MONTHON_SYSTEM_PRODUCTION_INDUSTRIALIZATION'),
		('TRAIT_LEADER_SUK_MONTHON_SYSTEM', 					'SUK_MONTHON_SYSTEM_CULTURE_INDUSTRIALIZATION'),
		('TRAIT_LEADER_SUK_MONTHON_SYSTEM', 					'SUK_MONTHON_SYSTEM_SCIENCE_INDUSTRIALIZATION');
-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers	
		(ModifierId,													ModifierType,										OwnerRequirementSetId, 	SubjectRequirementSetId)
VALUES	('SUK_MONTHON_SYSTEM_FOOD',										'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE', 	NULL,					'SUK_MONTHON_SYSTEM_ON_HOME_CONTINENT_REQUIREMENTS'),
		('SUK_MONTHON_SYSTEM_PRODUCTION',								'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE', 	NULL,					'SUK_MONTHON_SYSTEM_ON_HOME_CONTINENT_SPECIALTY_REQUIREMENTS'),
		('SUK_MONTHON_SYSTEM_CULTURE',									'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE', 	NULL,					'SUK_MONTHON_SYSTEM_ON_HOME_CONTINENT_REQUIREMENTS'),
		('SUK_MONTHON_SYSTEM_SCIENCE',									'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',	NULL,					'SUK_MONTHON_SYSTEM_ON_HOME_CONTINENT_SPECIALTY_REQUIREMENTS'),
		
		('SUK_MONTHON_SYSTEM_FOOD_INDUSTRIALIZATION',					'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE', 	NULL,					'SUK_MONTHON_SYSTEM_ON_HOME_CONTINENT_INDUSTRIALIZATION_REQUIREMENTS'),			
		('SUK_MONTHON_SYSTEM_PRODUCTION_INDUSTRIALIZATION',				'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE', 	NULL,					'SUK_MONTHON_SYSTEM_ON_HOME_CONTINENT_SPECIALTY_INDUSTRIALIZATION_REQUIREMENTS'),
		('SUK_MONTHON_SYSTEM_CULTURE_INDUSTRIALIZATION',				'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',	NULL,					'SUK_MONTHON_SYSTEM_ON_HOME_CONTINENT_INDUSTRIALIZATION_REQUIREMENTS'),
		('SUK_MONTHON_SYSTEM_SCIENCE_INDUSTRIALIZATION',				'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE', 	NULL,					'SUK_MONTHON_SYSTEM_ON_HOME_CONTINENT_SPECIALTY_INDUSTRIALIZATION_REQUIREMENTS');
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,												Name,							Value)
VALUES	('SUK_MONTHON_SYSTEM_FOOD',									'YieldType',					'YIELD_FOOD'),
		('SUK_MONTHON_SYSTEM_FOOD',									'Amount',						2),

		('SUK_MONTHON_SYSTEM_PRODUCTION',							'YieldType',					'YIELD_PRODUCTION'),
		('SUK_MONTHON_SYSTEM_PRODUCTION',							'Amount',						2),

		('SUK_MONTHON_SYSTEM_CULTURE',								'YieldType',					'YIELD_CULTURE'),
		('SUK_MONTHON_SYSTEM_CULTURE',								'Amount',						1),

		('SUK_MONTHON_SYSTEM_SCIENCE',								'YieldType',					'YIELD_SCIENCE'),
		('SUK_MONTHON_SYSTEM_SCIENCE',								'Amount',						1),

		('SUK_MONTHON_SYSTEM_FOOD_INDUSTRIALIZATION',				'YieldType',					'YIELD_FOOD'),
		('SUK_MONTHON_SYSTEM_FOOD_INDUSTRIALIZATION',				'Amount',						1),

		('SUK_MONTHON_SYSTEM_PRODUCTION_INDUSTRIALIZATION',			'YieldType',					'YIELD_PRODUCTION'),
		('SUK_MONTHON_SYSTEM_PRODUCTION_INDUSTRIALIZATION',			'Amount',						1),

		('SUK_MONTHON_SYSTEM_CULTURE_INDUSTRIALIZATION',			'YieldType',					'YIELD_CULTURE'),
		('SUK_MONTHON_SYSTEM_CULTURE_INDUSTRIALIZATION',			'Amount',						2),

		('SUK_MONTHON_SYSTEM_SCIENCE_INDUSTRIALIZATION',			'YieldType',					'YIELD_SCIENCE'),
		('SUK_MONTHON_SYSTEM_SCIENCE_INDUSTRIALIZATION',			'Amount',						2);
-------------------------------------			
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,																			RequirementSetType)
VALUES	('SUK_MONTHON_SYSTEM_ON_HOME_CONTINENT_REQUIREMENTS',										'REQUIREMENTSET_TEST_ALL'),
		('SUK_MONTHON_SYSTEM_ON_HOME_CONTINENT_SPECIALTY_REQUIREMENTS',								'REQUIREMENTSET_TEST_ALL'),

		('SUK_MONTHON_SYSTEM_ON_HOME_CONTINENT_INDUSTRIALIZATION_REQUIREMENTS',						'REQUIREMENTSET_TEST_ALL'),
		('SUK_MONTHON_SYSTEM_ON_HOME_CONTINENT_SPECIALTY_INDUSTRIALIZATION_REQUIREMENTS',			'REQUIREMENTSET_TEST_ALL');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------	
INSERT INTO RequirementSetRequirements
		(RequirementSetId,																		RequirementId)
VALUES	('SUK_MONTHON_SYSTEM_ON_HOME_CONTINENT_REQUIREMENTS',									'SUK_MONTHON_SYSTEM_ON_HOME_CONTINENT_REQUIREMENT'),
			
		('SUK_MONTHON_SYSTEM_ON_HOME_CONTINENT_SPECIALTY_REQUIREMENTS',							'REQUIRES_CITY_HAS_1_SPECIALTY_DISTRICT'),
		('SUK_MONTHON_SYSTEM_ON_HOME_CONTINENT_SPECIALTY_REQUIREMENTS',							'SUK_MONTHON_SYSTEM_ON_HOME_CONTINENT_REQUIREMENT'),
			
		('SUK_MONTHON_SYSTEM_ON_HOME_CONTINENT_INDUSTRIALIZATION_REQUIREMENTS',					'SUK_MONTHON_SYSTEM_ON_HOME_CONTINENT_REQUIREMENT'),
		('SUK_MONTHON_SYSTEM_ON_HOME_CONTINENT_INDUSTRIALIZATION_REQUIREMENTS',					'SUK_MONTHON_SYSTEM_RESEARCHED_INDUSTRIALIZATION_REQUIREMENT'),
			
		('SUK_MONTHON_SYSTEM_ON_HOME_CONTINENT_SPECIALTY_INDUSTRIALIZATION_REQUIREMENTS',		'REQUIRES_CITY_HAS_1_SPECIALTY_DISTRICT'),
		('SUK_MONTHON_SYSTEM_ON_HOME_CONTINENT_SPECIALTY_INDUSTRIALIZATION_REQUIREMENTS',		'SUK_MONTHON_SYSTEM_ON_HOME_CONTINENT_REQUIREMENT'),
		('SUK_MONTHON_SYSTEM_ON_HOME_CONTINENT_SPECIALTY_INDUSTRIALIZATION_REQUIREMENTS',		'SUK_MONTHON_SYSTEM_RESEARCHED_INDUSTRIALIZATION_REQUIREMENT');
-------------------------------------
-- Requirements
-------------------------------------
INSERT INTO Requirements
		(RequirementId, 													RequirementType)
VALUES	('SUK_MONTHON_SYSTEM_ON_HOME_CONTINENT_REQUIREMENT',				'REQUIREMENT_CITY_IS_OWNER_CAPITAL_CONTINENT'),
		('SUK_MONTHON_SYSTEM_RESEARCHED_INDUSTRIALIZATION_REQUIREMENT',		'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');
-------------------------------------
-- RequirementArguments
-------------------------------------
INSERT INTO RequirementArguments
		(RequirementId, 													Name,						Value)
VALUES	('SUK_MONTHON_SYSTEM_RESEARCHED_INDUSTRIALIZATION_REQUIREMENT', 	'TechnologyType',			'TECH_INDUSTRIALIZATION');
--==========================================================================================================================			
-- Agendas			
--==========================================================================================================================
-- -- HistoricalAgendas
-- -------------------------------------	
INSERT INTO HistoricalAgendas	
		(LeaderType,						AgendaType)
VALUES	('LEADER_SUK_CHULALONGKORN',		'AGENDA_SUK_PHRA_PIYA_MAHARAT');
-------------------------------------
-- Agendas			
-------------------------------------				
INSERT INTO Agendas				
		(AgendaType,								Name,										Description)
VALUES	('AGENDA_SUK_PHRA_PIYA_MAHARAT',			'LOC_AGENDA_SUK_PHRA_PIYA_MAHARAT_NAME',	'LOC_AGENDA_SUK_PHRA_PIYA_MAHARAT_DESCRIPTION');
-------------------------------------			
-- AgendaTraits			
-------------------------------------				
INSERT INTO AgendaTraits				
		(AgendaType,								TraitType)
VALUES	('AGENDA_SUK_PHRA_PIYA_MAHARAT',			'TRAIT_AGENDA_SUK_PHRA_PIYA_MAHARAT');
-------------------------------------
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,										Kind)
VALUES	('TRAIT_AGENDA_SUK_PHRA_PIYA_MAHARAT',		'KIND_TRAIT');	
-------------------------------------			
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,											Name,										Description)
VALUES	('TRAIT_AGENDA_SUK_PHRA_PIYA_MAHARAT',				'LOC_AGENDA_SUK_PHRA_PIYA_MAHARAT_NAME',	'LOC_AGENDA_SUK_PHRA_PIYA_MAHARAT_DESCRIPTION');
-------------------------------------
-- TraitModifiers
-------------------------------------
INSERT INTO TraitModifiers			
		(TraitType,											ModifierId)
VALUES	('TRAIT_AGENDA_SUK_PHRA_PIYA_MAHARAT', 				'AGENDA_SUK_PHRA_PIYA_MAHARAT_FOREIGNER'),
		('TRAIT_AGENDA_SUK_PHRA_PIYA_MAHARAT', 				'AGENDA_SUK_PHRA_PIYA_MAHARAT_COLONISER');
-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers	
		(ModifierId,												ModifierType,											SubjectRequirementSetId)
VALUES	('AGENDA_SUK_PHRA_PIYA_MAHARAT_FOREIGNER',					'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',			'SUK_PHRA_PIYA_MAHARAT_FOREIGNER'),
		('AGENDA_SUK_PHRA_PIYA_MAHARAT_COLONISER',					'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',			'SUK_PHRA_PIYA_MAHARAT_COLONISER');
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,											Name,							Value)
VALUES	('AGENDA_SUK_PHRA_PIYA_MAHARAT_FOREIGNER',				'InitialValue',					8),
		('AGENDA_SUK_PHRA_PIYA_MAHARAT_FOREIGNER',				'StatementKey',					'LOC_DIPLO_KUDO_LEADER_SUK_CHULALONGKORN_REASON_ANY'),
		('AGENDA_SUK_PHRA_PIYA_MAHARAT_FOREIGNER',				'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_SUK_PHRA_PIYA_MAHARAT_FOREIGNER'),

		('AGENDA_SUK_PHRA_PIYA_MAHARAT_COLONISER',				'InitialValue',					-12),
		('AGENDA_SUK_PHRA_PIYA_MAHARAT_COLONISER',				'StatementKey',					'LOC_DIPLO_WARNING_LEADER_SUK_CHULALONGKORN_REASON_ANY'),
		('AGENDA_SUK_PHRA_PIYA_MAHARAT_COLONISER',				'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_SUK_PHRA_PIYA_MAHARAT_COLONISER');
-------------------------------------
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,											RequirementSetType)
VALUES	('SUK_PHRA_PIYA_MAHARAT_FOREIGNER',							'REQUIREMENTSET_TEST_ALL'),
		('SUK_PHRA_PIYA_MAHARAT_COLONISER',							'REQUIREMENTSET_TEST_ALL');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,									RequirementId)
VALUES	('SUK_PHRA_PIYA_MAHARAT_FOREIGNER',					'REQUIRES_ON_NEW_CONTINENT'),
		('SUK_PHRA_PIYA_MAHARAT_FOREIGNER',					'REQUIRES_SUK_PHRA_PIYA_MAHARAT_DIFF_HOME_CONTINENT'),
		('SUK_PHRA_PIYA_MAHARAT_FOREIGNER',					'REQUIRES_MAJOR_CIV_OPPONENT'),
		('SUK_PHRA_PIYA_MAHARAT_FOREIGNER',					'REQUIRES_MET_10_TURNS_AGO'),
		
		('SUK_PHRA_PIYA_MAHARAT_COLONISER',					'REQUIRES_SUK_PHRA_PIYA_MAHARAT_SHARES_CONTINENT'),
		('SUK_PHRA_PIYA_MAHARAT_COLONISER',					'REQUIRES_SUK_PHRA_PIYA_MAHARAT_DIFF_HOME_CONTINENT'),
		('SUK_PHRA_PIYA_MAHARAT_COLONISER',					'REQUIRES_MAJOR_CIV_OPPONENT'),
		('SUK_PHRA_PIYA_MAHARAT_COLONISER',					'REQUIRES_MET_10_TURNS_AGO');
-- -------------------------------------
-- -- Requirements
-- -------------------------------------
INSERT INTO Requirements
		(RequirementId, 														RequirementType,								Inverse)
VALUES	('REQUIRES_SUK_PHRA_PIYA_MAHARAT_SHARES_CONTINENT',						'REQUIREMENT_PLAYER_ON_NON_HOME_CONTINENT',		1), -- I have no idea how exactly this works, but this is why Victoria hate people on other continent, so inverse it
		('REQUIRES_SUK_PHRA_PIYA_MAHARAT_DIFF_HOME_CONTINENT',					'REQUIREMENT_PLAYER_SHARES_HOME_CONTINENT',		1);
--==========================================================================================================================
-- AI
--==========================================================================================================================
-- AiListTypes
-------------------------------------	
INSERT INTO AiListTypes	
		(ListType)
VALUES	('Suk_Chulalongkorn_DomesticSettlement'),
		('Suk_Chulalongkorn_Civics'),
		('Suk_Chulalongkorn_Techs');
-------------------------------------
-- AiLists
-------------------------------------	
INSERT INTO AiLists	
		(ListType,									AgendaType,										System)
VALUES	('Suk_Chulalongkorn_DomesticSettlement',	'TRAIT_AGENDA_SUK_PHRA_PIYA_MAHARAT',			'PlotEvaluations'),
		('Suk_Chulalongkorn_Civics',				'TRAIT_AGENDA_SUK_PHRA_PIYA_MAHARAT',			'Civics'),
		('Suk_Chulalongkorn_Techs',					'TRAIT_AGENDA_SUK_PHRA_PIYA_MAHARAT',			'Technologies');
-------------------------------------		
-- AiFavoredItems
-------------------------------------	
INSERT INTO AiFavoredItems	
		(ListType,									Item,							Favored,		Value)
VALUES	('Suk_Chulalongkorn_DomesticSettlement',	'Foreign Continent',			0,				-60);

INSERT INTO AiFavoredItems	
		(ListType,							Item)
VALUES	('Suk_Chulalongkorn_Civics',		'CIVIC_MYSTICISM'),
		('Suk_Chulalongkorn_Civics',		'CIVIC_FOREIGN_TRADE'),
		('Suk_Chulalongkorn_Civics',		'CIVIC_MILITARY_TRAINING'),
		('Suk_Chulalongkorn_Civics',		'CIVIC_NATURAL_HISTORY'),
		('Suk_Chulalongkorn_Civics',		'CIVIC_OPERA_BALLET'),
		('Suk_Chulalongkorn_Civics',		'CIVIC_CULTURAL_HERITAGE'),

		('Suk_Chulalongkorn_Techs',			'TECH_CURRENCY'),
		('Suk_Chulalongkorn_Techs',			'TECH_INDUSTRIALIZATION');
--==========================================================================================================================
-- Mod Support
--==========================================================================================================================
-- Leader_Titles 
------------------------------------------------------------	
INSERT INTO Leader_Titles
			(LeaderType, 					GovernmentType,	PolicyType,	LeaderTitle)	
SELECT		'LEADER_SUK_CHULALONGKORN',		GovernmentType,	PolicyType,	LeaderTitle
FROM Leader_Titles WHERE LeaderType = 'LEADER_SUK_RAMKHAMHAENG';	

DELETE FROM Leader_Titles 
WHERE LeaderType = 'LEADER_SUK_CHULALONGKORN' and LeaderTitle = 'LOC_GOVERNMENT_JFD_MONARCHY_LEADER_TITLE_SUK_RAMKHAMHAENG';
------------------------------------------------------------
-- StartPosition 
------------------------------------------------------------	
INSERT INTO StartPosition
		(Civilization,					Leader,							MapName,				X,		Y)
VALUES	('CIVILIZATION_SUK_SIAM',		'LEADER_SUK_CHULALONGKORN',		'GiantEarth',			75,		40),
		('CIVILIZATION_SUK_SIAM',		'LEADER_SUK_CHULALONGKORN',		'GreatestEarthMap',		84,		36),
		('CIVILIZATION_SUK_SIAM',		'LEADER_SUK_CHULALONGKORN',		'LargestEarth',			99,		50);
--==========================================================================================================================
-- CivilizationLeaders
--==========================================================================================================================
INSERT INTO CivilizationLeaders
		(LeaderType, 					CivilizationType,			CapitalName)
VALUES  ('LEADER_SUK_CHULALONGKORN',	'CIVILIZATION_SUK_SIAM',	'LOC_CITY_NAME_SIAM_KRUNG_THEP');
--==========================================================================================================================
--==========================================================================================================================