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
		'CIVILIZATION_SUK_SIAM',
		'LEADER_SUK_CHULALONGKORN_NEUTRAL',
		'LEADER_SUK_CHULALONGKORN_BACKGROUND',

		'LEADER_SUK_CHULALONGKORN',
		'LOC_LEADER_SUK_CHULALONGKORN_NAME',
		'ICON_LEADER_SUK_CHULALONGKORN',
		'LOC_TRAIT_LEADER_SUK_MONTHON_SYSTEM_NAME',
		'LOC_TRAIT_LEADER_SUK_MONTHON_SYSTEM_DESCRIPTION',
		'ICON_LEADER_SUK_CHULALONGKORN',

		CivilizationName,
		CivilizationIcon,
		CivilizationAbilityName,
		CivilizationAbilityDescription,
		CivilizationAbilityIcon,

		Domain
FROM Players WHERE CivilizationType = 'CIVILIZATION_SUK_SIAM' AND LeaderType = 'LEADER_SUK_RAMKHAMHAENG';

UPDATE Players
SET LeaderAbilityDescription = 'LOC_TRAIT_LEADER_SUK_MONTHON_SYSTEM_XP2_DESCRIPTION'
WHERE LeaderType = 'LEADER_SUK_CHULALONGKORN' AND Domain IN ('Players:Expansion2_Players');
-------------------------------------
-- PlayerItems
-------------------------------------	
INSERT INTO PlayerItems	
		(CivilizationType,				LeaderType,					Type, Icon, Name, Description, SortIndex, Domain)
SELECT	'CIVILIZATION_SUK_SIAM',		'LEADER_SUK_CHULALONGKORN',	Type, Icon, Name, Description, SortIndex, Domain
FROM PlayerItems WHERE CivilizationType = 'CIVILIZATION_SUK_SIAM' AND LeaderType = 'LEADER_SUK_RAMKHAMHAENG';
--==========================================================================================================================
--==========================================================================================================================