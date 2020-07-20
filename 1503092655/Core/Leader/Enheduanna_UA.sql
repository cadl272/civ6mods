/*
	UA
	Credits: Chrisy15, ChimpanG
*/
/*
UPDATE GlobalParameters
SET Value = 2
WHERE Name = 'EXPERIENCE_NEEDED_FOR_NEXT_LEVEL_MULTIPLIER';
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,												Kind			)
VALUES	('TRAIT_LEADER_CVS_ENHEDUANNA_UA',					'KIND_TRAIT'	),
		('MODTYPE_CVS_ENHEDUANNA_UA_ADJUST_GW_YIELD',		'KIND_MODIFIER'	),
		('MODTYPE_CVS_ENHEDUANNA_UA_ADJUST_GW_SLOTS',		'KIND_MODIFIER'	),
		('MODTYPE_CVS_ENHEDUANNA_UA_ADJUST_CONQ_SLOTS',		'KIND_MODIFIER'	),
		('MODTYPE_CVS_ENHEDUANNA_UA_DISTRICT_AMENITIES',	'KIND_MODIFIER'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO	Traits
		(TraitType,							Name,										Description											)
VALUES	('TRAIT_LEADER_CVS_ENHEDUANNA_UA',	'LOC_TRAIT_LEADER_CVS_ENHEDUANNA_UA_NAME',	'LOC_TRAIT_LEADER_CVS_ENHEDUANNA_UA_DESCRIPTION'	);
		
-----------------------------------------------
-- LeaderTraits
-----------------------------------------------

INSERT INTO	LeaderTraits
		(LeaderType,				TraitType							)
VALUES	('LEADER_CVS_ENHEDUANNA',	'TRAIT_LEADER_CVS_ENHEDUANNA_UA'	),
		('LEADER_CVS_ENHEDUANNA',	'TRAIT_LEADER_RELIGIOUS_MAJOR_CIV'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers
		(TraitType,							ModifierId										)	
VALUES	('TRAIT_LEADER_CVS_ENHEDUANNA_UA',	'MODIFIER_CVS_ENHEDUANNA_UA_GW_FAITH'			),
		('TRAIT_LEADER_CVS_ENHEDUANNA_UA',	'MODIFIER_CVS_ENHEDUANNA_UA_DISTRICT_AMENITIES'	);

INSERT INTO	TraitModifiers
		(TraitType,							ModifierId	)	
SELECT	'TRAIT_LEADER_CVS_ENHEDUANNA_UA',	'MODIFIER_CVS_ENHEDUANNA_UA_GW_SLOTS_'||BuildingType	
FROM	Buildings
WHERE	PrereqDistrict = 'DISTRICT_HOLY_SITE';

INSERT INTO	TraitModifiers
		(TraitType,							ModifierId	)	
SELECT	'TRAIT_LEADER_CVS_ENHEDUANNA_UA',	'MODIFIER_CVS_ENHEDUANNA_UA_CONQ_SLOTS_'||BuildingType	
FROM	Buildings
WHERE	PrereqDistrict = 'DISTRICT_HOLY_SITE';

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,										CollectionType,							EffectType										)
VALUES	('MODTYPE_CVS_ENHEDUANNA_UA_ADJUST_GW_YIELD',		'COLLECTION_PLAYER_CITIES',				'EFFECT_ADJUST_CITY_GREATWORK_YIELD'			),
		('MODTYPE_CVS_ENHEDUANNA_UA_ADJUST_GW_SLOTS',		'COLLECTION_PLAYER_CITIES',				'EFFECT_ADJUST_EXTRA_GREAT_WORK_SLOTS'			),
		('MODTYPE_CVS_ENHEDUANNA_UA_ADJUST_CONQ_SLOTS',		'COLLECTION_PLAYER_CAPTURED_CITIES',	'EFFECT_ADJUST_EXTRA_GREAT_WORK_SLOTS'			),
		('MODTYPE_CVS_ENHEDUANNA_UA_DISTRICT_AMENITIES',	'COLLECTION_PLAYER_DISTRICTS',	'EFFECT_ADJUST_DISTRICT_EXTRA_ENTERTAINMENT'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,										ModifierType,										SubjectRequirementSetId								)
VALUES	('MODIFIER_CVS_ENHEDUANNA_UA_GW_FAITH',				'MODTYPE_CVS_ENHEDUANNA_UA_ADJUST_GW_YIELD',		NULL												),
		('MODIFIER_CVS_ENHEDUANNA_UA_DISTRICT_AMENITIES',	'MODTYPE_CVS_ENHEDUANNA_UA_DISTRICT_AMENITIES',		'REQSET_CVS_ENHEDUANNA_UA_DISTRICT_IS_HOLY_SITE'	);

INSERT INTO	Modifiers
		(ModifierId,											ModifierType,									SubjectRequirementSetId	)
SELECT	'MODIFIER_CVS_ENHEDUANNA_UA_GW_SLOTS_'||BuildingType,	'MODTYPE_CVS_ENHEDUANNA_UA_ADJUST_GW_SLOTS',	NULL
FROM	Buildings
WHERE	PrereqDistrict = 'DISTRICT_HOLY_SITE';

INSERT INTO	Modifiers
		(ModifierId,											ModifierType,									SubjectRequirementSetId	)
SELECT	'MODIFIER_CVS_ENHEDUANNA_UA_CONQ_SLOTS_'||BuildingType,	'MODTYPE_CVS_ENHEDUANNA_UA_ADJUST_CONQ_SLOTS',	NULL
FROM	Buildings
WHERE	PrereqDistrict = 'DISTRICT_HOLY_SITE';

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,										Name,					Value						)
VALUES	('MODIFIER_CVS_ENHEDUANNA_UA_GW_FAITH',				'GreatWorkObjectType',	'GREATWORKOBJECT_WRITING'	),
		('MODIFIER_CVS_ENHEDUANNA_UA_GW_FAITH',				'YieldType',			'YIELD_FAITH'				),
		('MODIFIER_CVS_ENHEDUANNA_UA_GW_FAITH',				'YieldChange',			2							),
		('MODIFIER_CVS_ENHEDUANNA_UA_DISTRICT_AMENITIES',	'Amount',				1							);

INSERT INTO	ModifierArguments
		(ModifierId,											Name,			Value	)
SELECT	'MODIFIER_CVS_ENHEDUANNA_UA_GW_SLOTS_'||BuildingType,	'BuildingType',	BuildingType
FROM	Buildings
WHERE	PrereqDistrict = 'DISTRICT_HOLY_SITE';

INSERT INTO	ModifierArguments
		(ModifierId,											Name,					Value	)
SELECT	'MODIFIER_CVS_ENHEDUANNA_UA_GW_SLOTS_'||BuildingType,	'GreatWorkSlotType',	'GREATWORKSLOT_WRITING'
FROM	Buildings
WHERE	PrereqDistrict = 'DISTRICT_HOLY_SITE';

INSERT INTO	ModifierArguments
		(ModifierId,											Name,		Value	)
SELECT	'MODIFIER_CVS_ENHEDUANNA_UA_GW_SLOTS_'||BuildingType,	'Amount',	1
FROM	Buildings
WHERE	PrereqDistrict = 'DISTRICT_HOLY_SITE';

INSERT INTO	ModifierArguments
		(ModifierId,											Name,			Value	)
SELECT	'MODIFIER_CVS_ENHEDUANNA_UA_CONQ_SLOTS_'||BuildingType,	'BuildingType',	BuildingType
FROM	Buildings
WHERE	PrereqDistrict = 'DISTRICT_HOLY_SITE';

INSERT INTO	ModifierArguments
		(ModifierId,											Name,					Value	)
SELECT	'MODIFIER_CVS_ENHEDUANNA_UA_CONQ_SLOTS_'||BuildingType,	'GreatWorkSlotType',	'GREATWORKSLOT_WRITING'
FROM	Buildings
WHERE	PrereqDistrict = 'DISTRICT_HOLY_SITE';

INSERT INTO	ModifierArguments
		(ModifierId,											Name,		Value	)
SELECT	'MODIFIER_CVS_ENHEDUANNA_UA_CONQ_SLOTS_'||BuildingType,	'Amount',	1
FROM	Buildings
WHERE	PrereqDistrict = 'DISTRICT_HOLY_SITE';

CREATE TRIGGER IF NOT EXISTS C15_Akkad_En_HolySiteBuildings
AFTER INSERT ON Buildings
WHEN NEW.PrereqDistrict = 'DISTRICT_HOLY_SITE'
BEGIN
	INSERT OR REPLACE INTO Modifiers
			(ModifierId,												ModifierType)
	VALUES	('MODIFIER_CVS_ENHEDUANNA_UA_GW_SLOTS_'||NEW.BuildingType,	'MODTYPE_CVS_ENHEDUANNA_UA_ADJUST_GW_SLOTS');
	
	INSERT OR REPLACE INTO	ModifierArguments
			(ModifierId,												Name,					Value)
	VALUES	('MODIFIER_CVS_ENHEDUANNA_UA_GW_SLOTS_'||NEW.BuildingType,	'BuildingType',			NEW.BuildingType),
			('MODIFIER_CVS_ENHEDUANNA_UA_GW_SLOTS_'||NEW.BuildingType,	'GreatWorkSlotType',	'GREATWORKSLOT_WRITING'),
			('MODIFIER_CVS_ENHEDUANNA_UA_GW_SLOTS_'||NEW.BuildingType,	'Amount',				1);

		INSERT OR REPLACE INTO Modifiers
			(ModifierId,												ModifierType)
	VALUES	('MODIFIER_CVS_ENHEDUANNA_UA_CONQ_SLOTS_'||NEW.BuildingType,	'MODTYPE_CVS_ENHEDUANNA_UA_ADJUST_GW_SLOTS');
	
	INSERT OR REPLACE INTO	ModifierArguments
			(ModifierId,												Name,					Value)
	VALUES	('MODIFIER_CVS_ENHEDUANNA_UA_CONQ_SLOTS_'||NEW.BuildingType,	'BuildingType',			NEW.BuildingType),
			('MODIFIER_CVS_ENHEDUANNA_UA_CONQ_SLOTS_'||NEW.BuildingType,	'GreatWorkSlotType',	'GREATWORKSLOT_WRITING'),
			('MODIFIER_CVS_ENHEDUANNA_UA_CONQ_SLOTS_'||NEW.BuildingType,	'Amount',				1);

END;

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements	
		(RequirementSetId,									RequirementId									)
VALUES	('REQSET_CVS_ENHEDUANNA_UA_DISTRICT_IS_HOLY_SITE',	'REQ_CVS_ENHEDUANNA_UA_DISTRICT_IS_HOLY_SITE'	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,									RequirementSetType			)
VALUES	('REQSET_CVS_ENHEDUANNA_UA_DISTRICT_IS_HOLY_SITE',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,									RequirementType						)
VALUES	('REQ_CVS_ENHEDUANNA_UA_DISTRICT_IS_HOLY_SITE',	'REQUIREMENT_DISTRICT_TYPE_MATCHES'	);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
		
INSERT INTO RequirementArguments
		(RequirementId,									Name,			Value					)
VALUES	('REQ_CVS_ENHEDUANNA_UA_DISTRICT_IS_HOLY_SITE',	'DistrictType',	'DISTRICT_HOLY_SITE'	);
		

