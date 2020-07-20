--==========================================================================================================================
-- LOADING INFO
--==========================================================================================================================
-- LoadingInfo
-------------------------------------	
INSERT INTO LoadingInfo	
		(LeaderType,					ForegroundImage,						BackgroundImage,					PlayDawnOfManAudio)
VALUES	('LEADER_SUK_KHOSROW_I',		'LEADER_SUK_KHOSROW_I_NEUTRAL.dds',		'LEADER_SUK_KHOSROW_I_BACKGROUND',	0);	
--==========================================================================================================================
-- LEADERS
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,							Kind)
VALUES	('LEADER_SUK_KHOSROW_I',		'KIND_LEADER');	
-------------------------------------
-- Leaders
-------------------------------------	
INSERT INTO Leaders	
		(LeaderType,					Name,												InheritFrom,		SceneLayers)
VALUES	('LEADER_SUK_KHOSROW_I',		'LOC_LEADER_SUK_KHOSROW_I_NAME',					'LEADER_DEFAULT',	4);	
-------------------------------------
-- LeaderQuotes
-------------------------------------	
INSERT INTO LeaderQuotes	
		(LeaderType,					Quote)
VALUES	('LEADER_SUK_KHOSROW_I',		'LOC_PEDIA_LEADERS_PAGE_SUK_KHOSROW_I_QUOTE');	
-------------------------------------
-- LeaderTraits
-------------------------------------	
INSERT INTO LeaderTraits	
		(LeaderType,					TraitType)
VALUES	('LEADER_SUK_KHOSROW_I',		'TRAIT_LEADER_SUK_ARCHWAY_OF_CTESIPHON');	
-- -------------------------------------
-- -- FavoredReligions
-- -------------------------------------	
INSERT INTO FavoredReligions	
		(LeaderType,					ReligionType)
SELECT	'LEADER_SUK_KHOSROW_I',			ReligionType
FROM FavoredReligions WHERE LeaderType = 'LEADER_CYRUS';
--==========================================================================================================================
-- TRAITS
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT OR REPLACE INTO Types	
		(Type,															Kind)
VALUES	('TRAIT_LEADER_SUK_ARCHWAY_OF_CTESIPHON',						'KIND_TRAIT'),
		('SUK_MODIFIER_PLAYER_DISTRICTS_ATTACH_MODIFIER',				'KIND_MODIFIER'),
		('SUK_MODIFIER_PLAYERS_ADJUST_GREAT_PERSON_POINTS_PERCENT',		'KIND_MODIFIER');	
-------------------------------------			
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,										Name,													Description)
VALUES	('TRAIT_LEADER_SUK_ARCHWAY_OF_CTESIPHON',		'LOC_TRAIT_LEADER_SUK_ARCHWAY_OF_CTESIPHON_NAME',		'LOC_TRAIT_LEADER_SUK_ARCHWAY_OF_CTESIPHON_DESCRIPTION');
---------------------------------------------------------------------------------------------------------------
-- Pairidaezas gain +1 [ICON_Production] Production, +1 [ICON_Gold] Gold for each adjacent Wonder.
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
-------------------------------------
INSERT INTO TraitModifiers			
		(TraitType,														ModifierId)
VALUES	('TRAIT_LEADER_SUK_ARCHWAY_OF_CTESIPHON', 						'SUK_ARCHWAY_OF_CTESIPHON_PAIRIDAEZA_GOLD'),
		('TRAIT_LEADER_SUK_ARCHWAY_OF_CTESIPHON', 						'SUK_ARCHWAY_OF_CTESIPHON_PAIRIDAEZA_PRODUCTION');
-------------------------------------		
-- Modifiers
-------------------------------------
INSERT OR REPLACE INTO DynamicModifiers
		(ModifierType,														CollectionType,											EffectType)
VALUES	('SUK_MODIFIER_PLAYER_DISTRICTS_ATTACH_MODIFIER',					'COLLECTION_PLAYER_DISTRICTS',							'EFFECT_ATTACH_MODIFIER'),
		('SUK_MODIFIER_PLAYERS_ADJUST_GREAT_PERSON_POINTS_PERCENT',			'COLLECTION_ALL_PLAYERS',								'EFFECT_ADJUST_GREAT_PERSON_POINTS_PERCENT');
