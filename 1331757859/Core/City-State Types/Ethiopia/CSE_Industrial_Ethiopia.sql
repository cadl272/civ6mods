/*
	Industrial
	Authors: SeelingCat
*/

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers 
		(TraitType, 					ModifierId															)
VALUES	('MINOR_CIV_INDUSTRIAL_TRAIT',	'MODIFIER_CSE_INDUSTRIAL_WORKSHOP_DISTRICTS_ETHIOPIA'				),
		('MINOR_CIV_INDUSTRIAL_TRAIT',	'MODIFIER_CSE_INDUSTRIAL_FACTORY_DISTRICTS_ETHIOPIA'				),
		('MINOR_CIV_INDUSTRIAL_TRAIT',	'MODIFIER_CSE_INDUSTRIAL_PLANT_DISTRICTS_ETHIOPIA'					),

		('MINOR_CIV_INDUSTRIAL_TRAIT',	'MODIFIER_CSE_INDUSTRIAL_CHANCERY_DISTRICTS_ETHIOPIA'				),
		('MINOR_CIV_INDUSTRIAL_TRAIT',	'MODIFIER_CSE_INDUSTRIAL_CONSULATE_DISTRICTS_ETHIOPIA'				),
		
		('MINOR_CIV_INDUSTRIAL_TRAIT',	'MODIFIER_CSE_INDUSTRIAL_CHANCERY_DISTRICTS_ETHIOPIA_LARGEST'		),
		('MINOR_CIV_INDUSTRIAL_TRAIT',	'MODIFIER_CSE_INDUSTRIAL_CONSULATE_DISTRICTS_ETHIOPIA_LARGEST'		),

		('MINOR_CIV_INDUSTRIAL_TRAIT',	'MODIFIER_CSE_INDUSTRIAL_WORKSHOP_BUILDINGS_ETHIOPIA'				),
		('MINOR_CIV_INDUSTRIAL_TRAIT',	'MODIFIER_CSE_INDUSTRIAL_FACTORY_BUILDINGS_ETHIOPIA'				),
		('MINOR_CIV_INDUSTRIAL_TRAIT',	'MODIFIER_CSE_INDUSTRIAL_PLANT_BUILDINGS_ETHIOPIA'					),

		('MINOR_CIV_INDUSTRIAL_TRAIT',	'MODIFIER_CSE_INDUSTRIAL_CHANCERY_BUILDINGS_ETHIOPIA'				),
		('MINOR_CIV_INDUSTRIAL_TRAIT',	'MODIFIER_CSE_INDUSTRIAL_CONSULATE_BUILDINGS_ETHIOPIA'				),
		
		('MINOR_CIV_INDUSTRIAL_TRAIT',	'MODIFIER_CSE_INDUSTRIAL_CHANCERY_BUILDINGS_ETHIOPIA_LARGEST'		),
		('MINOR_CIV_INDUSTRIAL_TRAIT',	'MODIFIER_CSE_INDUSTRIAL_CONSULATE_BUILDINGS_ETHIOPIA_LARGEST'		);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers 
		(ModifierId,															ModifierType,													SubjectRequirementSetId					)
