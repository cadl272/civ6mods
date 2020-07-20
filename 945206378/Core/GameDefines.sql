--==========================================================================================================================
-- LOADING INFO
--==========================================================================================================================
-- LoadingInfo
-------------------------------------	
INSERT INTO LoadingInfo	
		(LeaderType,						ForegroundImage,							BackgroundImage,						PlayDawnOfManAudio)
VALUES	('LEADER_SUK_SENUSRET_III',		'LEADER_SUK_SENUSRET_III_NEUTRAL.dds',		'LEADER_SUK_SENUSRET_III_BACKGROUND',	0);	
--==========================================================================================================================
-- LEADERS
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,								Kind)
VALUES	('LEADER_SUK_SENUSRET_III',			'KIND_LEADER');	
-------------------------------------
-- Leaders
-------------------------------------	
INSERT INTO Leaders	
		(LeaderType,						Name,													InheritFrom,		SceneLayers)
VALUES	('LEADER_SUK_SENUSRET_III',			'LOC_LEADER_SUK_SENUSRET_III_NAME',						'LEADER_DEFAULT',	4);	
-------------------------------------
-- LeaderQuotes
-------------------------------------	
INSERT INTO LeaderQuotes	
		(LeaderType,						Quote)
VALUES	('LEADER_SUK_SENUSRET_III',			'LOC_PEDIA_LEADERS_PAGE_SUK_SENUSRET_III_QUOTE');	
-------------------------------------
-- LeaderTraits
-------------------------------------	
INSERT INTO LeaderTraits	
		(LeaderType,						TraitType)
VALUES	('LEADER_SUK_SENUSRET_III',			'TRAIT_LEADER_SUK_FORTRESS_OF_BUHEN');	
-- -------------------------------------
-- -- FavoredReligions
-- -------------------------------------	
INSERT INTO FavoredReligions	
		(LeaderType,						ReligionType)
SELECT	'LEADER_SUK_SENUSRET_III',			'RELIGION_PESEDJET'
WHERE EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_PESEDJET');
-------------------------------------
-- CityNames
-------------------------------------
INSERT INTO CityNames	
			(CivilizationType,				LeaderType,						SortIndex,	CityName)	
VALUES		('CIVILIZATION_EGYPT',			'LEADER_SUK_SENUSRET_III',		-1,			'LOC_CITY_NAME_SUK_EGYPT_BUHEN'),	
			('CIVILIZATION_EGYPT',			'LEADER_SUK_SENUSRET_III',		-1,			'LOC_CITY_NAME_SUK_EGYPT_SEMNA'),	
			('CIVILIZATION_EGYPT',			'LEADER_SUK_SENUSRET_III',		-1,			'LOC_CITY_NAME_SUK_EGYPT_KUMMA'),	
			('CIVILIZATION_EGYPT',			'LEADER_SUK_SENUSRET_III',		-1,			'LOC_CITY_NAME_SUK_EGYPT_IKEN'),	
			('CIVILIZATION_EGYPT',			'LEADER_SUK_SENUSRET_III',		-1,			'LOC_CITY_NAME_SUK_EGYPT_WAF_CHASTIU'),
			('CIVILIZATION_EGYPT',			'LEADER_SUK_SENUSRET_III',		-1,			'LOC_CITY_NAME_SUK_EGYPT_URONARTI'),	
			('CIVILIZATION_EGYPT',			'LEADER_SUK_SENUSRET_III',		-1,			'LOC_CITY_NAME_SUK_EGYPT_DJER_SETIU'),	
			('CIVILIZATION_EGYPT',			'LEADER_SUK_SENUSRET_III',		-1,			'LOC_CITY_NAME_SUK_EGYPT_DABENARTI');
--==========================================================================================================================
-- TRAITS
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT OR REPLACE INTO Types	
		(Type,													Kind)
VALUES	('TRAIT_LEADER_SUK_FORTRESS_OF_BUHEN',						'KIND_TRAIT');
-------------------------------------			
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,									Name,											Description)
VALUES	('TRAIT_LEADER_SUK_FORTRESS_OF_BUHEN',		'LOC_TRAIT_LEADER_SUK_FORTRESS_OF_BUHEN_NAME',		'LOC_TRAIT_LEADER_SUK_FORTRESS_OF_BUHEN_DESCRIPTION');
-----------------------------------------------------------------------------------
-- The Encampment district and its buildings also provide [ICON_GreatMerchant] Great Merchant Points.
-----------------------------------------------------------------------------------
-- TraitModifiers
-------------------------------------
INSERT INTO TraitModifiers			
		(TraitType,												ModifierId)
