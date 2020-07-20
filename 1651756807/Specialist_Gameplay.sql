--===================================
-- Improved Specialists
-- by: p0kiehl
--===================================	
-- Districts
-------------------------------------	
UPDATE Districts SET CitizenSlots='2' WHERE DistrictType='DISTRICT_AQUEDUCT';
UPDATE Districts SET CitizenSlots='2' WHERE DistrictType='DISTRICT_BATH';
UPDATE Districts SET CitizenSlots='1' WHERE DistrictType='DISTRICT_NEIGHBORHOOD';
UPDATE Districts SET CitizenSlots='1' WHERE DistrictType='DISTRICT_MBANZA';
UPDATE Districts SET CitizenSlots='2' WHERE DistrictType='DISTRICT_CANAL';
UPDATE Districts SET CitizenSlots='1' WHERE DistrictType='DISTRICT_DAM';
-------------------------------------
-- Buildings
-------------------------------------	
UPDATE Buildings SET CitizenSlots='1' WHERE PrereqDistrict='DISTRICT_ENTERTAINMENT_COMPLEX';
UPDATE Buildings SET CitizenSlots='1' WHERE PrereqDistrict='DISTRICT_AQUEDUCT'; --for modded buildings
UPDATE Buildings SET CitizenSlots='2' WHERE PrereqDistrict='DISTRICT_NEIGHBORHOOD';
UPDATE Buildings SET CitizenSlots='1' WHERE PrereqDistrict='DISTRICT_AERODROME';
UPDATE Buildings SET CitizenSlots='1' WHERE PrereqDistrict='DISTRICT_GOVERNMENT';
UPDATE Buildings SET CitizenSlots='1' WHERE PrereqDistrict='DISTRICT_WATER_ENTERTAINMENT_COMPLEX';
UPDATE Buildings SET CitizenSlots='2' WHERE PrereqDistrict='DISTRICT_DAM';
-------------------------------------
-- District_CitizenYieldChanges
-------------------------------------	
UPDATE District_CitizenYieldChanges SET YieldChange=YieldChange+1;
UPDATE District_CitizenYieldChanges	SET YieldChange=YieldChange+1 WHERE DistrictType='DISTRICT_COMMERCIAL_HUB' OR DistrictType='DISTRICT_SUGUBA';

INSERT OR REPLACE INTO District_CitizenYieldChanges
		(DistrictType,								YieldType,			YieldChange)
VALUES	('DISTRICT_ENTERTAINMENT_COMPLEX',			'YIELD_CULTURE',	2),
		('DISTRICT_ENTERTAINMENT_COMPLEX',			'YIELD_GOLD',		3),
		('DISTRICT_AQUEDUCT',						'YIELD_FOOD',		3),
		('DISTRICT_AQUEDUCT',						'YIELD_PRODUCTION',	1),
		('DISTRICT_NEIGHBORHOOD',					'YIELD_FOOD',		2),
		('DISTRICT_NEIGHBORHOOD',					'YIELD_PRODUCTION',	1),
		('DISTRICT_AERODROME',						'YIELD_PRODUCTION',	2);

--Compatibility for Districts introduced in expansion packs.
INSERT INTO District_CitizenYieldChanges
		(DistrictType,								YieldType,			YieldChange)
SELECT	'DISTRICT_WATER_ENTERTAINMENT_COMPLEX',		'YIELD_CULTURE',	2				FROM Districts WHERE DistrictType='DISTRICT_WATER_ENTERTAINMENT_COMPLEX';

INSERT INTO District_CitizenYieldChanges
		(DistrictType,								YieldType,			YieldChange)
SELECT	'DISTRICT_WATER_ENTERTAINMENT_COMPLEX',		'YIELD_GOLD',		3				FROM Districts WHERE DistrictType='DISTRICT_WATER_ENTERTAINMENT_COMPLEX';

INSERT INTO District_CitizenYieldChanges
		(DistrictType,								YieldType,			YieldChange)
