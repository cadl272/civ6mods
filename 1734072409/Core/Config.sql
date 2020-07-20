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
SELECT DISTINCT
		'CIVILIZATION_SUK_SIAM',
		CASE WHEN ((SELECT SortIndex FROM Players WHERE LeaderType = 'LEADER_GORGO') = 10) THEN
			'LEADER_SUK_NARAI_NEUTRAL'
		ELSE
			'LEADER_SUK_NARAI_NEUTRAL_CROPPED'
		END Portrait,
		'LEADER_SUK_NARAI_BACKGROUND',

		'LEADER_SUK_NARAI',
		'LOC_LEADER_SUK_NARAI_NAME',
		'ICON_LEADER_SUK_NARAI',
		'LOC_TRAIT_LEADER_SUK_SIAMOISES_NAME',
		'LOC_TRAIT_LEADER_SUK_SIAMOISES_DESCRIPTION',
		'ICON_LEADER_SUK_NARAI',

		Players.CivilizationName,						
		Players.CivilizationIcon,						
		Players.CivilizationAbilityName,								
		Players.CivilizationAbilityDescription,								
		Players.CivilizationAbilityIcon,

		RulesetDomainOverrides.Domain
FROM Players, RulesetDomainOverrides WHERE
	CivilizationType = 'CIVILIZATION_SUK_SIAM' AND LeaderType = 'LEADER_SUK_RAMKHAMHAENG'
	AND RulesetDomainOverrides.ParameterId = 'PlayerLeader'
	AND RulesetDomainOverrides.Ruleset IN (SELECT RuleSetType FROM RuleSets WHERE IsScenario = 0)
	AND RulesetDomainOverrides.Domain NOT IN ('Players:Expansion1_Players', 'Players:StandardPlayers');
-------------------------------------
-- PlayerItems
-------------------------------------	
INSERT INTO PlayerItems	
		(CivilizationType,				LeaderType,				Type, Icon, Name, Description, SortIndex, Domain)
SELECT	'CIVILIZATION_SUK_SIAM',		'LEADER_SUK_NARAI',		Type, Icon, Name, Description, SortIndex, Domain
FROM PlayerItems WHERE
	CivilizationType = 'CIVILIZATION_SUK_SIAM' AND LeaderType = 'LEADER_SUK_RAMKHAMHAENG'
	AND Domain IN (SELECT Domain FROM Players WHERE LeaderType = 'LEADER_SUK_NARAI');
--==========================================================================================================================
--==========================================================================================================================