-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers	
		(ModifierId,														ModifierType,											SubjectRequirementSetId)
VALUES	('SUK_ARCHWAY_OF_CTESIPHON_PAIRIDAEZA_GOLD',						'SUK_MODIFIER_PLAYER_DISTRICTS_ATTACH_MODIFIER',		'SUK_PAIRIDAEZA_IS_WONDER'),
		('SUK_ARCHWAY_OF_CTESIPHON_PAIRIDAEZA_PRODUCTION', 					'SUK_MODIFIER_PLAYER_DISTRICTS_ATTACH_MODIFIER',		'SUK_PAIRIDAEZA_IS_WONDER'),
		('SUK_ARCHWAY_OF_CTESIPHON_PAIRIDAEZA_GOLD_MODIFIER',				'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',					'SUK_PAIRIDAEZA_ADJACENT_TO_WONDER'),
		('SUK_ARCHWAY_OF_CTESIPHON_PAIRIDAEZA_PRODUCTION_MODIFIER',			'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',					'SUK_PAIRIDAEZA_ADJACENT_TO_WONDER');
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,													Name,							Value)
VALUES	('SUK_ARCHWAY_OF_CTESIPHON_PAIRIDAEZA_GOLD',					'ModifierId',					'SUK_ARCHWAY_OF_CTESIPHON_PAIRIDAEZA_GOLD_MODIFIER'),
		('SUK_ARCHWAY_OF_CTESIPHON_PAIRIDAEZA_GOLD_MODIFIER',			'YieldType',					'YIELD_GOLD'),
		('SUK_ARCHWAY_OF_CTESIPHON_PAIRIDAEZA_GOLD_MODIFIER',			'Amount',						1),

		('SUK_ARCHWAY_OF_CTESIPHON_PAIRIDAEZA_PRODUCTION',				'ModifierId',					'SUK_ARCHWAY_OF_CTESIPHON_PAIRIDAEZA_PRODUCTION_MODIFIER'),
		('SUK_ARCHWAY_OF_CTESIPHON_PAIRIDAEZA_PRODUCTION_MODIFIER',		'YieldType',					'YIELD_PRODUCTION'),
		('SUK_ARCHWAY_OF_CTESIPHON_PAIRIDAEZA_PRODUCTION_MODIFIER',		'Amount',						1);	
-------------------------------------			
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,											RequirementSetType)
VALUES	('SUK_PAIRIDAEZA_IS_WONDER',								'REQUIREMENTSET_TEST_ALL'),
		('SUK_PAIRIDAEZA_ADJACENT_TO_WONDER',						'REQUIREMENTSET_TEST_ALL');	
-------------------------------------
-- RequirementSetRequirements
-------------------------------------	
INSERT INTO RequirementSetRequirements
		(RequirementSetId,									RequirementId)
VALUES	('SUK_PAIRIDAEZA_IS_WONDER',						'SUK_PAIRIDAEZA_IS_WONDER_REQUIREMENT'),
		('SUK_PAIRIDAEZA_ADJACENT_TO_WONDER',				'SUK_PAIRIDAEZA_IS_ADJACENT'),
		('SUK_PAIRIDAEZA_ADJACENT_TO_WONDER',				'REQUIRES_SUK_IS_PAIRIDAEZA');
-------------------------------------
-- Requirements
-------------------------------------
INSERT INTO Requirements
		(RequirementId, 							RequirementType)
VALUES	('REQUIRES_SUK_IS_PAIRIDAEZA',				'REQUIREMENT_PLOT_IMPROVEMENT_TYPE_MATCHES'),
		('SUK_PAIRIDAEZA_IS_ADJACENT',				'REQUIREMENT_PLOT_ADJACENT_TO_OWNER'),
		('SUK_PAIRIDAEZA_IS_WONDER_REQUIREMENT',	'REQUIREMENT_PLOT_DISTRICT_TYPE_MATCHES');
-------------------------------------
-- RequirementArguments
-------------------------------------
INSERT INTO RequirementArguments
		(RequirementId, 							Name,						Value)
