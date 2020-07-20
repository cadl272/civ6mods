--==========================================================================================================================
-- CONFIG DATA
--==========================================================================================================================
-- Players
-------------------------------------	
INSERT INTO Players	
		(
		CivilizationType,
		Portrait,
		PortraitBackground,

		LeaderType,
		LeaderName,
		LeaderIcon,
		LeaderAbilityName,
		LeaderAbilityDescription,
		LeaderAbilityIcon,

		CivilizationName,
		CivilizationIcon,
		CivilizationAbilityName,
		CivilizationAbilityDescription,
		CivilizationAbilityIcon,

		Domain)
SELECT	
		'CIVILIZATION_SUK_TIBET',
		'LEADER_SUK_LOBSANG_GYATSO_NEUTRAL',
		'LEADER_SUK_LOBSANG_GYATSO_BACKGROUND',

		'LEADER_SUK_LOBSANG_GYATSO',
		'LOC_LEADER_SUK_LOBSANG_GYATSO_NAME',
		'ICON_LEADER_SUK_LOBSANG_GYATSO',
		'LOC_TRAIT_LEADER_SUK_HISTORY_OF_TIBET_NAME',
		'LOC_TRAIT_LEADER_SUK_HISTORY_OF_TIBET_DESCRIPTION',
		'ICON_LEADER_SUK_LOBSANG_GYATSO',

		CivilizationName,
		CivilizationIcon,
		CivilizationAbilityName,
		CivilizationAbilityDescription,
		CivilizationAbilityIcon,

		Domain
FROM Players WHERE CivilizationType = 'CIVILIZATION_SUK_TIBET' AND LeaderType = 'LEADER_SUK_TRISONG_DETSEN';
-------------------------------------
-- PlayerItems
-------------------------------------	
INSERT INTO PlayerItems	
		(CivilizationType,				LeaderType,					Type, Icon, Name, Description, SortIndex, Domain)
SELECT	'CIVILIZATION_SUK_TIBET',		'LEADER_SUK_LOBSANG_GYATSO',	Type, Icon, Name, Description, SortIndex, Domain
FROM PlayerItems WHERE CivilizationType = 'CIVILIZATION_SUK_TIBET' AND LeaderType = 'LEADER_SUK_TRISONG_DETSEN';
--==========================================================================================================================
--==========================================================================================================================