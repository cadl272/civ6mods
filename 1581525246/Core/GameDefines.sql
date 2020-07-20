--==========================================================================================================================
-- LOADING INFO
--==========================================================================================================================
-- LoadingInfo
-------------------------------------	
INSERT INTO LoadingInfo	
		(LeaderType,							ForegroundImage,						BackgroundImage,							PlayDawnOfManAudio)
VALUES	('LEADER_SUK_HADRIAN',					'LEADER_SUK_HADRIAN_NEUTRAL',			'LEADER_SUK_HADRIAN_BACKGROUND',			0);
--==========================================================================================================================
-- LEADERS
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,							Kind)
VALUES	('LEADER_SUK_HADRIAN',			'KIND_LEADER');	
-------------------------------------
-- Leaders
-------------------------------------	
INSERT INTO Leaders	
		(LeaderType,					Name,								InheritFrom,		SceneLayers,	SameSexPercentage)
VALUES	('LEADER_SUK_HADRIAN',			'LOC_LEADER_SUK_HADRIAN_NAME',		'LEADER_DEFAULT',	4,				100);	
-------------------------------------
-- LeaderQuotes
-------------------------------------	
INSERT INTO LeaderQuotes	
		(LeaderType,					Quote)
VALUES	('LEADER_SUK_HADRIAN',			'LOC_PEDIA_LEADERS_PAGE_SUK_HADRIAN_QUOTE');	
-- -------------------------------------
-- -- HistoricalAgendas
-- -------------------------------------	
INSERT INTO HistoricalAgendas	
		(LeaderType,					AgendaType)
VALUES	('LEADER_SUK_HADRIAN',			'AGENDA_SUK_HADRIANS_WALL');	
-------------------------------------
-- LeaderTraits
-------------------------------------	
INSERT INTO LeaderTraits	
		(LeaderType,					TraitType)
VALUES	('LEADER_SUK_HADRIAN',			'TRAIT_LEADER_SUK_GREEKLING');
--==========================================================================================================================
-- TRAITS
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,											Kind)
VALUES	('TRAIT_LEADER_SUK_GREEKLING',					'KIND_TRAIT');	
-------------------------------------			
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,										Name,										Description)
VALUES	('TRAIT_LEADER_SUK_GREEKLING',					'LOC_TRAIT_LEADER_SUK_GREEKLING_NAME',		'LOC_TRAIT_LEADER_SUK_GREEKLING_DESCRIPTION');
--==========================================================================================================================
-- +50% [ICON_Production] Production towards the first buildings of the Encampment, Theatre Square, Campus, and Holy Site.
--==========================================================================================================================
-- Prep
----------------------------------------------------------------------------------------------------------------------------
CREATE TEMPORARY TABLE "SukGreeklingData"(
	"BuildingType" TEXT NOT NULL,
	"YieldType" TEXT NOT NULL,
	"YieldChange" INTEGER NOT NULL
);

INSERT INTO SukGreeklingData			
		(BuildingType,				YieldType,				YieldChange)
SELECT	BuildingType,				YieldType,				YieldChange
FROM Building_YieldChanges WHERE BuildingType IN(
	SELECT BuildingType FROM Buildings WHERE PrereqDistrict IN ('DISTRICT_ENCAMPMENT', 'DISTRICT_THEATER', 'DISTRICT_CAMPUS', 'DISTRICT_HOLY_SITE')
	AND BuildingType NOT IN (SELECT Building FROM BuildingPrereqs UNION SELECT CivUniqueBuildingType FROM BuildingReplaces)
);
----------------------------------------------------------------------------------------------------------------------------
-- MODIFIERS
----------------------------------------------------------------------------------------------------------------------------
-- TraitModifiers		
-------------------------------------			
INSERT INTO TraitModifiers			
		(TraitType,								ModifierId)
SELECT DISTINCT 'TRAIT_LEADER_SUK_GREEKLING', 			'SUK_GREEKLING_' || BuildingType
FROM SukGreeklingData;
--------------------------------------------------------------------------------------------------------------------------
-- Modifiers
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers	
		(ModifierId,								ModifierType)
