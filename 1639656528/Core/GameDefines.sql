--==========================================================================================================================
-- LOADING INFO
--==========================================================================================================================
-- LoadingInfo
-------------------------------------	
INSERT INTO LoadingInfo	
		(LeaderType,						ForegroundImage,							BackgroundImage,							PlayDawnOfManAudio)
VALUES	('LEADER_SUK_LOBSANG_GYATSO',		'LEADER_SUK_LOBSANG_GYATSO_NEUTRAL',			'LEADER_SUK_LOBSANG_GYATSO_BACKGROUND',	0);
--==========================================================================================================================
-- LEADERS
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,								Kind)
VALUES	('LEADER_SUK_LOBSANG_GYATSO',		'KIND_LEADER');	
-------------------------------------
-- Leaders
-------------------------------------	
INSERT INTO Leaders	
		(LeaderType,						Name,													InheritFrom,		SceneLayers)
VALUES	('LEADER_SUK_LOBSANG_GYATSO',		'LOC_LEADER_SUK_LOBSANG_GYATSO_NAME',					'LEADER_DEFAULT',	4);	
-------------------------------------
-- LeaderQuotes
-------------------------------------	
INSERT INTO LeaderQuotes	
		(LeaderType,						Quote)
VALUES	('LEADER_SUK_LOBSANG_GYATSO',		'LOC_PEDIA_LEADERS_PAGE_SUK_LOBSANG_GYATSO_QUOTE');	
-------------------------------------
-- LeaderTraits
-------------------------------------	
INSERT INTO LeaderTraits	
		(LeaderType,						TraitType)
VALUES	('LEADER_SUK_LOBSANG_GYATSO',		'TRAIT_LEADER_SUK_HISTORY_OF_TIBET');	
-- -------------------------------------
-- -- FavoredReligions
-- -------------------------------------	
INSERT INTO FavoredReligions 
		(LeaderType,							ReligionType)
VALUES	('LEADER_SUK_LOBSANG_GYATSO',			'RELIGION_BUDDHISM');

UPDATE FavoredReligions
SET ReligionType = 'RELIGION_B2_VAJRAYANA'
WHERE LeaderType = 'LEADER_SUK_LOBSANG_GYATSO'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B2_VAJRAYANA');
--==========================================================================================================================
-- TRAITS
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT OR REPLACE INTO Types	
		(Type,														Kind)
VALUES	('TRAIT_LEADER_SUK_HISTORY_OF_TIBET',						'KIND_TRAIT');
-------------------------------------			
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,									Name,												Description)
VALUES	('TRAIT_LEADER_SUK_HISTORY_OF_TIBET',		'LOC_TRAIT_LEADER_SUK_HISTORY_OF_TIBET_NAME',		'LOC_TRAIT_LEADER_SUK_HISTORY_OF_TIBET_DESCRIPTION');
--==========================================================================================================================
-- In cities you founded, Wonders and Dzong district buildings each gain a [ICON_GreatWork_Writing] Great Work of Writing slot.
--==========================================================================================================================
-- MODIFIERS
----------------------------------------------------------------------------------------------------------------------------
-- TraitModifiers
-------------------------------------
INSERT INTO TraitModifiers			
		(TraitType,										ModifierId)
SELECT	'TRAIT_LEADER_SUK_HISTORY_OF_TIBET',			'SUK_HISTORY_OF_TIBET_' || BuildingType
FROM Buildings WHERE PrereqDistrict = "DISTRICT_HOLY_SITE" OR IsWonder = 1;
-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers	
		(ModifierId,										ModifierType)
SELECT	'SUK_HISTORY_OF_TIBET_' || BuildingType,			'MODIFIER_PLAYER_CITIES_ADJUST_EXTRA_GREAT_WORK_SLOTS'	
FROM Buildings WHERE PrereqDistrict = "DISTRICT_HOLY_SITE" OR IsWonder = 1;
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,												Name,							Value)
SELECT	'SUK_HISTORY_OF_TIBET_' || BuildingType,					'Amount',						1
FROM Buildings WHERE PrereqDistrict = "DISTRICT_HOLY_SITE" OR IsWonder = 1;

INSERT INTO ModifierArguments
		(ModifierId,												Name,							Value)
SELECT	'SUK_HISTORY_OF_TIBET_' || BuildingType,					'GreatWorkSlotType',			'GREATWORKSLOT_WRITING'
FROM Buildings WHERE PrereqDistrict = "DISTRICT_HOLY_SITE" OR IsWonder = 1;

INSERT INTO ModifierArguments
		(ModifierId,												Name,							Value)
SELECT	'SUK_HISTORY_OF_TIBET_' || BuildingType,					'BuildingType',					BuildingType
FROM Buildings WHERE PrereqDistrict = "DISTRICT_HOLY_SITE" OR IsWonder = 1;
--==========================================================================================================================			
-- Agendas			
--==========================================================================================================================
-- -- HistoricalAgendas
-- -------------------------------------	
INSERT INTO HistoricalAgendas	
		(LeaderType,						AgendaType)
