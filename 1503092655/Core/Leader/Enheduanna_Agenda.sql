/*
	Agenda
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types
		(Type,							Kind			)
VALUES  ('TRAIT_AGENDA_CVS_ENHEDUANNA',	'KIND_TRAIT'	);

-----------------------------------------------
-- Agendas
-----------------------------------------------

INSERT INTO Agendas
		(AgendaType,				Name,								Description								)
VALUES 	('AGENDA_CVS_ENHEDUANNA',	'LOC_AGENDA_CVS_ENHEDUANNA_NAME',	'LOC_AGENDA_CVS_ENHEDUANNA_DESCRIPTION'	);

-----------------------------------------------
-- HistoricalAgendas
-----------------------------------------------

INSERT INTO HistoricalAgendas
		(LeaderType,				AgendaType				)
VALUES 	('LEADER_CVS_ENHEDUANNA',	'AGENDA_CVS_ENHEDUANNA'	);

-----------------------------------------------
-- ExclusiveAgendas
-----------------------------------------------

INSERT INTO ExclusiveAgendas
		(AgendaOne,					AgendaTwo						)
VALUES 	('AGENDA_CVS_ENHEDUANNA',	'AGENDA_DEVOUT'					),
		('AGENDA_CVS_ENHEDUANNA',	'AGENDA_GREAT_PERSON_ADVOCATE'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits				
		(TraitType,						Name,								Description								)
VALUES	('TRAIT_AGENDA_CVS_ENHEDUANNA',	'LOC_AGENDA_CVS_ENHEDUANNA_NAME',	'LOC_AGENDA_CVS_ENHEDUANNA_DESCRIPTION'	);

-----------------------------------------------
-- AgendaTraits
-----------------------------------------------

INSERT INTO AgendaTraits
		(AgendaType,				TraitType						)
VALUES 	('AGENDA_CVS_ENHEDUANNA',	'TRAIT_AGENDA_CVS_ENHEDUANNA'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers
		(TraitType,						ModifierId									)
VALUES	('TRAIT_AGENDA_CVS_ENHEDUANNA',	'AGENDA_MODIFIER_CVS_ENHEDUANNA_UNHAPPY'	),
		('TRAIT_AGENDA_CVS_ENHEDUANNA',	'AGENDA_MODIFIER_CVS_ENHEDUANNA_HAPPY'		);
		
-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers	
		(ModifierId,								ModifierType,									SubjectRequirementSetId			)
VALUES	('AGENDA_MODIFIER_CVS_ENHEDUANNA_UNHAPPY',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_CVS_ENHEDUANNA_UNHAPPY'	),
		('AGENDA_MODIFIER_CVS_ENHEDUANNA_HAPPY',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_CVS_ENHEDUANNA_HAPPY'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,								Name,							Value													)
VALUES	('AGENDA_MODIFIER_CVS_ENHEDUANNA_UNHAPPY',	'InitialValue',					-7														),
		('AGENDA_MODIFIER_CVS_ENHEDUANNA_UNHAPPY',	'ReductionTurns',				7														),
		('AGENDA_MODIFIER_CVS_ENHEDUANNA_UNHAPPY',	'ReductionValue',				-1														),
		('AGENDA_MODIFIER_CVS_ENHEDUANNA_UNHAPPY',	'StatementKey',					'LOC_DIPLO_WARNING_LEADER_CVS_ENHEDUANNA_REASON_ANY'	),
		('AGENDA_MODIFIER_CVS_ENHEDUANNA_UNHAPPY',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_ENHEDUANNA_UNHAPPY'				),
		('AGENDA_MODIFIER_CVS_ENHEDUANNA_HAPPY',	'InitialValue',					12														),
		('AGENDA_MODIFIER_CVS_ENHEDUANNA_HAPPY',	'StatementKey',					'LOC_DIPLO_KUDO_LEADER_CVS_ENHEDUANNA_REASON_ANY'		),
		('AGENDA_MODIFIER_CVS_ENHEDUANNA_HAPPY',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_ENHEDUANNA_HAPPY'				);	

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId							)
VALUES	('REQSET_CVS_ENHEDUANNA_UNHAPPY',		'REQUIRES_MAJOR_CIV_OPPONENT'			),
		('REQSET_CVS_ENHEDUANNA_UNHAPPY',		'REQUIRES_PLAYERS_HAVE_MET'				),
		('REQSET_CVS_ENHEDUANNA_UNHAPPY',		'REQ_CVS_ENHEDUANNA_AGENDA_UNHAPPY_MET'	),
		('REQSET_CVS_ENHEDUANNA_UNHAPPY_MET',	'REQUIRES_LEADS_GREAT_PEOPLE'			),
		('REQSET_CVS_ENHEDUANNA_UNHAPPY_MET',	'REQUIRES_PLAYER_CITY_CONVERTED'		),
		('REQSET_CVS_ENHEDUANNA_HAPPY',			'REQUIRES_MAJOR_CIV_OPPONENT'			),
		('REQSET_CVS_ENHEDUANNA_HAPPY',			'REQUIRES_MET_10_TURNS_AGO'				),
		('REQSET_CVS_ENHEDUANNA_HAPPY',			'REQ_CVS_ENHEDUANNA_AGENDA_HAPPY_MET'	),
		('REQSET_CVS_ENHEDUANNA_HAPPY_MET',		'REQUIRES_SAME_RELIGION'				),
		('REQSET_CVS_ENHEDUANNA_HAPPY_MET',		'REQUIRES_HAS_HIGH_FAITH'				);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType			)
VALUES	('REQSET_CVS_ENHEDUANNA_UNHAPPY',		'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_ENHEDUANNA_UNHAPPY_MET',	'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_CVS_ENHEDUANNA_HAPPY',			'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_ENHEDUANNA_HAPPY_MET',		'REQUIREMENTSET_TEST_ANY'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,								RequirementType,						Inverse	)
VALUES	('REQ_CVS_ENHEDUANNA_AGENDA_UNHAPPY_MET',	'REQUIREMENT_REQUIREMENTSET_IS_MET',	0		),
		('REQ_CVS_ENHEDUANNA_AGENDA_HAPPY_MET',		'REQUIREMENT_REQUIREMENTSET_IS_MET',	0		);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
		
INSERT INTO RequirementArguments
		(RequirementId,								Name,				Value									)
VALUES	('REQ_CVS_ENHEDUANNA_AGENDA_UNHAPPY_MET',	'RequirementSetId',	'REQSET_CVS_ENHEDUANNA_UNHAPPY_MET'		),
		('REQ_CVS_ENHEDUANNA_AGENDA_HAPPY_MET',		'RequirementSetId',	'REQSET_CVS_ENHEDUANNA_HAPPY_MET'		);
		