SELECT DISTINCT	'SUK_GREEKLING_' || BuildingType,			'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION'
FROM SukGreeklingData;
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,								Name,				Value)
SELECT DISTINCT	'SUK_GREEKLING_' || BuildingType,			'Amount',			50
FROM SukGreeklingData;

INSERT INTO ModifierArguments
		(ModifierId,								Name,				Value)
SELECT DISTINCT	'SUK_GREEKLING_' || BuildingType,			'BuildingType',		BuildingType
FROM SukGreeklingData;
--==========================================================================================================================
-- These buildings provide double their regular yields.
--==========================================================================================================================
-- MODIFIERS
----------------------------------------------------------------------------------------------------------------------------
-- TraitModifiers		
-------------------------------------	
INSERT INTO TraitModifiers			
		(TraitType,								ModifierId)
SELECT 'TRAIT_LEADER_SUK_GREEKLING', 			'SUK_GREEKLING_' || BuildingType || '_' || YieldType
FROM SukGreeklingData;
--------------------------------------------------------------------------------------------------------------------------
-- Modifiers
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers	
		(ModifierId,													ModifierType)
SELECT	'SUK_GREEKLING_' || BuildingType || '_' || YieldType,			'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE'
FROM SukGreeklingData;
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,													Name,				Value)
SELECT	'SUK_GREEKLING_' || BuildingType || '_' || YieldType,			'BuildingType',		BuildingType
FROM SukGreeklingData;

INSERT INTO ModifierArguments
		(ModifierId,								Name,				Value)
SELECT	'SUK_GREEKLING_' || BuildingType || '_' || YieldType,			'YieldType',		YieldType
FROM SukGreeklingData;

INSERT INTO ModifierArguments
		(ModifierId,								Name,				Value)
SELECT	'SUK_GREEKLING_' || BuildingType || '_' || YieldType,			'Amount',			YieldChange
FROM SukGreeklingData;
--==========================================================================================================================
-- Cities with a wonder may build an additional district.
--==========================================================================================================================
-- MODIFIERS
----------------------------------------------------------------------------------------------------------------------------
-- TraitModifiers
-------------------------------------
INSERT INTO TraitModifiers			
		(TraitType,									ModifierId)
VALUES	('TRAIT_LEADER_SUK_GREEKLING', 				'SUK_GREEKLING_WONDER_EXTRA_DISTRICT');
-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers	
		(ModifierId,								ModifierType,										SubjectRequirementSetId)
VALUES	('SUK_GREEKLING_WONDER_EXTRA_DISTRICT',		'MODIFIER_PLAYER_CITIES_EXTRA_DISTRICT', 			'CITY_HAS_WONDER_REQUIREMENTS');
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,									Name,				Value)
VALUES	('SUK_GREEKLING_WONDER_EXTRA_DISTRICT',			'Amount',			1);
--==========================================================================================================================
-- AGENDAS
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,									Kind)
VALUES	('TRAIT_AGENDA_SUK_HADRIANS_WALL',		'KIND_TRAIT');			
-------------------------------------			
-- Agendas			
-------------------------------------				
INSERT INTO Agendas				
		(AgendaType,							Name,									Description)
VALUES	('AGENDA_SUK_HADRIANS_WALL',			'LOC_AGENDA_SUK_HADRIANS_WALL_NAME',	'LOC_AGENDA_SUK_HADRIANS_WALL_DESCRIPTION');	
-------------------------------------			
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,								Name,										Description)
VALUES	('TRAIT_AGENDA_SUK_HADRIANS_WALL',		'LOC_AGENDA_SUK_HADRIANS_WALL_NAME',		'LOC_AGENDA_SUK_HADRIANS_WALL_DESCRIPTION');	
-------------------------------------			
-- AgendaTraits			
-------------------------------------				
INSERT INTO AgendaTraits				
		(AgendaType,							TraitType)
