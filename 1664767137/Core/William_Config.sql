/*
	Config
	Credits: ChimpanG
*/

-----------------------------------------------
-- DuplicateLeaders
-----------------------------------------------

INSERT INTO DuplicateLeaders
		(Domain,						LeaderType,						OtherLeaderType	)
SELECT	'Players:Expansion2_Players',	'LEADER_CVS_WILLIAM_ENGLAND',	'LEADER_CVS_WILLIAM_NORMANDY'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version = 'CVS_NORMANDY');

-----------------------------------------------
-- Players
-----------------------------------------------

INSERT INTO Players (Domain, CivilizationType, CivilizationName, CivilizationIcon, CivilizationAbilityName, CivilizationAbilityDescription, CivilizationAbilityIcon, LeaderType, LeaderName, LeaderIcon, LeaderAbilityName, LeaderAbilityDescription, LeaderAbilityIcon)
VALUES	(	
		-- Civilization
		'Players:Expansion2_Players', -- Domain
		'CIVILIZATION_ENGLAND', -- CivilizationType
		'LOC_CIVILIZATION_ENGLAND_NAME', -- CivilizationName
		'ICON_CIVILIZATION_ENGLAND', -- CivilizationIcon
		'LOC_TRAIT_CIVILIZATION_INDUSTRIAL_REVOLUTION_NAME', -- CivilizationAbilityName
		'LOC_TRAIT_CIVILIZATION_INDUSTRIAL_REVOLUTION_DESCRIPTION', -- CivilizationAbilityDescription
		'ICON_CIVILIZATION_ENGLAND', -- CivilizationAbilityIcon
		
		-- Leader
		'LEADER_CVS_WILLIAM_ENGLAND', -- LeaderType
		'LOC_LEADER_CVS_WILLIAM_NAME', -- LeaderName
		'ICON_LEADER_CVS_WILLIAM', -- LeaderIcon
		'LOC_TRAIT_LEADER_CVS_WILLIAM_UA_NAME', -- LeaderAbilityName
		'LOC_TRAIT_LEADER_CVS_WILLIAM_UA_DESCRIPTION', -- LeaderAbilityDescription
		'ICON_LEADER_CVS_WILLIAM' -- LeaderAbilityIcon
		);

INSERT INTO Players (Domain, CivilizationType, CivilizationName, CivilizationIcon, CivilizationAbilityName, CivilizationAbilityDescription, CivilizationAbilityIcon, LeaderType, LeaderName, LeaderIcon, LeaderAbilityName, LeaderAbilityDescription, LeaderAbilityIcon)
SELECT	
		-- Civilization
		'Players:Expansion2_Players', -- Domain
		'CIVILIZATION_CVS_NORMANDY', -- CivilizationType
		'LOC_CIVILIZATION_CVS_NORMANDY_NAME', -- CivilizationName
		'ICON_CIVILIZATION_CVS_NORMANDY', -- CivilizationIcon
		'LOC_TRAIT_CIVILIZATION_CVS_NORMANDY_UA_NAME', -- CivilizationAbilityName
		'LOC_TRAIT_CIVILIZATION_CVS_NORMANDY_UA_DESCRIPTION', -- CivilizationAbilityDescription
		'ICON_CIVILIZATION_CVS_NORMANDY', -- CivilizationAbilityIcon
		
		-- Leader
		'LEADER_CVS_WILLIAM_NORMANDY', -- LeaderType
		'LOC_LEADER_CVS_WILLIAM_NAME', -- LeaderName
		'ICON_LEADER_CVS_WILLIAM', -- LeaderIcon
		'LOC_TRAIT_LEADER_CVS_WILLIAM_UA_NAME', -- LeaderAbilityName
		'LOC_TRAIT_LEADER_CVS_WILLIAM_UA_DESCRIPTION', -- LeaderAbilityDescription
		'ICON_LEADER_CVS_WILLIAM' -- LeaderAbilityIcon
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('CVS_NORMANDY'));

-----------------------------------------------
-- PlayerItems
-----------------------------------------------

INSERT INTO PlayerItems
		(Domain, 						CivilizationType, 		LeaderType, 					Type, 							Icon, 									Name, 										Description, 									SortIndex	)
VALUES	('Players:Expansion2_Players',	'CIVILIZATION_ENGLAND',	'LEADER_CVS_WILLIAM_ENGLAND',	'UNIT_CVS_WILLIAM_UU',			'ICON_UNIT_CVS_WILLIAM_UU',				'LOC_UNIT_CVS_WILLIAM_UU_NAME',				'LOC_UNIT_CVS_WILLIAM_UU_DESCRIPTION',			10			),
		('Players:Expansion2_Players',	'CIVILIZATION_ENGLAND',	'LEADER_CVS_WILLIAM_ENGLAND',	'UNIT_ENGLISH_SEADOG',			'ICON_UNIT_ENGLISH_SEADOG',				'LOC_UNIT_ENGLISH_SEADOG_NAME',				'LOC_UNIT_ENGLISH_SEADOG_DESCRIPTION',			20			),
		('Players:Expansion2_Players',	'CIVILIZATION_ENGLAND',	'LEADER_CVS_WILLIAM_ENGLAND',	'DISTRICT_ROYAL_NAVY_DOCKYARD',	'ICON_DISTRICT_ROYAL_NAVY_DOCKYARD',	'LOC_DISTRICT_ROYAL_NAVY_DOCKYARD_NAME',	'LOC_DISTRICT_ROYAL_NAVY_DOCKYARD_DESCRIPTION',	30			);
		
INSERT INTO PlayerItems
		(Domain, 						CivilizationType, 				LeaderType, 					Type, 					Icon, 							Name, 									Description, 									SortIndex	)
SELECT	'Players:Expansion2_Players',	'CIVILIZATION_CVS_NORMANDY',	'LEADER_CVS_WILLIAM_NORMANDY',	'UNIT_CVS_NORMANDY_UU',	'ICON_UNIT_CVS_NORMANDY_UU',	'LOC_UNIT_CVS_NORMANDY_UU_NAME',		'LOC_UNIT_CVS_NORMANDY_UU_DESCRIPTION',			10			
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version = 'CVS_NORMANDY');

INSERT INTO PlayerItems
		(Domain, 						CivilizationType, 				LeaderType, 					Type, 							Icon, 								Name, 									Description, 									SortIndex	)
SELECT	'Players:Expansion2_Players',	'CIVILIZATION_CVS_NORMANDY',	'LEADER_CVS_WILLIAM_NORMANDY',	'IMPROVEMENT_CVS_NORMANDY_UI',	'ICON_IMPROVEMENT_CVS_NORMANDY_UI',	'LOC_IMPROVEMENT_CVS_NORMANDY_UI_NAME', 'LOC_IMPROVEMENT_CVS_NORMANDY_UI_DESCRIPTION',	20				
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version = 'CVS_NORMANDY');

INSERT INTO PlayerItems
		(Domain, 						CivilizationType, 				LeaderType, 					Type, 					Icon, 						Name, 							Description,							SortIndex	)
SELECT	'Players:Expansion2_Players',	'CIVILIZATION_CVS_NORMANDY',	'LEADER_CVS_WILLIAM_NORMANDY',	'UNIT_CVS_WILLIAM_UU',	'ICON_UNIT_CVS_WILLIAM_UU',	'LOC_UNIT_CVS_WILLIAM_UU_NAME', 'LOC_UNIT_CVS_WILLIAM_UU_DESCRIPTION',	30				
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version = 'CVS_NORMANDY');