/*
	Agenda
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types
		(Type,							Kind			)
VALUES  ('TRAIT_AGENDA_CVS_SELEUCUS_I',	'KIND_TRAIT'	);

-----------------------------------------------
-- Agendas
-----------------------------------------------

INSERT INTO Agendas
		(AgendaType,				Name,								Description								)
VALUES 	('AGENDA_CVS_SELEUCUS_I',	'LOC_AGENDA_CVS_SELEUCUS_I_NAME',	'LOC_AGENDA_CVS_SELEUCUS_I_DESCRIPTION'	);

-----------------------------------------------
-- HistoricalAgendas
-----------------------------------------------

INSERT INTO HistoricalAgendas
		(LeaderType,				AgendaType				)
VALUES 	('LEADER_CVS_SELEUCUS_I',	'AGENDA_CVS_SELEUCUS_I'	);

-----------------------------------------------
-- ExclusiveAgendas
-----------------------------------------------

INSERT INTO ExclusiveAgendas
		(AgendaOne,					AgendaTwo				)
VALUES 	('AGENDA_CVS_SELEUCUS_I',	'AGENDA_STANDING_ARMY'	),
		('AGENDA_CVS_SELEUCUS_I',	'AGENDA_PARANOID'		);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits				
		(TraitType,						Name,								Description								)
VALUES	('TRAIT_AGENDA_CVS_SELEUCUS_I',	'LOC_AGENDA_CVS_SELEUCUS_I_NAME',	'LOC_AGENDA_CVS_SELEUCUS_I_DESCRIPTION'	);

-----------------------------------------------
-- AgendaTraits
-----------------------------------------------

INSERT INTO AgendaTraits
		(AgendaType,				TraitType						)
VALUES 	('AGENDA_CVS_SELEUCUS_I',	'TRAIT_AGENDA_CVS_SELEUCUS_I'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers
		(TraitType,						ModifierId									)
VALUES	('TRAIT_AGENDA_CVS_SELEUCUS_I',	'AGENDA_MODIFIER_CVS_SELEUCUS_I_UNHAPPY'	),
		('TRAIT_AGENDA_CVS_SELEUCUS_I',	'AGENDA_MODIFIER_CVS_SELEUCUS_I_HAPPY'		),
		('TRAIT_AGENDA_CVS_SELEUCUS_I',	'AGENDA_MODIFIER_CVS_SELEUCUS_I_HAPPY_2'	),
		('TRAIT_AGENDA_CVS_SELEUCUS_I',	'AGENDA_MODIFIER_CVS_SELEUCUS_I_HAPPY_3'	);
		
-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers	
		(ModifierId,								ModifierType,									SubjectRequirementSetId			)
VALUES	('AGENDA_MODIFIER_CVS_SELEUCUS_I_UNHAPPY',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_CVS_SELEUCUS_I_UNHAPPY'	),
		('AGENDA_MODIFIER_CVS_SELEUCUS_I_HAPPY',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_CVS_SELEUCUS_I_HAPPY'	),
		('AGENDA_MODIFIER_CVS_SELEUCUS_I_HAPPY_2',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_CVS_SELEUCUS_I_HAPPY_2'	),
		('AGENDA_MODIFIER_CVS_SELEUCUS_I_HAPPY_3',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_CVS_SELEUCUS_I_HAPPY_3'	);
		
-----------------------------------------------	
-- ModifierStrings
-----------------------------------------------	
INSERT INTO ModifierStrings
		(ModifierId,										Context,		Text								)
VALUES	('AGENDA_MODIFIER_CVS_SELEUCUS_I_UNHAPPY',			'Sample',		'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	),
		('AGENDA_MODIFIER_CVS_SELEUCUS_I_HAPPY',			'Sample',		'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	),
		('AGENDA_MODIFIER_CVS_SELEUCUS_I_HAPPY_2',			'Sample',		'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	),
		('AGENDA_MODIFIER_CVS_SELEUCUS_I_HAPPY_3',			'Sample',		'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,								Name,							Value													)
VALUES	('AGENDA_MODIFIER_CVS_SELEUCUS_I_UNHAPPY',	'InitialValue',					-7														),
		('AGENDA_MODIFIER_CVS_SELEUCUS_I_UNHAPPY',	'ReductionTurns',				7														),
		('AGENDA_MODIFIER_CVS_SELEUCUS_I_UNHAPPY',	'ReductionValue',				-1														),
		('AGENDA_MODIFIER_CVS_SELEUCUS_I_UNHAPPY',	'StatementKey',					'LOC_DIPLO_WARNING_LEADER_CVS_SELEUCUS_I_REASON_ANY'	),
		('AGENDA_MODIFIER_CVS_SELEUCUS_I_UNHAPPY',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_SELEUCUS_I_UNHAPPY'				),
		('AGENDA_MODIFIER_CVS_SELEUCUS_I_HAPPY',	'InitialValue',					5														),
		('AGENDA_MODIFIER_CVS_SELEUCUS_I_HAPPY',	'StatementKey',					'LOC_DIPLO_KUDO_LEADER_CVS_SELEUCUS_I_REASON_ANY'		),
		('AGENDA_MODIFIER_CVS_SELEUCUS_I_HAPPY',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_SELEUCUS_I_HAPPY'				),
		('AGENDA_MODIFIER_CVS_SELEUCUS_I_HAPPY_2',	'InitialValue',					3														),
		('AGENDA_MODIFIER_CVS_SELEUCUS_I_HAPPY_2',	'StatementKey',					'LOC_DIPLO_KUDO_LEADER_CVS_SELEUCUS_I_REASON_ANY'		),
		('AGENDA_MODIFIER_CVS_SELEUCUS_I_HAPPY_2',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_SELEUCUS_I_HAPPY'				),
		('AGENDA_MODIFIER_CVS_SELEUCUS_I_HAPPY_3',	'InitialValue',					3														),
		('AGENDA_MODIFIER_CVS_SELEUCUS_I_HAPPY_3',	'StatementKey',					'LOC_DIPLO_KUDO_LEADER_CVS_SELEUCUS_I_REASON_ANY'		),
		('AGENDA_MODIFIER_CVS_SELEUCUS_I_HAPPY_3',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_SELEUCUS_I_HAPPY'				);	

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId									)
VALUES	('REQSET_CVS_SELEUCUS_I_UNHAPPY',			'REQUIRES_MAJOR_CIV_OPPONENT'					),
		('REQSET_CVS_SELEUCUS_I_UNHAPPY',			'REQUIRES_MET_30_TURNS_AGO'						),
		('REQSET_CVS_SELEUCUS_I_UNHAPPY',			'REQUIRES_HAS_HIGH_STANDING_ARMY'				),
		('REQSET_CVS_SELEUCUS_I_UNHAPPY',			'REQUIRES_PLAYER_AT_PEACE'						),
		('REQSET_CVS_SELEUCUS_I_HAPPY',				'REQUIRES_MAJOR_CIV_OPPONENT'					),
		('REQSET_CVS_SELEUCUS_I_HAPPY',				'REQUIRES_MET_10_TURNS_AGO'						),
		('REQSET_CVS_SELEUCUS_I_HAPPY',				'REQUIRES_HAS_HIGH_INCOME'						),
		('REQSET_CVS_SELEUCUS_I_HAPPY',				'REQ_CVS_SELEUCUS_I_AGENDA_BARRACKS_STABLE_MET'	),
		('REQSET_CVS_SELEUCUS_I_HAPPY_2',			'REQUIRES_MAJOR_CIV_OPPONENT'					),
		('REQSET_CVS_SELEUCUS_I_HAPPY_2',			'REQUIRES_MET_10_TURNS_AGO'						),
		('REQSET_CVS_SELEUCUS_I_HAPPY_2',			'REQUIRES_HAS_HIGH_INCOME'						),
		('REQSET_CVS_SELEUCUS_I_HAPPY_2',			'REQ_CVS_SELEUCUS_I_AGENDA_ARMORY'				),
		('REQSET_CVS_SELEUCUS_I_HAPPY_3',			'REQUIRES_MAJOR_CIV_OPPONENT'					),
		('REQSET_CVS_SELEUCUS_I_HAPPY_3',			'REQUIRES_MET_10_TURNS_AGO'						),
		('REQSET_CVS_SELEUCUS_I_HAPPY_3',			'REQUIRES_HAS_HIGH_INCOME'						),
		('REQSET_CVS_SELEUCUS_I_HAPPY_3',			'REQ_CVS_SELEUCUS_I_AGENDA_MILITARY_ACADEMY'	),
		('REQSET_CVS_SELEUCUS_I_BARRACKS_STABLE',	'REQ_CVS_SELEUCUS_I_AGENDA_BARRACKS'			),
		('REQSET_CVS_SELEUCUS_I_BARRACKS_STABLE',	'REQ_CVS_SELEUCUS_I_AGENDA_STABLE'				);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType			)
VALUES	('REQSET_CVS_SELEUCUS_I_UNHAPPY',			'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_SELEUCUS_I_HAPPY',				'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_SELEUCUS_I_HAPPY_2',			'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_SELEUCUS_I_HAPPY_3',			'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_SELEUCUS_I_BARRACKS_STABLE',	'REQUIREMENTSET_TEST_ANY'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,										RequirementType									)
VALUES	('REQ_CVS_SELEUCUS_I_AGENDA_BARRACKS_STABLE_MET',	'REQUIREMENT_REQUIREMENTSET_IS_MET'				),
		('REQ_CVS_SELEUCUS_I_AGENDA_BARRACKS',				'REQUIREMENT_PLAYER_HAS_AT_LEAST_NUM_BUILDINGS'	),
		('REQ_CVS_SELEUCUS_I_AGENDA_STABLE',				'REQUIREMENT_PLAYER_HAS_AT_LEAST_NUM_BUILDINGS'	),
		('REQ_CVS_SELEUCUS_I_AGENDA_ARMORY',				'REQUIREMENT_PLAYER_HAS_AT_LEAST_NUM_BUILDINGS'	),
		('REQ_CVS_SELEUCUS_I_AGENDA_MILITARY_ACADEMY',		'REQUIREMENT_PLAYER_HAS_AT_LEAST_NUM_BUILDINGS'	);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,										Name,				Value									)
VALUES	('REQ_CVS_SELEUCUS_I_AGENDA_BARRACKS_STABLE_MET',	'RequirementSetId',	'REQSET_CVS_SELEUCUS_I_BARRACKS_STABLE'	),
		('REQ_CVS_SELEUCUS_I_AGENDA_BARRACKS',				'BuildingType',		'BUILDING_BARRACKS'						),
		('REQ_CVS_SELEUCUS_I_AGENDA_BARRACKS',				'Amount',			3										),
		('REQ_CVS_SELEUCUS_I_AGENDA_STABLE',				'BuildingType',		'BUILDING_STABLE'						),	
		('REQ_CVS_SELEUCUS_I_AGENDA_STABLE',				'Amount',			3										),
		('REQ_CVS_SELEUCUS_I_AGENDA_ARMORY',				'BuildingType',		'BUILDING_ARMORY'						),
		('REQ_CVS_SELEUCUS_I_AGENDA_ARMORY',				'Amount',			5										),
		('REQ_CVS_SELEUCUS_I_AGENDA_MILITARY_ACADEMY',		'BuildingType',		'BUILDING_MILITARY_ACADEMY'				),
		('REQ_CVS_SELEUCUS_I_AGENDA_MILITARY_ACADEMY',		'Amount',			7										);