SELECT	'DISTRICT_GOVERNMENT',						'YIELD_SCIENCE',	1				FROM Districts WHERE DistrictType='DISTRICT_GOVERNMENT';

INSERT INTO District_CitizenYieldChanges
		(DistrictType,								YieldType,			YieldChange)
SELECT	'DISTRICT_GOVERNMENT',						'YIELD_CULTURE',	1				FROM Districts WHERE DistrictType='DISTRICT_GOVERNMENT';

INSERT INTO District_CitizenYieldChanges
		(DistrictType,								YieldType,			YieldChange)
SELECT	'DISTRICT_GOVERNMENT',						'YIELD_GOLD',		2				FROM Districts WHERE DistrictType='DISTRICT_GOVERNMENT';

INSERT INTO District_CitizenYieldChanges
		(DistrictType,								YieldType,			YieldChange)
SELECT	'DISTRICT_GOVERNMENT',						'YIELD_PRODUCTION',	1				FROM Districts WHERE DistrictType='DISTRICT_GOVERNMENT';

INSERT INTO District_CitizenYieldChanges
		(DistrictType,								YieldType,			YieldChange)
SELECT	'DISTRICT_DAM',								'YIELD_FOOD',		2				FROM Districts WHERE DistrictType='DISTRICT_DAM';

INSERT INTO District_CitizenYieldChanges
		(DistrictType,								YieldType,			YieldChange)
SELECT	'DISTRICT_DAM',								'YIELD_PRODUCTION',	2				FROM Districts WHERE DistrictType='DISTRICT_DAM';

INSERT INTO District_CitizenYieldChanges
		(DistrictType,								YieldType,			YieldChange)
SELECT	'DISTRICT_CANAL',							'YIELD_GOLD',		2				FROM Districts WHERE DistrictType='DISTRICT_CANAL';

INSERT INTO District_CitizenYieldChanges
		(DistrictType,								YieldType,			YieldChange)
SELECT	'DISTRICT_CANAL',							'YIELD_PRODUCTION',	2				FROM Districts WHERE DistrictType='DISTRICT_CANAL';

--Compatibility for all unique Districts that replace regular districts, including modded ones.
INSERT OR REPLACE INTO District_CitizenYieldChanges
		(DistrictType,								YieldType,			YieldChange)
SELECT	a.CivUniqueDistrictType,					b.YieldType,		b.YieldChange	FROM DistrictReplaces a, District_CitizenYieldChanges b WHERE a.ReplacesDistrictType='DISTRICT_ENTERTAINMENT_COMPLEX' AND b.DistrictType='DISTRICT_ENTERTAINMENT_COMPLEX';

INSERT OR REPLACE INTO District_CitizenYieldChanges
		(DistrictType,								YieldType,			YieldChange)
SELECT	a.CivUniqueDistrictType,					b.YieldType,		b.YieldChange	FROM DistrictReplaces a, District_CitizenYieldChanges b WHERE a.ReplacesDistrictType='DISTRICT_WATER_ENTERTAINMENT_COMPLEX' AND b.DistrictType='DISTRICT_WATER_ENTERTAINMENT_COMPLEX';

INSERT OR REPLACE INTO District_CitizenYieldChanges
		(DistrictType,								YieldType,			YieldChange)
SELECT	a.CivUniqueDistrictType,					b.YieldType,		b.YieldChange	FROM DistrictReplaces a, District_CitizenYieldChanges b WHERE a.ReplacesDistrictType='DISTRICT_AQUEDUCT' AND b.DistrictType='DISTRICT_AQUEDUCT';

INSERT OR REPLACE INTO District_CitizenYieldChanges
		(DistrictType,								YieldType,			YieldChange)
SELECT	a.CivUniqueDistrictType,					b.YieldType,		b.YieldChange	FROM DistrictReplaces a, District_CitizenYieldChanges b WHERE a.ReplacesDistrictType='DISTRICT_NEIGHBORHOOD' AND b.DistrictType='DISTRICT_NEIGHBORHOOD';