VALUES	('REQUIRES_SUK_IS_PAIRIDAEZA', 				'ImprovementType',			'IMPROVEMENT_PAIRIDAEZA'),
		('SUK_PAIRIDAEZA_IS_WONDER_REQUIREMENT', 	'DistrictType',				'DISTRICT_WONDER'),
		('SUK_PAIRIDAEZA_IS_ADJACENT', 				'MinDistance',				1),
		('SUK_PAIRIDAEZA_IS_ADJACENT', 				'MaxDistance',				1);
---------------------------------------------------------------------------------------------------------------
-- +3% bonus to [ICON_GreatPerson] Great Person point generation for each Wonder you own.
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
-------------------------------------
INSERT INTO TraitModifiers			
		(TraitType,														ModifierId)
VALUES	('TRAIT_LEADER_SUK_ARCHWAY_OF_CTESIPHON', 						'SUK_ARCHWAY_OF_CTESIPHON_GENERAL'),
		('TRAIT_LEADER_SUK_ARCHWAY_OF_CTESIPHON', 						'SUK_ARCHWAY_OF_CTESIPHON_ADMIRAL'),
		('TRAIT_LEADER_SUK_ARCHWAY_OF_CTESIPHON', 						'SUK_ARCHWAY_OF_CTESIPHON_ENGINEER'),
		('TRAIT_LEADER_SUK_ARCHWAY_OF_CTESIPHON', 						'SUK_ARCHWAY_OF_CTESIPHON_MERCHANT'),
		('TRAIT_LEADER_SUK_ARCHWAY_OF_CTESIPHON', 						'SUK_ARCHWAY_OF_CTESIPHON_PROPHET'),
		('TRAIT_LEADER_SUK_ARCHWAY_OF_CTESIPHON', 						'SUK_ARCHWAY_OF_CTESIPHON_SCIENTIST'),
		('TRAIT_LEADER_SUK_ARCHWAY_OF_CTESIPHON', 						'SUK_ARCHWAY_OF_CTESIPHON_WRITER'),
		('TRAIT_LEADER_SUK_ARCHWAY_OF_CTESIPHON', 						'SUK_ARCHWAY_OF_CTESIPHON_ARTIST'),
		('TRAIT_LEADER_SUK_ARCHWAY_OF_CTESIPHON', 						'SUK_ARCHWAY_OF_CTESIPHON_MUSICIAN');
-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers	
		(ModifierId,											ModifierType,													SubjectRequirementSetId)