VALUES	('LEADER_SUK_LOBSANG_GYATSO',		'AGENDA_SUK_ABODE_OF_AVALOKITESVARA');
-------------------------------------
-- Agendas			
-------------------------------------				
INSERT INTO Agendas				
		(AgendaType,									Name,												Description)
VALUES	('AGENDA_SUK_ABODE_OF_AVALOKITESVARA',			'LOC_AGENDA_SUK_ABODE_OF_AVALOKITESVARA_NAME',		'LOC_AGENDA_SUK_ABODE_OF_AVALOKITESVARA_DESCRIPTION');
-------------------------------------			
-- AgendaTraits			
-------------------------------------				
INSERT INTO AgendaTraits				
		(AgendaType,									TraitType)
VALUES	('AGENDA_SUK_ABODE_OF_AVALOKITESVARA',			'TRAIT_AGENDA_SUK_ABODE_OF_AVALOKITESVARA');
-------------------------------------			
-- ExclusiveAgendas			
-------------------------------------				
INSERT INTO ExclusiveAgendas				
		(AgendaOne,										AgendaTwo)
VALUES	('AGENDA_SUK_ABODE_OF_AVALOKITESVARA',			'AGENDA_DEVOUT'),
		('AGENDA_SUK_ABODE_OF_AVALOKITESVARA',			'AGENDA_WONDER_ADVOCATE');	
-------------------------------------
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,												Kind)
VALUES	('TRAIT_AGENDA_SUK_ABODE_OF_AVALOKITESVARA',		'KIND_TRAIT');	
-------------------------------------			
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,													Name,													Description)
VALUES	('TRAIT_AGENDA_SUK_ABODE_OF_AVALOKITESVARA',				'LOC_AGENDA_SUK_ABODE_OF_AVALOKITESVARA_NAME',			'LOC_AGENDA_SUK_ABODE_OF_AVALOKITESVARA_DESCRIPTION');
-------------------------------------
-- TraitModifiers
-------------------------------------
INSERT INTO TraitModifiers			
		(TraitType,												ModifierId)
VALUES	('TRAIT_AGENDA_SUK_ABODE_OF_AVALOKITESVARA', 			'AGENDA_SUK_ABODE_OF_AVALOKITESVARA_KUDOS'),
		('TRAIT_AGENDA_SUK_ABODE_OF_AVALOKITESVARA', 			'AGENDA_SUK_ABODE_OF_AVALOKITESVARA_WARNING');
----------------------------------------------------------------------------------------------------------------------------
-- MODIFIERS
----------------------------------------------------------------------------------------------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers	
		(ModifierId,											ModifierType,											SubjectRequirementSetId)
VALUES	('AGENDA_SUK_ABODE_OF_AVALOKITESVARA_KUDOS',			'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',			'SUK_ABODE_OF_AVALOKITESVARA_KUDOS'),
		('AGENDA_SUK_ABODE_OF_AVALOKITESVARA_WARNING',			'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',			'SUK_ABODE_OF_AVALOKITESVARA_WARNING');
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,											Name,							Value)
VALUES	('AGENDA_SUK_ABODE_OF_AVALOKITESVARA_KUDOS',			'InitialValue',					8),
		('AGENDA_SUK_ABODE_OF_AVALOKITESVARA_KUDOS',			'StatementKey',					'LOC_DIPLO_KUDO_EXIT_LEADER_SUK_LOBSANG_GYATSO_ANY'),
		('AGENDA_SUK_ABODE_OF_AVALOKITESVARA_KUDOS',			'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_SUK_ABODE_OF_AVALOKITESVARA_KUDOS'),

		('AGENDA_SUK_ABODE_OF_AVALOKITESVARA_WARNING',			'InitialValue',					-12),
		('AGENDA_SUK_ABODE_OF_AVALOKITESVARA_WARNING',			'StatementKey',					'LOC_DIPLO_WARNING_EXIT_LEADER_SUK_LOBSANG_GYATSO_ANY'),
		('AGENDA_SUK_ABODE_OF_AVALOKITESVARA_WARNING',			'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_SUK_ABODE_OF_AVALOKITESVARA_WARNING');
-------------------------------------
-- ModifierStrings
-------------------------------------
INSERT INTO ModifierStrings
		(ModifierId,												Context,                        'Text')