VALUES	('AGENDA_SUK_HADRIANS_WALL',			'TRAIT_AGENDA_SUK_HADRIANS_WALL');	
-------------------------------------		
-- TraitModifiers
-------------------------------------			
INSERT INTO TraitModifiers			
		(TraitType,								ModifierId)
VALUES	('TRAIT_AGENDA_SUK_HADRIANS_WALL',		'AGENDA_MODIFIER_SUK_CLEARS_BARBARIAN_CAMPS'),
		('TRAIT_AGENDA_SUK_HADRIANS_WALL',		'AGENDA_MODIFIER_SUK_IGNORES_BARBARIAN_CAMPS');
--------------------------------------------------------------------------------------------------------------------------
-- Modifiers
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers	
		(ModifierId,										ModifierType,										SubjectRequirementSetId)
VALUES	('AGENDA_MODIFIER_SUK_CLEARS_BARBARIAN_CAMPS',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',		'SUK_PLAYER_CLEARS_BARBARIAN_CAMPS'),
		('AGENDA_MODIFIER_SUK_IGNORES_BARBARIAN_CAMPS',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',		'SUK_PLAYER_IGNORES_BARBARIAN_CAMPS');
--------------------------------------------------------------------------------------------------------------------------
-- ModifierArguments
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,										Name,							Value,													Extra,				Type)
VALUES	('AGENDA_MODIFIER_SUK_CLEARS_BARBARIAN_CAMPS',		'InitialValue',					7,														null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MODIFIER_SUK_CLEARS_BARBARIAN_CAMPS',		'StatementKey',					'LOC_DIPLO_KUDO_LEADER_SUK_HADRIAN_REASON_ANY',			null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MODIFIER_SUK_CLEARS_BARBARIAN_CAMPS',		'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_SUK_HADRIANS_WALL_CLEARING',		null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MODIFIER_SUK_IGNORES_BARBARIAN_CAMPS',		'InitialValue',					-7,														null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MODIFIER_SUK_IGNORES_BARBARIAN_CAMPS',		'StatementKey',					'LOC_DIPLO_WARNING_LEADER_SUK_HADRIAN_REASON_ANY',		null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MODIFIER_SUK_IGNORES_BARBARIAN_CAMPS',		'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_SUK_HADRIANS_WALL_IGNORING',		null,				'ARGTYPE_IDENTITY');
-------------------------------------
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,											RequirementSetType)
VALUES	('SUK_PLAYER_CLEARS_BARBARIAN_CAMPS',				'REQUIREMENTSET_TEST_ALL'),
		('SUK_PLAYER_IGNORES_BARBARIAN_CAMPS',				'REQUIREMENTSET_TEST_ALL');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,									RequirementId)
VALUES	('SUK_PLAYER_CLEARS_BARBARIAN_CAMPS',				'REQUIRES_MAJOR_CIV_OPPONENT'),
		('SUK_PLAYER_CLEARS_BARBARIAN_CAMPS',				'REQUIRES_MET_10_TURNS_AGO'),
		('SUK_PLAYER_CLEARS_BARBARIAN_CAMPS',				'REQUIRES_CLEARS_BARBARIAN_CAMPS'),
		('SUK_PLAYER_IGNORES_BARBARIAN_CAMPS',				'REQUIRES_MAJOR_CIV_OPPONENT'),
		('SUK_PLAYER_IGNORES_BARBARIAN_CAMPS',				'REQUIRES_MET_10_TURNS_AGO'),
		('SUK_PLAYER_IGNORES_BARBARIAN_CAMPS',				'REQUIRES_IGNORES_BARBARIAN_CAMPS'),
		('SUK_PLAYER_IGNORES_BARBARIAN_CAMPS',				'REQUIRES_HAS_HIGH_STANDING_ARMY');			
--==========================================================================================================================
-- CivilizationLeaders
--==========================================================================================================================
INSERT INTO CivilizationLeaders
		(LeaderType, 			CivilizationType,		CapitalName)
VALUES  ('LEADER_SUK_HADRIAN',	'CIVILIZATION_ROME',	'LOC_CITY_NAME_ROME');
--==========================================================================================================================
--==========================================================================================================================