VALUES	('SUK_ARCHWAY_OF_CTESIPHON_GENERAL',					'SUK_MODIFIER_PLAYER_DISTRICTS_ATTACH_MODIFIER',				'SUK_PAIRIDAEZA_IS_WONDER'),
		('SUK_ARCHWAY_OF_CTESIPHON_GENERAL_MODIFIER',			'SUK_MODIFIER_PLAYERS_ADJUST_GREAT_PERSON_POINTS_PERCENT',		'SUK_ARCHWAY_OF_CTESIPHON_OWNS_WONDER'),

		('SUK_ARCHWAY_OF_CTESIPHON_ADMIRAL',					'SUK_MODIFIER_PLAYER_DISTRICTS_ATTACH_MODIFIER',				'SUK_PAIRIDAEZA_IS_WONDER'),
		('SUK_ARCHWAY_OF_CTESIPHON_ADMIRAL_MODIFIER', 			'SUK_MODIFIER_PLAYERS_ADJUST_GREAT_PERSON_POINTS_PERCENT',		'SUK_ARCHWAY_OF_CTESIPHON_OWNS_WONDER'),
		
		('SUK_ARCHWAY_OF_CTESIPHON_ENGINEER',					'SUK_MODIFIER_PLAYER_DISTRICTS_ATTACH_MODIFIER',				'SUK_PAIRIDAEZA_IS_WONDER'),
		('SUK_ARCHWAY_OF_CTESIPHON_ENGINEER_MODIFIER', 			'SUK_MODIFIER_PLAYERS_ADJUST_GREAT_PERSON_POINTS_PERCENT',		'SUK_ARCHWAY_OF_CTESIPHON_OWNS_WONDER'),

		('SUK_ARCHWAY_OF_CTESIPHON_MERCHANT',					'SUK_MODIFIER_PLAYER_DISTRICTS_ATTACH_MODIFIER',				'SUK_PAIRIDAEZA_IS_WONDER'),
		('SUK_ARCHWAY_OF_CTESIPHON_MERCHANT_MODIFIER', 			'SUK_MODIFIER_PLAYERS_ADJUST_GREAT_PERSON_POINTS_PERCENT',		'SUK_ARCHWAY_OF_CTESIPHON_OWNS_WONDER'),
		
		('SUK_ARCHWAY_OF_CTESIPHON_PROPHET',					'SUK_MODIFIER_PLAYER_DISTRICTS_ATTACH_MODIFIER',				'SUK_PAIRIDAEZA_IS_WONDER'),
		('SUK_ARCHWAY_OF_CTESIPHON_PROPHET_MODIFIER', 			'SUK_MODIFIER_PLAYERS_ADJUST_GREAT_PERSON_POINTS_PERCENT',		'SUK_ARCHWAY_OF_CTESIPHON_OWNS_WONDER'),

		('SUK_ARCHWAY_OF_CTESIPHON_SCIENTIST',					'SUK_MODIFIER_PLAYER_DISTRICTS_ATTACH_MODIFIER',				'SUK_PAIRIDAEZA_IS_WONDER'),
		('SUK_ARCHWAY_OF_CTESIPHON_SCIENTIST_MODIFIER', 		'SUK_MODIFIER_PLAYERS_ADJUST_GREAT_PERSON_POINTS_PERCENT',		'SUK_ARCHWAY_OF_CTESIPHON_OWNS_WONDER'),

		('SUK_ARCHWAY_OF_CTESIPHON_WRITER',						'SUK_MODIFIER_PLAYER_DISTRICTS_ATTACH_MODIFIER',				'SUK_PAIRIDAEZA_IS_WONDER'),
		('SUK_ARCHWAY_OF_CTESIPHON_WRITER_MODIFIER', 			'SUK_MODIFIER_PLAYERS_ADJUST_GREAT_PERSON_POINTS_PERCENT',		'SUK_ARCHWAY_OF_CTESIPHON_OWNS_WONDER'),

		('SUK_ARCHWAY_OF_CTESIPHON_ARTIST',						'SUK_MODIFIER_PLAYER_DISTRICTS_ATTACH_MODIFIER',				'SUK_PAIRIDAEZA_IS_WONDER'),
		('SUK_ARCHWAY_OF_CTESIPHON_ARTIST_MODIFIER', 			'SUK_MODIFIER_PLAYERS_ADJUST_GREAT_PERSON_POINTS_PERCENT',		'SUK_ARCHWAY_OF_CTESIPHON_OWNS_WONDER'),

		('SUK_ARCHWAY_OF_CTESIPHON_MUSICIAN',					'SUK_MODIFIER_PLAYER_DISTRICTS_ATTACH_MODIFIER',				'SUK_PAIRIDAEZA_IS_WONDER'),
		('SUK_ARCHWAY_OF_CTESIPHON_MUSICIAN_MODIFIER', 			'SUK_MODIFIER_PLAYERS_ADJUST_GREAT_PERSON_POINTS_PERCENT',		'SUK_ARCHWAY_OF_CTESIPHON_OWNS_WONDER');
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,										Name,							Value)
VALUES	('SUK_ARCHWAY_OF_CTESIPHON_GENERAL',				'ModifierId',					'SUK_ARCHWAY_OF_CTESIPHON_GENERAL_MODIFIER'),
		('SUK_ARCHWAY_OF_CTESIPHON_GENERAL_MODIFIER',		'GreatPersonClassType',			'GREAT_PERSON_CLASS_GENERAL'),
		('SUK_ARCHWAY_OF_CTESIPHON_GENERAL_MODIFIER',		'Amount',						3),

		('SUK_ARCHWAY_OF_CTESIPHON_ADMIRAL',				'ModifierId',					'SUK_ARCHWAY_OF_CTESIPHON_ADMIRAL_MODIFIER'),
		('SUK_ARCHWAY_OF_CTESIPHON_ADMIRAL_MODIFIER',		'GreatPersonClassType',			'GREAT_PERSON_CLASS_ADMIRAL'),
		('SUK_ARCHWAY_OF_CTESIPHON_ADMIRAL_MODIFIER',		'Amount',						3),

		('SUK_ARCHWAY_OF_CTESIPHON_ENGINEER',				'ModifierId',					'SUK_ARCHWAY_OF_CTESIPHON_ENGINEER_MODIFIER'),
		('SUK_ARCHWAY_OF_CTESIPHON_ENGINEER_MODIFIER',		'GreatPersonClassType',			'GREAT_PERSON_CLASS_ENGINEER'),
		('SUK_ARCHWAY_OF_CTESIPHON_ENGINEER_MODIFIER',		'Amount',						3),

		('SUK_ARCHWAY_OF_CTESIPHON_MERCHANT',				'ModifierId',					'SUK_ARCHWAY_OF_CTESIPHON_MERCHANT_MODIFIER'),
		('SUK_ARCHWAY_OF_CTESIPHON_MERCHANT_MODIFIER',		'GreatPersonClassType',			'GREAT_PERSON_CLASS_MERCHANT'),
		('SUK_ARCHWAY_OF_CTESIPHON_MERCHANT_MODIFIER',		'Amount',						3),

		('SUK_ARCHWAY_OF_CTESIPHON_PROPHET',				'ModifierId',					'SUK_ARCHWAY_OF_CTESIPHON_PROPHET_MODIFIER'),
		('SUK_ARCHWAY_OF_CTESIPHON_PROPHET_MODIFIER',		'GreatPersonClassType',			'GREAT_PERSON_CLASS_PROPHET'),
		('SUK_ARCHWAY_OF_CTESIPHON_PROPHET_MODIFIER',		'Amount',						3),

		('SUK_ARCHWAY_OF_CTESIPHON_SCIENTIST',				'ModifierId',					'SUK_ARCHWAY_OF_CTESIPHON_SCIENTIST_MODIFIER'),
		('SUK_ARCHWAY_OF_CTESIPHON_SCIENTIST_MODIFIER',		'GreatPersonClassType',			'GREAT_PERSON_CLASS_SCIENTIST'),
		('SUK_ARCHWAY_OF_CTESIPHON_SCIENTIST_MODIFIER',		'Amount',						3),

		('SUK_ARCHWAY_OF_CTESIPHON_WRITER',					'ModifierId',					'SUK_ARCHWAY_OF_CTESIPHON_WRITER_MODIFIER'),
		('SUK_ARCHWAY_OF_CTESIPHON_WRITER_MODIFIER',		'GreatPersonClassType',			'GREAT_PERSON_CLASS_WRITER'),
		('SUK_ARCHWAY_OF_CTESIPHON_WRITER_MODIFIER',		'Amount',						3),

		('SUK_ARCHWAY_OF_CTESIPHON_ARTIST',					'ModifierId',					'SUK_ARCHWAY_OF_CTESIPHON_ARTIST_MODIFIER'),
		('SUK_ARCHWAY_OF_CTESIPHON_ARTIST_MODIFIER',		'GreatPersonClassType',			'GREAT_PERSON_CLASS_ARTIST'),
		('SUK_ARCHWAY_OF_CTESIPHON_ARTIST_MODIFIER',		'Amount',						3),

		('SUK_ARCHWAY_OF_CTESIPHON_MUSICIAN',				'ModifierId',					'SUK_ARCHWAY_OF_CTESIPHON_GENERAL_MODIFIER'),
		('SUK_ARCHWAY_OF_CTESIPHON_MUSICIAN_MODIFIER',		'GreatPersonClassType',			'GREAT_PERSON_CLASS_MUSICIAN'),
		('SUK_ARCHWAY_OF_CTESIPHON_MUSICIAN_MODIFIER',		'Amount',						3);