VALUES	('AGENDA_SUK_ABODE_OF_AVALOKITESVARA_KUDOS',				'Sample',						'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
		('AGENDA_SUK_ABODE_OF_AVALOKITESVARA_WARNING',				'Sample',						'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL');
----------------------------------------------------------------------------------------------------------------------------
-- REQUIREMENTS
----------------------------------------------------------------------------------------------------------------------------
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,									RequirementSetType)
VALUES	('SUK_ABODE_OF_AVALOKITESVARA_KUDOS',				'REQUIREMENTSET_TEST_ALL'),
		('SUK_ABODE_OF_AVALOKITESVARA_WARNING',				'REQUIREMENTSET_TEST_ALL');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,									RequirementId)
VALUES	('SUK_ABODE_OF_AVALOKITESVARA_KUDOS',				'REQUIRES_SUK_ABODE_OF_AVALOKITESVARA_HAS_WONDERS'),
		('SUK_ABODE_OF_AVALOKITESVARA_KUDOS',				'REQUIRES_SUK_ABODE_OF_AVALOKITESVARA_HIGH_FAITH'),
		('SUK_ABODE_OF_AVALOKITESVARA_KUDOS',				'REQUIRES_MAJOR_CIV_OPPONENT'),
		('SUK_ABODE_OF_AVALOKITESVARA_KUDOS',				'REQUIRES_MET_10_TURNS_AGO'),
			
		('SUK_ABODE_OF_AVALOKITESVARA_WARNING',				'REQUIRES_SUK_ABODE_OF_AVALOKITESVARA_HAS_WONDERS'),
		('SUK_ABODE_OF_AVALOKITESVARA_WARNING',				'REQUIRES_SUK_ABODE_OF_AVALOKITESVARA_LOW_FAITH'),			
		('SUK_ABODE_OF_AVALOKITESVARA_WARNING',				'REQUIRES_MAJOR_CIV_OPPONENT'),
		('SUK_ABODE_OF_AVALOKITESVARA_WARNING',				'REQUIRES_MET_10_TURNS_AGO');
-- -------------------------------------
-- -- Requirements
-- -------------------------------------
INSERT INTO Requirements
		(RequirementId, 													RequirementType)
VALUES	('REQUIRES_SUK_ABODE_OF_AVALOKITESVARA_HAS_WONDERS',				'REQUIREMENT_PLAYER_BUILT_WONDER'),
		('REQUIRES_SUK_ABODE_OF_AVALOKITESVARA_HIGH_FAITH',					'REQUIREMENT_PLAYER_YIELD_LEAD'),
		('REQUIRES_SUK_ABODE_OF_AVALOKITESVARA_LOW_FAITH',					'REQUIREMENT_PLAYER_YIELD_LEAD');	
-- -------------------------------------
-- -- RequirementArguments
-- -------------------------------------
INSERT INTO RequirementArguments
		(RequirementId, 												Name,						Value)
VALUES	('REQUIRES_SUK_ABODE_OF_AVALOKITESVARA_HAS_WONDERS',			'WonderRatio',				1),

		('REQUIRES_SUK_ABODE_OF_AVALOKITESVARA_HIGH_FAITH',				'YieldType',				'YIELD_FAITH'),
		('REQUIRES_SUK_ABODE_OF_AVALOKITESVARA_HIGH_FAITH',				'YieldRatio',				0.75),
		('REQUIRES_SUK_ABODE_OF_AVALOKITESVARA_HIGH_FAITH',				'MinimumDelta',				5),

		('REQUIRES_SUK_ABODE_OF_AVALOKITESVARA_LOW_FAITH',				'YieldType',				'YIELD_FAITH'),
		('REQUIRES_SUK_ABODE_OF_AVALOKITESVARA_LOW_FAITH',				'YieldRatio',				-1.15),
		('REQUIRES_SUK_ABODE_OF_AVALOKITESVARA_LOW_FAITH',				'MinimumDelta',				5);
--==========================================================================================================================
-- CivilizationLeaders
--==========================================================================================================================
INSERT INTO CivilizationLeaders
		(LeaderType, 					CivilizationType,			CapitalName)
VALUES  ('LEADER_SUK_LOBSANG_GYATSO',	'CIVILIZATION_SUK_TIBET',	'LOC_CITY_NAME_SUK_TIBET_LHASA');
--==========================================================================================================================
-- TSL
--==========================================================================================================================
CREATE TABLE IF NOT EXISTS StartPosition
	(MapName TEXT,
	Civilization TEXT,
	Leader TEXT,
	X INT default 0,
	Y INT default 0);

INSERT INTO StartPosition
		(Civilization,					Leader,								MapName,				X,		Y)
VALUES	('CIVILIZATION_SUK_TIBET',		'LEADER_SUK_LOBSANG_GYATSO',		'GiantEarth',			69,		54),
		('CIVILIZATION_SUK_TIBET',		'LEADER_SUK_LOBSANG_GYATSO',		'LargestEarthCustom',	91,		68),
		('CIVILIZATION_SUK_TIBET',		'LEADER_SUK_LOBSANG_GYATSO',		'GreatestEarthMap',		78,		44);
--==========================================================================================================================
--==========================================================================================================================