VALUES	('TRAIT_LEADER_SUK_FORTRESS_OF_BUHEN', 					'SUK_FORTRESS_OF_BUHEN_ENCAMPMENT');

INSERT INTO TraitModifiers			
		(TraitType,												ModifierId)
SELECT	'TRAIT_LEADER_SUK_FORTRESS_OF_BUHEN', 					'SUK_FORTRESS_OF_BUHEN_ENCAMPMENT_' || BuildingType
FROM Buildings WHERE PrereqDistrict = 'DISTRICT_ENCAMPMENT'
AND BuildingType IN (SELECT BuildingType FROM Building_GreatPersonPoints WHERE GreatPersonClassType = 'GREAT_PERSON_CLASS_GENERAL');
-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers	
		(ModifierId,													ModifierType,												OwnerRequirementSetId, 	SubjectRequirementSetId)
VALUES	('SUK_FORTRESS_OF_BUHEN_ENCAMPMENT',							'MODIFIER_PLAYER_DISTRICTS_ADJUST_GREAT_PERSON_POINTS', 	NULL,					'DISTRICT_IS_ENCAMPMENT');

INSERT INTO Modifiers	
		(ModifierId,												ModifierType,												OwnerRequirementSetId, 	SubjectRequirementSetId)
SELECT	'SUK_FORTRESS_OF_BUHEN_ENCAMPMENT_' || BuildingType,		'MODIFIER_PLAYER_DISTRICTS_ADJUST_GREAT_PERSON_POINTS', 	NULL,					'SUK_FORTRESS_OF_BUHEN_ENCAMPMENT_HAS_' || BuildingType
FROM Buildings WHERE PrereqDistrict = 'DISTRICT_ENCAMPMENT'
AND BuildingType IN (SELECT BuildingType FROM Building_GreatPersonPoints WHERE GreatPersonClassType = 'GREAT_PERSON_CLASS_GENERAL');
-------------------------------------	
-- ModifierArguments	
-------------------------------------	
INSERT INTO ModifierArguments	
		(ModifierId,										Name,						Value)
VALUES	('SUK_FORTRESS_OF_BUHEN_ENCAMPMENT',				'GreatPersonClassType',		'GREAT_PERSON_CLASS_MERCHANT'),
		('SUK_FORTRESS_OF_BUHEN_ENCAMPMENT',				'Amount',					1);

INSERT INTO ModifierArguments	
		(ModifierId,												Name,						Value)
SELECT	'SUK_FORTRESS_OF_BUHEN_ENCAMPMENT_' || BuildingType,		'GreatPersonClassType', 	'GREAT_PERSON_CLASS_MERCHANT'
FROM Building_GreatPersonPoints WHERE GreatPersonClassType = 'GREAT_PERSON_CLASS_GENERAL'
AND BuildingType IN (SELECT BuildingType FROM Buildings WHERE PrereqDistrict = 'DISTRICT_ENCAMPMENT');

INSERT INTO ModifierArguments	
		(ModifierId,												Name,						Value)
SELECT	'SUK_FORTRESS_OF_BUHEN_ENCAMPMENT_' || BuildingType,		'Amount', 					PointsPerTurn
FROM Building_GreatPersonPoints WHERE GreatPersonClassType = 'GREAT_PERSON_CLASS_GENERAL'
AND BuildingType IN (SELECT BuildingType FROM Buildings WHERE PrereqDistrict = 'DISTRICT_ENCAMPMENT');
-------------------------------------			
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,																RequirementSetType)
SELECT	'SUK_FORTRESS_OF_BUHEN_ENCAMPMENT_HAS_' || BuildingType,						'REQUIREMENTSET_TEST_ALL'
FROM Buildings WHERE PrereqDistrict = 'DISTRICT_ENCAMPMENT'
AND BuildingType IN (SELECT BuildingType FROM Building_GreatPersonPoints WHERE GreatPersonClassType = 'GREAT_PERSON_CLASS_GENERAL');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------	
INSERT INTO RequirementSetRequirements
		(RequirementSetId,																RequirementId)
SELECT	'SUK_FORTRESS_OF_BUHEN_ENCAMPMENT_HAS_' || BuildingType,						'SUK_FORTRESS_OF_BUHEN_ENCAMPMENT_HAS_' || BuildingType || '_REQUIREMENT'
FROM Buildings WHERE PrereqDistrict = 'DISTRICT_ENCAMPMENT'
AND BuildingType IN (SELECT BuildingType FROM Building_GreatPersonPoints WHERE GreatPersonClassType = 'GREAT_PERSON_CLASS_GENERAL');

