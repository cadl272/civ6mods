--===================================
-- Improved Specialists
-- by: p0kiehl
--===================================
INSERT INTO Building_CitizenYieldChanges
		(BuildingType,					YieldType,			YieldChange)
VALUES	('BUILDING_HANGAR',				'YIELD_PRODUCTION',	1), -- Aerodrome
		('BUILDING_HYDROELECTRIC_DAM',	'YIELD_FOOD',		1), -- Dam
		('BUILDING_HYDROELECTRIC_DAM',	'YIELD_PRODUCTION',	1), -- Dam
		('BUILDING_MILITARY_ACADEMY',	'YIELD_GOLD',		1), -- Encampment
		('BUILDING_STADIUM',			'YIELD_CULTURE',	1), -- Entertainment Complex
		('BUILDING_STADIUM',			'YIELD_GOLD',		1), -- Entertainment Complex
		('BUILDING_GOV_MILITARY',		'YIELD_SCIENCE',	1), -- Government Plaza
		('BUILDING_GOV_MILITARY',		'YIELD_CULTURE',	1),	-- Government Plaza
		('BUILDING_GOV_MILITARY',		'YIELD_PRODUCTION',	1),	-- Government Plaza
		('BUILDING_GOV_MILITARY',		'YIELD_GOLD',		1),	-- Government Plaza
		('BUILDING_GOV_CULTURE',		'YIELD_SCIENCE',	1), -- Government Plaza
		('BUILDING_GOV_CULTURE',		'YIELD_CULTURE',	1),	-- Government Plaza
		('BUILDING_GOV_CULTURE',		'YIELD_PRODUCTION',	1),	-- Government Plaza
		('BUILDING_GOV_CULTURE',		'YIELD_GOLD',		1),	-- Government Plaza
		('BUILDING_GOV_SCIENCE',		'YIELD_SCIENCE',	1), -- Government Plaza
		('BUILDING_GOV_SCIENCE',		'YIELD_CULTURE',	1),	-- Government Plaza
		('BUILDING_GOV_SCIENCE',		'YIELD_PRODUCTION',	1),	-- Government Plaza
		('BUILDING_GOV_SCIENCE',		'YIELD_GOLD',		1),	-- Government Plaza
		('BUILDING_SEAPORT',			'YIELD_GOLD',		1), -- Harbor
		('BUILDING_FOOD_MARKET',		'YIELD_FOOD',		2), -- Neighborhood
		('BUILDING_SHOPPING_MALL',		'YIELD_FOOD',		2), -- Neighborhood
		('BUILDING_AQUATICS_CENTER',	'YIELD_CULTURE',	1), -- Water Park
		('BUILDING_AQUATICS_CENTER',	'YIELD_GOLD',		1);	-- Water Park
