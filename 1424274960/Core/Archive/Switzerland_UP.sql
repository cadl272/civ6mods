/*
	UI
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------	
	
INSERT INTO Types
		(Type,												Kind				)
VALUES	('PROJECT_CVS_SWITZERLAND_UP',						'KIND_PROJECT'		),
		('BUILDING_CVS_SWITZERLAND_UP_DUMMY',				'KIND_BUILDING'		),
		('MODTYPE_CVS_SWITZERLAND_UP_GRANT_INSPIRATION',	'KIND_MODIFIER'		),	
		('MODTYPE_CVS_SWITZERLAND_UP_ADJUST_INFLUENCE',		'KIND_MODIFIER'		);

-----------------------------------------------
-- Projects
-----------------------------------------------

INSERT INTO Projects	(
		ProjectType,
		Name,
		ShortName,
		Description,
		PopupText,
		Cost,
		CostProgressionModel,
		CostProgressionParam1,
		PrereqTech,
		PrereqCivic,
		PrereqDistrict,
		VisualBuildingType,
		SpaceRace,
		OuterDefenseRepair,
		MaxPlayerInstances,
		AmenitiesWhileActive,
		PrereqResource,
		AdvisorType
		)
SELECT	'PROJECT_CVS_SWITZERLAND_UP', -- ProjectType
		'LOC_PROJECT_CVS_SWITZERLAND_UP_NAME', -- Name		
		'LOC_PROJECT_CVS_SWITZERLAND_UP_SHORTNAME', -- ShortName
		'LOC_PROJECT_CVS_SWITZERLAND_UP_DESCRIPTION', -- Description
		PopupText,
		Cost * 1.5, -- Cost
		CostProgressionModel,
		CostProgressionParam1,
		NULL, -- PrereqTech
		NULL, -- PrereqCivic
		'DISTRICT_CVS_SWITZERLAND_UI', -- PrereqDistrict
		VisualBuildingType,
		SpaceRace,
		OuterDefenseRepair,
		MaxPlayerInstances,
		NULL, -- AmenitiesWhileActive
		NULL, -- PrereqResource
		'ADVISOR_CULTURE' -- AdvisorType
FROM	Projects
WHERE	ProjectType = 'PROJECT_CARNIVAL';

-----------------------------------------------
-- Project_YieldConversions
-----------------------------------------------

INSERT INTO Project_YieldConversions
		(ProjectType,					YieldType,			PercentOfProductionRate	)
VALUES	('PROJECT_CVS_SWITZERLAND_UP',	'YIELD_CULTURE',	30						);

-----------------------------------------------
-- ProjectCompletionModifiers
-----------------------------------------------

INSERT INTO ProjectCompletionModifiers
		(ProjectType,					ModifierId	)
SELECT	'PROJECT_CVS_SWITZERLAND_UP',	'MODIFIER_CVS_SWITZERLAND_UP_INSPIRATION_'||EraType
FROM	Eras;

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,										CollectionType,		EffectType									)
VALUES	('MODTYPE_CVS_SWITZERLAND_UP_GRANT_INSPIRATION',	'COLLECTION_OWNER',	'EFFECT_GRANT_RANDOM_CIVIC_BOOST_BY_ERA'	),
		('MODTYPE_CVS_SWITZERLAND_UP_ADJUST_INFLUENCE',		'COLLECTION_OWNER',	'EFFECT_ADJUST_INFLUENCE_POINTS_PER_TURN'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,											ModifierType,									SubjectRequirementSetId,					RunOnce,	Permanent	)
SELECT	'MODIFIER_CVS_SWITZERLAND_UP_INSPIRATION_'||EraType,	'MODTYPE_CVS_SWITZERLAND_UP_GRANT_INSPIRATION',	'REQSET_CVS_SWITZERLAND_UP_IS_'||EraType,	1,			1
FROM	Eras;

INSERT INTO Modifiers
		(ModifierId,										ModifierType,									SubjectRequirementSetId,	RunOnce,	Permanent	)
VALUES	('MODIFIER_CVS_SWITZERLAND_UP_DUMMY_INFLUENCE',		'MODTYPE_CVS_SWITZERLAND_UP_ADJUST_INFLUENCE',	NULL,						0,			0			);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,											Name,			Value	)
SELECT	'MODIFIER_CVS_SWITZERLAND_UP_INSPIRATION_'||EraType,	'StartEraType',	EraType
FROM	Eras;

INSERT INTO	ModifierArguments
		(ModifierId,											Name,			Value	)
SELECT	'MODIFIER_CVS_SWITZERLAND_UP_INSPIRATION_'||EraType,	'EndEraType',	EraType
FROM	Eras;

INSERT INTO	ModifierArguments
		(ModifierId,											Name,		Value	)
SELECT	'MODIFIER_CVS_SWITZERLAND_UP_INSPIRATION_'||EraType,	'Amount',	1
FROM	Eras;

INSERT INTO	ModifierArguments
		(ModifierId,									Name,		Value	)
VALUES	('MODIFIER_CVS_SWITZERLAND_UP_DUMMY_INFLUENCE',	'Amount',	1		);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
        (RequirementSetId,								RequirementId	)
SELECT	'REQSET_CVS_SWITZERLAND_UP_IS_'||EraType,		'REQ_CVS_SWITZERLAND_UP_IS_'||EraType
FROM	Eras;

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
        (RequirementSetId,							RequirementSetType	)
SELECT	'REQSET_CVS_SWITZERLAND_UP_IS_'||EraType,	'REQUIREMENTSET_TEST_ALL'
FROM	Eras;

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,							RequirementType	)
SELECT	'REQ_CVS_SWITZERLAND_UP_IS_'||EraType,	'REQUIREMENT_GAME_ERA_IS'
FROM	Eras;

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,							Name,		Value	)
SELECT	'REQ_CVS_SWITZERLAND_UP_IS_'||EraType,	'EraType',	EraType
FROM	Eras;
		
-----------------------------------------------
-- Buildings
-----------------------------------------------

INSERT INTO Buildings
		(BuildingType,							Name,											Description,											PrereqDistrict,			Cost,	MustPurchase,	EnabledByReligion,	InternalOnly)
VALUES	('BUILDING_CVS_SWITZERLAND_UP_DUMMY',	'LOC_BUILDING_CVS_SWITZERLAND_UP_DUMMY_NAME',	'LOC_BUILDING_CVS_SWITZERLAND_UP_DUMMY_DESCRIPTION',	'DISTRICT_CITY_CENTER',	1,		1,				1,					1			);

-----------------------------------------------
-- BuildingModifiers
-----------------------------------------------

INSERT INTO BuildingModifiers
		(BuildingType,							ModifierId										)
VALUES	('BUILDING_CVS_SWITZERLAND_UP_DUMMY',	'MODIFIER_CVS_SWITZERLAND_UP_DUMMY_INFLUENCE'	);

-----------------------------------------------
-- CivilopediaPageExcludes
-----------------------------------------------

INSERT INTO CivilopediaPageExcludes
		(SectionId,		PageId								)
VALUES	('BUILDINGS',	'BUILDING_CVS_SWITZERLAND_UP_DUMMY'	);