INSERT INTO RequirementSetRequirements
		(RequirementSetId,																RequirementId)
SELECT	'SUK_FORTRESS_OF_BUHEN_ENCAMPMENT_HAS_' || BuildingType,						'REQUIRES_DISTRICT_IS_ENCAMPMENT'
FROM Buildings WHERE PrereqDistrict = 'DISTRICT_ENCAMPMENT'
AND BuildingType IN (SELECT BuildingType FROM Building_GreatPersonPoints WHERE GreatPersonClassType = 'GREAT_PERSON_CLASS_GENERAL');
-------------------------------------
-- Requirements
-------------------------------------
INSERT INTO Requirements
		(RequirementId, 																RequirementType)
SELECT	'SUK_FORTRESS_OF_BUHEN_ENCAMPMENT_HAS_' || BuildingType || '_REQUIREMENT',		'REQUIREMENT_CITY_HAS_BUILDING'		
FROM Buildings WHERE PrereqDistrict = 'DISTRICT_ENCAMPMENT'
AND BuildingType IN (SELECT BuildingType FROM Building_GreatPersonPoints WHERE GreatPersonClassType = 'GREAT_PERSON_CLASS_GENERAL');
-------------------------------------
-- RequirementArguments
-------------------------------------
INSERT INTO RequirementArguments
		(RequirementId, 															Name,					Value)
SELECT	'SUK_FORTRESS_OF_BUHEN_ENCAMPMENT_HAS_' || BuildingType || '_REQUIREMENT', 	'BuildingType',			BuildingType
FROM Buildings WHERE PrereqDistrict = 'DISTRICT_ENCAMPMENT'
AND BuildingType IN (SELECT BuildingType FROM Building_GreatPersonPoints WHERE GreatPersonClassType = 'GREAT_PERSON_CLASS_GENERAL');		
--==========================================================================================================================			
-- Agendas			
--==========================================================================================================================
-- HistoricalAgendas
-------------------------------------	
INSERT INTO HistoricalAgendas	
		(LeaderType,					AgendaType)
VALUES	('LEADER_SUK_SENUSRET_III',		'AGENDA_SUK_SOULS_OF_RE');
-- -------------------------------------
-- -- Agendas			
-- -------------------------------------				
INSERT INTO Agendas				
		(AgendaType,						Name,								Description)
VALUES	('AGENDA_SUK_SOULS_OF_RE',			'LOC_AGENDA_SUK_SOULS_OF_RE_NAME',	'LOC_AGENDA_SUK_SOULS_OF_RE_DESCRIPTION');
-- -------------------------------------			
-- -- AgendaTraits			
-- -------------------------------------				
INSERT INTO AgendaTraits				
		(AgendaType,								TraitType)
VALUES	('AGENDA_SUK_SOULS_OF_RE',					'TRAIT_AGENDA_SUK_SOULS_OF_RE');
-- -------------------------------------
-- -- Types
-- -------------------------------------	
INSERT INTO Types	
		(Type,									Kind)
VALUES	('TRAIT_AGENDA_SUK_SOULS_OF_RE',		'KIND_TRAIT');	
-- -------------------------------------			
-- -- Traits			
-- -------------------------------------				
INSERT INTO Traits				
		(TraitType,								Name,								Description)
VALUES	('TRAIT_AGENDA_SUK_SOULS_OF_RE',		'LOC_AGENDA_SUK_SOULS_OF_RE_NAME',	'LOC_AGENDA_SUK_SOULS_OF_RE_DESCRIPTION');
-- -------------------------------------
-- -- TraitModifiers
-- -------------------------------------
INSERT INTO TraitModifiers			
		(TraitType,											ModifierId)
VALUES	('TRAIT_AGENDA_SUK_SOULS_OF_RE', 					'AGENDA_SUK_SOULS_OF_RE_KUDOS'),
		('TRAIT_AGENDA_SUK_SOULS_OF_RE', 					'AGENDA_SUK_SOULS_OF_RE_WARNING');
-- -------------------------------------
-- -- Modifiers
-- -------------------------------------
INSERT INTO Modifiers	
		(ModifierId,										ModifierType,										SubjectRequirementSetId)
VALUES	('AGENDA_SUK_SOULS_OF_RE_KUDOS',					'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',		'SUK_SOULS_OF_RE_KUDOS'),
		('AGENDA_SUK_SOULS_OF_RE_WARNING',					'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',		'SUK_SOULS_OF_RE_WARNING');