-------------------------------------			
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,											RequirementSetType)
VALUES	('SUK_ARCHWAY_OF_CTESIPHON_OWNS_WONDER',					'REQUIREMENTSET_TEST_ALL');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------	
INSERT INTO RequirementSetRequirements
		(RequirementSetId,									RequirementId)
VALUES	('SUK_ARCHWAY_OF_CTESIPHON_OWNS_WONDER',			'REQUIRES_PLAYER');
--==========================================================================================================================
-- Agendas
--==========================================================================================================================
-- -- HistoricalAgendas
-- -------------------------------------	
INSERT INTO HistoricalAgendas	
		(LeaderType,					AgendaType)
VALUES	('LEADER_SUK_KHOSROW_I',		'AGENDA_SUK_ACADEMY_OF_GONDISHAPUR');
-------------------------------------
-- Agendas			
-------------------------------------				
INSERT INTO Agendas				
		(AgendaType,									Name,											Description)
VALUES	('AGENDA_SUK_ACADEMY_OF_GONDISHAPUR',			'LOC_AGENDA_SUK_ACADEMY_OF_GONDISHAPUR_NAME',	'LOC_AGENDA_SUK_ACADEMY_OF_GONDISHAPUR_DESCRIPTION');
-------------------------------------			
-- AgendaTraits			
-------------------------------------				
INSERT INTO AgendaTraits				
		(AgendaType,									TraitType)