VALUES	('MODIFIER_CSE_INDUSTRIAL_WORKSHOP_DISTRICTS_ETHIOPIA',					'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_LARGEST_INFLUENCE'			),
		('MODIFIER_CSE_INDUSTRIAL_WORKSHOP_DISTRICTS_MOD_ETHIOPIA',				'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION_CHANGE',		'REQSET_CSE_CITY_HAS_WORKSHOP'			),
		('MODIFIER_CSE_INDUSTRIAL_FACTORY_DISTRICTS_ETHIOPIA',					'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_LARGEST_INFLUENCE'			),
		('MODIFIER_CSE_INDUSTRIAL_FACTORY_DISTRICTS_MOD_ETHIOPIA',				'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION_CHANGE',		'REQSET_CSE_CITY_HAS_FACTORY'			),
		('MODIFIER_CSE_INDUSTRIAL_PLANT_DISTRICTS_ETHIOPIA',					'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_LARGEST_INFLUENCE'			),
		('MODIFIER_CSE_INDUSTRIAL_PLANT_DISTRICTS_MOD_ETHIOPIA',				'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION_CHANGE',		'REQSET_CSE_CITY_HAS_PLANT'				),

		('MODIFIER_CSE_INDUSTRIAL_CHANCERY_DISTRICTS_ETHIOPIA_LARGEST',			'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_LARGEST_INFLUENCE'			),
		('MODIFIER_CSE_INDUSTRIAL_CHANCERY_DISTRICTS_MOD_ETHIOPIA_LARGEST',		'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION_CHANGE',		'REQSET_CSE_CITY_HAS_CHANCERY'			),
		('MODIFIER_CSE_INDUSTRIAL_CONSULATE_DISTRICTS_ETHIOPIA_LARGEST',		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_LARGEST_INFLUENCE'			),
		('MODIFIER_CSE_INDUSTRIAL_CONSULATE_DISTRICTS_MOD_ETHIOPIA_LARGEST',	'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION_CHANGE',		'REQSET_CSE_CITY_HAS_CONSULATE'			),

		('MODIFIER_CSE_INDUSTRIAL_CHANCERY_DISTRICTS_ETHIOPIA',					'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_LARGE_INFLUENCE'			),
		('MODIFIER_CSE_INDUSTRIAL_CHANCERY_DISTRICTS_MOD_ETHIOPIA',				'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION_CHANGE',		'REQSET_CSE_CITY_HAS_CHANCERY'			),
		('MODIFIER_CSE_INDUSTRIAL_CONSULATE_DISTRICTS_ETHIOPIA',				'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_MEDIUM_INFLUENCE'			),
		('MODIFIER_CSE_INDUSTRIAL_CONSULATE_DISTRICTS_MOD_ETHIOPIA',			'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION_CHANGE',		'REQSET_CSE_CITY_HAS_CONSULATE'			),



		('MODIFIER_CSE_INDUSTRIAL_WORKSHOP_BUILDINGS_ETHIOPIA',					'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_LARGEST_INFLUENCE'			),
		('MODIFIER_CSE_INDUSTRIAL_WORKSHOP_BUILDINGS_MOD_ETHIOPIA',				'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION_CHANGE',		'REQSET_CSE_CITY_HAS_WORKSHOP'			),
		('MODIFIER_CSE_INDUSTRIAL_FACTORY_BUILDINGS_ETHIOPIA',					'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_LARGEST_INFLUENCE'			),
		('MODIFIER_CSE_INDUSTRIAL_FACTORY_BUILDINGS_MOD_ETHIOPIA',				'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION_CHANGE',		'REQSET_CSE_CITY_HAS_FACTORY'			),
		('MODIFIER_CSE_INDUSTRIAL_PLANT_BUILDINGS_ETHIOPIA',					'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_LARGEST_INFLUENCE'			),
		('MODIFIER_CSE_INDUSTRIAL_PLANT_BUILDINGS_MOD_ETHIOPIA',				'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION_CHANGE',		'REQSET_CSE_CITY_HAS_PLANT'				),

		('MODIFIER_CSE_INDUSTRIAL_CHANCERY_BUILDINGS_ETHIOPIA_LARGEST',			'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_LARGEST_INFLUENCE'			),
		('MODIFIER_CSE_INDUSTRIAL_CHANCERY_BUILDINGS_MOD_ETHIOPIA_LARGEST',		'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION_CHANGE',		'REQSET_CSE_CITY_HAS_CHANCERY'			),
		('MODIFIER_CSE_INDUSTRIAL_CONSULATE_BUILDINGS_ETHIOPIA_LARGEST',		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_LARGEST_INFLUENCE'			),
		('MODIFIER_CSE_INDUSTRIAL_CONSULATE_BUILDINGS_MOD_ETHIOPIA_LARGEST',	'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION_CHANGE',		'REQSET_CSE_CITY_HAS_CONSULATE'			),

		('MODIFIER_CSE_INDUSTRIAL_CHANCERY_BUILDINGS_ETHIOPIA',					'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_LARGE_INFLUENCE'			),
		('MODIFIER_CSE_INDUSTRIAL_CHANCERY_BUILDINGS_MOD_ETHIOPIA',				'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION_CHANGE',		'REQSET_CSE_CITY_HAS_CHANCERY'			),
		('MODIFIER_CSE_INDUSTRIAL_CONSULATE_BUILDINGS_ETHIOPIA',				'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'PLAYER_HAS_MEDIUM_INFLUENCE'			),
		('MODIFIER_CSE_INDUSTRIAL_CONSULATE_BUILDINGS_MOD_ETHIOPIA',			'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION_CHANGE',		'REQSET_CSE_CITY_HAS_CONSULATE'			);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,															Name,				Value																)
VALUES	('MODIFIER_CSE_INDUSTRIAL_WORKSHOP_DISTRICTS_ETHIOPIA',					'ModifierId',		'MODIFIER_CSE_INDUSTRIAL_WORKSHOP_DISTRICTS_MOD_ETHIOPIA'			),
		('MODIFIER_CSE_INDUSTRIAL_WORKSHOP_DISTRICTS_MOD_ETHIOPIA',				'Amount',			1																	),
		('MODIFIER_CSE_INDUSTRIAL_FACTORY_DISTRICTS_ETHIOPIA',					'ModifierId',		'MODIFIER_CSE_INDUSTRIAL_FACTORY_DISTRICTS_MOD_ETHIOPIA'			),
		('MODIFIER_CSE_INDUSTRIAL_FACTORY_DISTRICTS_MOD_ETHIOPIA',				'Amount',			1																	),
		('MODIFIER_CSE_INDUSTRIAL_PLANT_DISTRICTS_ETHIOPIA',					'ModifierId',		'MODIFIER_CSE_INDUSTRIAL_PLANT_DISTRICTS_MOD_ETHIOPIA'				),
		('MODIFIER_CSE_INDUSTRIAL_PLANT_DISTRICTS_MOD_ETHIOPIA',				'Amount',			1																	),

		('MODIFIER_CSE_INDUSTRIAL_CHANCERY_DISTRICTS_ETHIOPIA',					'ModifierId',		'MODIFIER_CSE_INDUSTRIAL_CHANCERY_DISTRICTS_MOD_ETHIOPIA'			),
		('MODIFIER_CSE_INDUSTRIAL_CHANCERY_DISTRICTS_MOD_ETHIOPIA',				'Amount',			1																	),
		('MODIFIER_CSE_INDUSTRIAL_CONSULATE_DISTRICTS_ETHIOPIA',				'ModifierId',		'MODIFIER_CSE_INDUSTRIAL_CONSULATE_DISTRICTS_MOD_ETHIOPIA'			),
		('MODIFIER_CSE_INDUSTRIAL_CONSULATE_DISTRICTS_MOD_ETHIOPIA',			'Amount',			1																	),

		('MODIFIER_CSE_INDUSTRIAL_CHANCERY_DISTRICTS_ETHIOPIA_LARGEST',			'ModifierId',		'MODIFIER_CSE_INDUSTRIAL_CHANCERY_DISTRICTS_MOD_ETHIOPIA_LARGEST'	),
		('MODIFIER_CSE_INDUSTRIAL_CHANCERY_DISTRICTS_MOD_ETHIOPIA_LARGEST',		'Amount',			3																	),
		('MODIFIER_CSE_INDUSTRIAL_CONSULATE_DISTRICTS_ETHIOPIA_LARGEST',		'ModifierId',		'MODIFIER_CSE_INDUSTRIAL_CONSULATE_DISTRICTS_MOD_ETHIOPIA_LARGEST'	),
		('MODIFIER_CSE_INDUSTRIAL_CONSULATE_DISTRICTS_MOD_ETHIOPIA_LARGEST',	'Amount',			2																	),



		('MODIFIER_CSE_INDUSTRIAL_WORKSHOP_BUILDINGS_ETHIOPIA',					'ModifierId',		'MODIFIER_CSE_INDUSTRIAL_WORKSHOP_BUILDINGS_MOD_ETHIOPIA'			),
		('MODIFIER_CSE_INDUSTRIAL_WORKSHOP_BUILDINGS_MOD_ETHIOPIA',				'Amount',			1																	),
		('MODIFIER_CSE_INDUSTRIAL_FACTORY_BUILDINGS_ETHIOPIA',					'ModifierId',		'MODIFIER_CSE_INDUSTRIAL_FACTORY_BUILDINGS_MOD_ETHIOPIA'			),
		('MODIFIER_CSE_INDUSTRIAL_FACTORY_BUILDINGS_MOD_ETHIOPIA',				'Amount',			1																	),
		('MODIFIER_CSE_INDUSTRIAL_PLANT_BUILDINGS_ETHIOPIA',					'ModifierId',		'MODIFIER_CSE_INDUSTRIAL_PLANT_BUILDINGS_MOD_ETHIOPIA'				),
		('MODIFIER_CSE_INDUSTRIAL_PLANT_BUILDINGS_MOD_ETHIOPIA',				'Amount',			1																	),

		('MODIFIER_CSE_INDUSTRIAL_CHANCERY_BUILDINGS_ETHIOPIA',					'ModifierId',		'MODIFIER_CSE_INDUSTRIAL_CHANCERY_BUILDINGS_MOD_ETHIOPIA'			),
		('MODIFIER_CSE_INDUSTRIAL_CHANCERY_BUILDINGS_MOD_ETHIOPIA',				'Amount',			3																	),
		('MODIFIER_CSE_INDUSTRIAL_CONSULATE_BUILDINGS_ETHIOPIA',				'ModifierId',		'MODIFIER_CSE_INDUSTRIAL_CONSULATE_BUILDINGS_MOD_ETHIOPIA'			),
		('MODIFIER_CSE_INDUSTRIAL_CONSULATE_BUILDINGS_MOD_ETHIOPIA',			'Amount',			2																	),

		('MODIFIER_CSE_INDUSTRIAL_CHANCERY_BUILDINGS_ETHIOPIA_LARGEST',			'ModifierId',		'MODIFIER_CSE_INDUSTRIAL_CHANCERY_BUILDINGS_MOD_ETHIOPIA_LARGEST'	),
		('MODIFIER_CSE_INDUSTRIAL_CHANCERY_BUILDINGS_MOD_ETHIOPIA_LARGEST',		'Amount',			1																	),
		('MODIFIER_CSE_INDUSTRIAL_CONSULATE_BUILDINGS_ETHIOPIA_LARGEST',		'ModifierId',		'MODIFIER_CSE_INDUSTRIAL_CONSULATE_BUILDINGS_MOD_ETHIOPIA_LARGEST'	),
		('MODIFIER_CSE_INDUSTRIAL_CONSULATE_BUILDINGS_MOD_ETHIOPIA_LARGEST',	'Amount',			1																	);

UPDATE	ModifierArguments
SET		Value = 1
WHERE	Name = 'Amount' AND ModifierId = 'MODIFIER_CSE_INDUSTRIAL_CAPITAL_DISTRICTS_MOD';

UPDATE	ModifierArguments
SET		Value = 1
WHERE	Name = 'Amount' AND ModifierId = 'MODIFIER_CSE_INDUSTRIAL_WORKSHOP_DISTRICTS_MOD';

UPDATE	ModifierArguments
SET		Value = 3
WHERE	Name = 'Amount' AND ModifierId = 'MODIFIER_CSE_INDUSTRIAL_PLANT_DISTRICTS_MOD';

UPDATE	ModifierArguments
SET		Value = 1
WHERE	Name = 'Amount' AND ModifierId = 'MODIFIER_CSE_INDUSTRIAL_CAPITAL_BUILDINGS_MOD';

UPDATE	ModifierArguments
SET		Value = 1
WHERE	Name = 'Amount' AND ModifierId = 'MODIFIER_CSE_INDUSTRIAL_WORKSHOP_BUILDINGS_MOD';

UPDATE	ModifierArguments
SET		Value = 3
WHERE	Name = 'Amount' AND ModifierId = 'MODIFIER_CSE_INDUSTRIAL_PLANT_BUILDINGS_MOD';