-- -------------------------------------
-- -- ModifierArguments
-- -------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,											Name,							Value)
VALUES	('AGENDA_SUK_SOULS_OF_RE_KUDOS',						'InitialValue',					8),
		('AGENDA_SUK_SOULS_OF_RE_KUDOS',						'StatementKey',					'LOC_DIPLO_KUDO_LEADER_SUK_SENUSRET_III_REASON_ANY'),
		('AGENDA_SUK_SOULS_OF_RE_KUDOS',						'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_SUK_SOULS_OF_RE_KUDOS'),

		('AGENDA_SUK_SOULS_OF_RE_WARNING',						'InitialValue',					-12),
		('AGENDA_SUK_SOULS_OF_RE_WARNING',						'StatementKey',					'LOC_DIPLO_WARNING_LEADER_SUK_SENUSRET_III_REASON_ANY'),
		('AGENDA_SUK_SOULS_OF_RE_WARNING',						'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_SUK_SOULS_OF_RE_WARNING');
-------------------------------------
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,											RequirementSetType)
VALUES	('SUK_SOULS_OF_RE_KUDOS',									'REQUIREMENTSET_TEST_ALL'),
		('SUK_SOULS_OF_RE_WARNING',									'REQUIREMENTSET_TEST_ALL');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,									RequirementId)
VALUES	('SUK_SOULS_OF_RE_KUDOS',							'REQUIRES_HAS_HIGH_STANDING_ARMY'),
		('SUK_SOULS_OF_RE_KUDOS',							'REQUIRES_LEADS_WONDERS'),
		('SUK_SOULS_OF_RE_KUDOS',							'REQUIRES_MAJOR_CIV_OPPONENT'),
		('SUK_SOULS_OF_RE_KUDOS',							'REQUIRES_MET_10_TURNS_AGO'),
				
		('SUK_SOULS_OF_RE_WARNING',							'REQUIRES_HAS_LOW_STANDING_ARMY'),
		('SUK_SOULS_OF_RE_WARNING',							'REQUIRES_LEADS_WONDERS'),
		('SUK_SOULS_OF_RE_WARNING',							'REQUIRES_MAJOR_CIV_OPPONENT'),
		('SUK_SOULS_OF_RE_WARNING',							'REQUIRES_MET_10_TURNS_AGO');
--==========================================================================================================================
-- Mod Support
--==========================================================================================================================
-- StartPosition 
------------------------------------------------------------	
CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);

INSERT INTO StartPosition
		(Civilization,				Leader,							MapName,			X,	Y)
VALUES	('CIVILIZATION_EGYPT',		'LEADER_SUK_SENUSRET_III',		'GiantEarth',		30,	45),
		('CIVILIZATION_EGYPT',		'LEADER_SUK_SENUSRET_III',		'GreatestEarthMap',	58, 38),
		('CIVILIZATION_EGYPT',		'LEADER_SUK_SENUSRET_III',		'LargestEarth',		40, 57);
------------------------------------------------------------
-- Leader_Titles 
------------------------------------------------------------	
CREATE TABLE IF NOT EXISTS 
	Leader_Titles (
	LeaderType  											text 		 											default null,
	GovernmentType											text 													default null,
	LeaderTitle												text													default null,
	PolicyType  											text 		 											default null,
	UseFeminine												boolean													default 0,
	TitleIsFullName											boolean													default 0);	
	
INSERT INTO Leader_Titles
		(LeaderType, 				GovernmentType, LeaderTitle, PolicyType)
SELECT	'LEADER_SUK_SENUSRET_III', 	GovernmentType, LeaderTitle, PolicyType
FROM Leader_Titles WHERE LeaderType = 'LEADER_CLEOPATRA'
AND (GovernmentType IS NOT null OR PolicyType IS NOT null);

DELETE FROM Leader_Titles 
WHERE LeaderType = 'LEADER_SUK_SENUSRET_III' AND GovernmentType IS NOT null
AND GovernmentType NOT IN (SELECT GovernmentType FROM Governments);

DELETE FROM Leader_Titles 
WHERE LeaderType = 'LEADER_SUK_SENUSRET_III' AND PolicyType IS NOT null
AND PolicyType NOT IN (SELECT PolicyType FROM Policies);
--==========================================================================================================================
-- CivilizationLeaders
--==========================================================================================================================
INSERT INTO CivilizationLeaders
		(LeaderType, 					CivilizationType,			CapitalName)
VALUES  ('LEADER_SUK_SENUSRET_III',		'CIVILIZATION_EGYPT',	'LOC_CITY_NAME_SUK_EGYPT_ITJTAWY');
--==========================================================================================================================
--==========================================================================================================================