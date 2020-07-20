--=============================================
-- DARIUS / Defines
--=============================================
-----------------------------------------------
-- Types
-----------------------------------------------	
INSERT INTO Types	
		(Type,					Kind)
VALUES	('LEADER_CVS_DARIUS',	'KIND_LEADER');

-----------------------------------------------	
-- Leaders
-----------------------------------------------	
INSERT INTO Leaders	
		(LeaderType,			Name,							Sex,		InheritFrom,		SceneLayers)
VALUES	('LEADER_CVS_DARIUS',	'LOC_LEADER_CVS_DARIUS_NAME',	'Male',		'LEADER_DEFAULT',	4);	

-----------------------------------------------
-- CivilizationLeaders
-----------------------------------------------	
INSERT INTO CivilizationLeaders	
		(CivilizationType,			LeaderType,				CapitalName)
VALUES	('CIVILIZATION_PERSIA',		'LEADER_CVS_DARIUS',	'LOC_CITY_NAME_SUSA');

-----------------------------------------------
-- LeaderQuotes
-----------------------------------------------	
INSERT INTO LeaderQuotes	
		(LeaderType,			Quote)
VALUES	('LEADER_CVS_DARIUS',	'LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_DARIUS_QUOTE');	

-----------------------------------------------	
-- LoadingInfo
-----------------------------------------------	
INSERT INTO LoadingInfo	
		(LeaderType,			BackgroundImage, 					ForegroundImage,				PlayDawnOfManAudio)
VALUES	('LEADER_CVS_DARIUS',	'LEADER_CVS_DARIUS_BACKGROUND',		'LEADER_CVS_DARIUS_NEUTRAL',	0);	