VALUES	('AGENDA_SUK_ACADEMY_OF_GONDISHAPUR',			'TRAIT_AGENDA_SUK_ACADEMY_OF_GONDISHAPUR');
-------------------------------------			
-- ExclusiveAgendas			
-------------------------------------				
INSERT INTO ExclusiveAgendas				
		(AgendaOne,										AgendaTwo)
VALUES	('AGENDA_SUK_ACADEMY_OF_GONDISHAPUR',			'AGENDA_GREAT_PERSON_ADVOCATE'),
		('AGENDA_SUK_ACADEMY_OF_GONDISHAPUR',			'AGENDA_WONDER_ADVOCATE');	
-------------------------------------
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,											Kind)
VALUES	('TRAIT_AGENDA_SUK_ACADEMY_OF_GONDISHAPUR',		'KIND_TRAIT');
-------------------------------------			
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,										Name,											Description)
VALUES	('TRAIT_AGENDA_SUK_ACADEMY_OF_GONDISHAPUR',		'LOC_AGENDA_SUK_ACADEMY_OF_GONDISHAPUR_NAME',	'LOC_AGENDA_SUK_ACADEMY_OF_GONDISHAPUR_DESCRIPTION');
-------------------------------------
-- TraitModifiers
-------------------------------------
INSERT INTO TraitModifiers			
		(TraitType,														ModifierId)
VALUES	('TRAIT_AGENDA_SUK_ACADEMY_OF_GONDISHAPUR', 					'AGENDA_SUK_ACADEMY_OF_GONDISHAPUR_CIVILIZED'),
		('TRAIT_AGENDA_SUK_ACADEMY_OF_GONDISHAPUR', 					'AGENDA_SUK_ACADEMY_OF_GONDISHAPUR_UNCIVILIZED');
-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers	
		(ModifierId,												ModifierType,											SubjectRequirementSetId)
VALUES	('AGENDA_SUK_ACADEMY_OF_GONDISHAPUR_CIVILIZED',				'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',			'SUK_ACADEMY_OF_GONDISHAPUR_CIVILIZED'),
		('AGENDA_SUK_ACADEMY_OF_GONDISHAPUR_UNCIVILIZED',			'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',			'SUK_ACADEMY_OF_GONDISHAPUR_UNCIVILIZED');
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,												Name,							Value)
VALUES	('AGENDA_SUK_ACADEMY_OF_GONDISHAPUR_CIVILIZED',				'InitialValue',					8),
		('AGENDA_SUK_ACADEMY_OF_GONDISHAPUR_CIVILIZED',				'StatementKey',					'LOC_DIPLO_KUDO_LEADER_SUK_KHOSROW_I_REASON_ANY'),
		('AGENDA_SUK_ACADEMY_OF_GONDISHAPUR_CIVILIZED',				'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_SUK_ACADEMY_OF_GONDISHAPUR_CIVILIZED'),

		('AGENDA_SUK_ACADEMY_OF_GONDISHAPUR_UNCIVILIZED',			'InitialValue',					-12),
		('AGENDA_SUK_ACADEMY_OF_GONDISHAPUR_UNCIVILIZED',			'StatementKey',					'LOC_DIPLO_WARNING_LEADER_SUK_KHOSROW_I_REASON_ANY'),
		('AGENDA_SUK_ACADEMY_OF_GONDISHAPUR_UNCIVILIZED',			'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_SUK_ACADEMY_OF_GONDISHAPUR_UNCIVILIZED');
