/*
	UI
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------	

INSERT INTO Types
		(Type,										Kind				)
VALUES	('PROJECT_CVS_TAINO_UP',					'KIND_PROJECT'		),
		('BUILDING_CVS_TAINO_UP_DUMMY',				'KIND_BUILDING'		),
		('MODTYPE_CVS_TAINO_UP_ADJUST_INFLUENCE',	'KIND_MODIFIER'		);
		
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
SELECT	'PROJECT_CVS_TAINO_UP', -- ProjectType
		'LOC_PROJECT_CVS_TAINO_UP_NAME', -- Name		
		'LOC_PROJECT_CVS_TAINO_UP_SHORTNAME', -- ShortName
		'LOC_PROJECT_CVS_TAINO_UP_DESCRIPTION', -- Description
		PopupText,
		Cost,
		CostProgressionModel,
		CostProgressionParam1,
		NULL, -- PrereqTech
		NULL, -- PrereqCivic
		'DISTRICT_CVS_TAINO_UI', -- PrereqDistrict
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
		(ProjectType,				YieldType,		PercentOfProductionRate	)
VALUES	('PROJECT_CVS_TAINO_UP',	'YIELD_FAITH',	15						);

-----------------------------------------------
-- Project_GreatPersonPoints
-----------------------------------------------

INSERT INTO Project_GreatPersonPoints
		(ProjectType,				GreatPersonClassType,			Points,		PointProgressionModel,				PointProgressionParam1	)
VALUES	('PROJECT_CVS_TAINO_UP',	'GREAT_PERSON_CLASS_WRITER',	5,			'COST_PROGRESSION_GAME_PROGRESS',	800						),
		('PROJECT_CVS_TAINO_UP',	'GREAT_PERSON_CLASS_ARTIST',	5,			'COST_PROGRESSION_GAME_PROGRESS',	800						),
		('PROJECT_CVS_TAINO_UP',	'GREAT_PERSON_CLASS_MUSICIAN',	5,			'COST_PROGRESSION_GAME_PROGRESS',	800						);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,								CollectionType,		EffectType									)
VALUES	('MODTYPE_CVS_TAINO_UP_ADJUST_INFLUENCE',	'COLLECTION_OWNER',	'EFFECT_ADJUST_INFLUENCE_POINTS_PER_TURN'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,								ModifierType,								SubjectRequirementSetId,	RunOnce,	Permanent	)
VALUES	('MODIFIER_CVS_TAINO_UP_ADJUST_INFLUENCE',	'MODTYPE_CVS_TAINO_UP_ADJUST_INFLUENCE',	NULL,						1,			1			);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,								Name,		Value	)
VALUES	('MODIFIER_CVS_TAINO_UP_ADJUST_INFLUENCE',	'Amount',	1		);

-----------------------------------------------
-- Buildings
-----------------------------------------------

INSERT INTO Buildings
		(BuildingType,					Name,									Description,									PrereqDistrict,			Cost,	MustPurchase,	EnabledByReligion,	InternalOnly)
VALUES	('BUILDING_CVS_TAINO_UP_DUMMY',	'LOC_BUILDING_CVS_TAINO_UP_DUMMY_NAME',	'LOC_BUILDING_CVS_TAINO_UP_DUMMY_DESCRIPTION',	'DISTRICT_CITY_CENTER',	1,		1,				1,					1			);

-----------------------------------------------
-- BuildingModifiers
-----------------------------------------------

INSERT INTO BuildingModifiers
		(BuildingType,					ModifierId									)
VALUES	('BUILDING_CVS_TAINO_UP_DUMMY',	'MODIFIER_CVS_TAINO_UP_ADJUST_INFLUENCE'	);