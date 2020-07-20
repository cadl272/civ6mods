/*
	Config
	Authors: ChimpanG
*/

-----------------------------------------------
-- Players
-----------------------------------------------

INSERT INTO Players (Domain, CivilizationType, CivilizationName, CivilizationIcon, CivilizationAbilityName, CivilizationAbilityDescription, CivilizationAbilityIcon, LeaderType, LeaderName, LeaderIcon, LeaderAbilityName, LeaderAbilityDescription, LeaderAbilityIcon)
VALUES	(	
		-- Civilization
		'Players:StandardPlayers', -- Domain
		'CIVILIZATION_CVS_SELEUCID', -- CivilizationType
		'LOC_CIVILIZATION_CVS_SELEUCID_NAME', -- CivilizationName
		'ICON_CIVILIZATION_CVS_SELEUCID', -- CivilizationIcon
		'LOC_TRAIT_CIVILIZATION_CVS_SELEUCID_UA_NAME', -- CivilizationAbilityName
		'LOC_TRAIT_CIVILIZATION_CVS_SELEUCID_UA_DESCRIPTION', -- CivilizationAbilityDescription
		'ICON_CIVILIZATION_CVS_SELEUCID', -- CivilizationAbilityIcon
		
		-- Leader
		'LEADER_CVS_ANTIOCHUS_III', -- LeaderType
		'LOC_LEADER_CVS_ANTIOCHUS_III_NAME', -- LeaderName
		'ICON_LEADER_CVS_ANTIOCHUS_III', -- LeaderIcon
		'LOC_TRAIT_LEADER_CVS_ANTIOCHUS_III_UA_NAME', -- LeaderAbilityName
		'LOC_TRAIT_LEADER_CVS_ANTIOCHUS_III_UA_DESCRIPTION', -- LeaderAbilityDescription
		'ICON_LEADER_CVS_ANTIOCHUS_III' -- LeaderAbilityIcon
		),
		(	
		-- Civilization
		'Players:Expansion1_Players', -- Domain
		'CIVILIZATION_CVS_SELEUCID', -- CivilizationType
		'LOC_CIVILIZATION_CVS_SELEUCID_NAME', -- CivilizationName
		'ICON_CIVILIZATION_CVS_SELEUCID', -- CivilizationIcon
		'LOC_TRAIT_CIVILIZATION_CVS_SELEUCID_UA_NAME', -- CivilizationAbilityName
		'LOC_TRAIT_CIVILIZATION_CVS_SELEUCID_UA_DESCRIPTION', -- CivilizationAbilityDescription
		'ICON_CIVILIZATION_CVS_SELEUCID', -- CivilizationAbilityIcon
		
		-- Leader
		'LEADER_CVS_ANTIOCHUS_III', -- LeaderType
		'LOC_LEADER_CVS_ANTIOCHUS_III_NAME', -- LeaderName
		'ICON_LEADER_CVS_ANTIOCHUS_III', -- LeaderIcon
		'LOC_TRAIT_LEADER_CVS_ANTIOCHUS_III_UA_NAME', -- LeaderAbilityName
		'LOC_TRAIT_LEADER_CVS_ANTIOCHUS_III_UA_XP1_DESCRIPTION', -- LeaderAbilityDescription
		'ICON_LEADER_CVS_ANTIOCHUS_III' -- LeaderAbilityIcon
		),
		(	
		-- Civilization
		'Players:Expansion2_Players', -- Domain
		'CIVILIZATION_CVS_SELEUCID', -- CivilizationType
		'LOC_CIVILIZATION_CVS_SELEUCID_NAME', -- CivilizationName
		'ICON_CIVILIZATION_CVS_SELEUCID', -- CivilizationIcon
		'LOC_TRAIT_CIVILIZATION_CVS_SELEUCID_UA_NAME', -- CivilizationAbilityName
		'LOC_TRAIT_CIVILIZATION_CVS_SELEUCID_UA_DESCRIPTION', -- CivilizationAbilityDescription
		'ICON_CIVILIZATION_CVS_SELEUCID', -- CivilizationAbilityIcon
		
		-- Leader
		'LEADER_CVS_ANTIOCHUS_III', -- LeaderType
		'LOC_LEADER_CVS_ANTIOCHUS_III_NAME', -- LeaderName
		'ICON_LEADER_CVS_ANTIOCHUS_III', -- LeaderIcon
		'LOC_TRAIT_LEADER_CVS_ANTIOCHUS_III_UA_NAME', -- LeaderAbilityName
		'LOC_TRAIT_LEADER_CVS_ANTIOCHUS_III_UA_XP2_DESCRIPTION', -- LeaderAbilityDescription
		'ICON_LEADER_CVS_ANTIOCHUS_III' -- LeaderAbilityIcon
		);

-----------------------------------------------
-- PlayerItems
-----------------------------------------------

INSERT INTO PlayerItems
		(Domain,						CivilizationType, 				LeaderType, 				Type, 							Icon, 								Name, 									Description, 									SortIndex	)
VALUES	('Players:StandardPlayers',		'CIVILIZATION_CVS_SELEUCID',	'LEADER_CVS_ANTIOCHUS_III',	'UNIT_CVS_SELEUCID_UU',			'ICON_UNIT_CVS_SELEUCID_UU',		'LOC_UNIT_CVS_SELEUCID_UU_NAME',		'LOC_UNIT_CVS_SELEUCID_UU_DESCRIPTION',			10			),
		('Players:StandardPlayers',		'CIVILIZATION_CVS_SELEUCID',	'LEADER_CVS_ANTIOCHUS_III',	'DISTRICT_CVS_SELEUCID_UI',		'ICON_DISTRICT_CVS_SELEUCID_UI',	'LOC_DISTRICT_CVS_SELEUCID_UI_NAME',	'LOC_DISTRICT_CVS_SELEUCID_UI_DESCRIPTION',		20			),
		('Players:Expansion1_Players',	'CIVILIZATION_CVS_SELEUCID',	'LEADER_CVS_ANTIOCHUS_III',	'UNIT_CVS_SELEUCID_UU',			'ICON_UNIT_CVS_SELEUCID_UU',		'LOC_UNIT_CVS_SELEUCID_UU_NAME',		'LOC_UNIT_CVS_SELEUCID_UU_DESCRIPTION',			10			),
		('Players:Expansion1_Players',	'CIVILIZATION_CVS_SELEUCID',	'LEADER_CVS_ANTIOCHUS_III',	'DISTRICT_CVS_SELEUCID_UI',		'ICON_DISTRICT_CVS_SELEUCID_UI',	'LOC_DISTRICT_CVS_SELEUCID_UI_NAME',	'LOC_DISTRICT_CVS_SELEUCID_UI_DESCRIPTION',		20			),
		('Players:Expansion2_Players',	'CIVILIZATION_CVS_SELEUCID',	'LEADER_CVS_ANTIOCHUS_III',	'UNIT_CVS_SELEUCID_UU',			'ICON_UNIT_CVS_SELEUCID_UU',		'LOC_UNIT_CVS_SELEUCID_UU_NAME',		'LOC_UNIT_CVS_SELEUCID_UU_DESCRIPTION',			10			),
		('Players:Expansion2_Players',	'CIVILIZATION_CVS_SELEUCID',	'LEADER_CVS_ANTIOCHUS_III',	'DISTRICT_CVS_SELEUCID_UI',		'ICON_DISTRICT_CVS_SELEUCID_UI',	'LOC_DISTRICT_CVS_SELEUCID_UI_NAME',	'LOC_DISTRICT_CVS_SELEUCID_UI_DESCRIPTION',		20			);