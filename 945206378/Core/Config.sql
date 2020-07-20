--==========================================================================================================================
-- CONFIG DATA
--==========================================================================================================================
-- Players
-------------------------------------	
INSERT INTO Players	
		(CivilizationType,			Portrait,							 			PortraitBackground,						LeaderType,					LeaderName,							LeaderIcon,						LeaderAbilityName,								LeaderAbilityDescription,								LeaderAbilityIcon,				CivilizationName,	CivilizationIcon,	CivilizationAbilityName,	CivilizationAbilityDescription,	CivilizationAbilityIcon, Domain)
SELECT	'CIVILIZATION_EGYPT',		'LEADER_SUK_SENUSRET_III_NEUTRAL.dds',	 		'LEADER_SUK_SENUSRET_III_BACKGROUND',	'LEADER_SUK_SENUSRET_III',	'LOC_LEADER_SUK_SENUSRET_III_NAME',	'ICON_LEADER_SUK_SENUSRET_III',	'LOC_TRAIT_LEADER_SUK_FORTRESS_OF_BUHEN_NAME',	'LOC_TRAIT_LEADER_SUK_FORTRESS_OF_BUHEN_DESCRIPTION',	'ICON_LEADER_SUK_SENUSRET_III',	CivilizationName,	CivilizationIcon,	CivilizationAbilityName,	CivilizationAbilityDescription,	CivilizationAbilityIcon, Domain
FROM Players WHERE CivilizationType = 'CIVILIZATION_EGYPT' AND LeaderType = 'LEADER_CLEOPATRA'
AND Domain NOT IN (SELECT RulesetDomainOverrides.Domain FROM RulesetDomainOverrides WHERE RulesetDomainOverrides.ParameterId = 'PlayerLeader' AND RulesetDomainOverrides.Ruleset IN (SELECT RuleSetType FROM RuleSets WHERE IsScenario = 1));
-------------------------------------
-- PlayerItems
-------------------------------------	
INSERT INTO PlayerItems	
		(CivilizationType,			LeaderType,				Type, Icon, Name, Description, SortIndex, Domain)
SELECT	'CIVILIZATION_EGYPT',		'LEADER_SUK_SENUSRET_III',	Type, Icon, Name, Description, SortIndex, Domain
FROM PlayerItems WHERE CivilizationType = 'CIVILIZATION_EGYPT' AND LeaderType = 'LEADER_CLEOPATRA'
AND Domain NOT IN (SELECT RulesetDomainOverrides.Domain FROM RulesetDomainOverrides WHERE RulesetDomainOverrides.ParameterId = 'PlayerLeader' AND RulesetDomainOverrides.Ruleset IN (SELECT RuleSetType FROM RuleSets WHERE IsScenario = 1));
--==========================================================================================================================
--==========================================================================================================================