-------------------------------------
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,											RequirementSetType)
VALUES	('SUK_ACADEMY_OF_GONDISHAPUR_CIVILIZED',					'REQUIREMENTSET_TEST_ALL'),
		('SUK_ACADEMY_OF_GONDISHAPUR_UNCIVILIZED',					'REQUIREMENTSET_TEST_ALL');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,									RequirementId)
VALUES	('SUK_ACADEMY_OF_GONDISHAPUR_CIVILIZED',			'REQUIRES_ACADEMY_OF_GONDISHAPUR_HAS_WONDERS'),
		('SUK_ACADEMY_OF_GONDISHAPUR_CIVILIZED',			'REQUIRES_ACADEMY_OF_GONDISHAPUR_HAS_GREAT_PEOPLE'),
		('SUK_ACADEMY_OF_GONDISHAPUR_CIVILIZED',			'REQUIRES_MAJOR_CIV_OPPONENT'),
		('SUK_ACADEMY_OF_GONDISHAPUR_CIVILIZED',			'REQUIRES_MET_10_TURNS_AGO'),

		('SUK_ACADEMY_OF_GONDISHAPUR_UNCIVILIZED',			'REQUIRES_ACADEMY_OF_GONDISHAPUR_LACKS_WONDERS'),
		('SUK_ACADEMY_OF_GONDISHAPUR_UNCIVILIZED',			'REQUIRES_ACADEMY_OF_GONDISHAPUR_LACKS_GREAT_PEOPLE'),
		('SUK_ACADEMY_OF_GONDISHAPUR_UNCIVILIZED',			'REQUIRES_MAJOR_CIV_OPPONENT'),
		('SUK_ACADEMY_OF_GONDISHAPUR_UNCIVILIZED',			'REQUIRES_MET_10_TURNS_AGO');
-- -------------------------------------
-- -- Requirements
-- -------------------------------------
INSERT INTO Requirements
		(RequirementId, 													RequirementType)
VALUES	('REQUIRES_ACADEMY_OF_GONDISHAPUR_HAS_WONDERS',						'REQUIREMENT_PLAYER_GOT_GREAT_PERSON'),	
		('REQUIRES_ACADEMY_OF_GONDISHAPUR_LACKS_WONDERS',					'REQUIREMENT_PLAYER_GOT_GREAT_PERSON'),	
		('REQUIRES_ACADEMY_OF_GONDISHAPUR_HAS_GREAT_PEOPLE',				'REQUIREMENT_PLAYER_BUILT_WONDER'),	
		('REQUIRES_ACADEMY_OF_GONDISHAPUR_LACKS_GREAT_PEOPLE',				'REQUIREMENT_PLAYER_BUILT_WONDER');
-- -------------------------------------
-- -- RequirementArguments
-- -------------------------------------
INSERT INTO RequirementArguments
		(RequirementId, 														Name,					Value)
VALUES	('REQUIRES_ACADEMY_OF_GONDISHAPUR_HAS_WONDERS',							'WonderRatio',			0.5),
		('REQUIRES_ACADEMY_OF_GONDISHAPUR_LACKS_WONDERS',						'WonderRatio',			-0.5),
		('REQUIRES_ACADEMY_OF_GONDISHAPUR_HAS_GREAT_PEOPLE',					'GreatPersonRatio',		0.5),
		('REQUIRES_ACADEMY_OF_GONDISHAPUR_HAS_GREAT_PEOPLE',					'MinimumDelta',			2),
		('REQUIRES_ACADEMY_OF_GONDISHAPUR_LACKS_GREAT_PEOPLE',					'GreatPersonRatio',		-0.5),
		('REQUIRES_ACADEMY_OF_GONDISHAPUR_LACKS_GREAT_PEOPLE',					'MinimumDelta',			2);
--==========================================================================================================================
-- CivilizationLeaders
--==========================================================================================================================
INSERT INTO CivilizationLeaders
		(LeaderType, 				CivilizationType,		CapitalName)
VALUES  ('LEADER_SUK_KHOSROW_I',	'CIVILIZATION_PERSIA',	'LOC_CITY_NAME_SUK_CTESIPHON');
--==========================================================================================================================
--==========================================================================================================================