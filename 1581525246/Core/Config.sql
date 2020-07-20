--==========================================================================================================================
-- CONFIG DATA
--==========================================================================================================================
-- Players
-------------------------------------	
INSERT INTO Players	
		(CivilizationType,			Portrait,								PortraitBackground,						LeaderType,					LeaderName,								LeaderIcon,							LeaderAbilityName,							LeaderAbilityDescription,							LeaderAbilityIcon,					CivilizationName,	CivilizationIcon,		CivilizationAbilityName,	CivilizationAbilityDescription,	CivilizationAbilityIcon, Domain)
SELECT	'CIVILIZATION_ROME',		'LEADER_SUK_HADRIAN_NEUTRAL',			'LEADER_SUK_HADRIAN_BACKGROUND',		'LEADER_SUK_HADRIAN',		'LOC_LEADER_SUK_HADRIAN_NAME',			'ICON_LEADER_SUK_HADRIAN',			'LOC_TRAIT_LEADER_SUK_GREEKLING_NAME',		'LOC_TRAIT_LEADER_SUK_GREEKLING_DESCRIPTION',		'ICON_LEADER_SUK_HADRIAN',			CivilizationName,	CivilizationIcon,		CivilizationAbilityName,	CivilizationAbilityDescription,	CivilizationAbilityIcon, Domain
FROM Players WHERE CivilizationType = 'CIVILIZATION_ROME' AND LeaderType = 'LEADER_TRAJAN' AND Domain NOT IN (SELECT RulesetDomainOverrides.Domain FROM RulesetDomainOverrides WHERE RulesetDomainOverrides.ParameterId = 'PlayerLeader' AND RulesetDomainOverrides.Ruleset IN (SELECT RuleSetType FROM RuleSets WHERE IsScenario = 1));
-------------------------------------
-- PlayerItems
-------------------------------------	
INSERT INTO PlayerItems	
		(CivilizationType,				LeaderType,				Type, Icon, Name, Description, SortIndex, Domain)
SELECT	'CIVILIZATION_ROME',			'LEADER_SUK_HADRIAN',	Type, Icon, Name, Description, SortIndex, Domain
FROM PlayerItems WHERE CivilizationType = 'CIVILIZATION_ROME' AND LeaderType = 'LEADER_TRAJAN' AND Domain NOT IN (SELECT RulesetDomainOverrides.Domain FROM RulesetDomainOverrides WHERE RulesetDomainOverrides.ParameterId = 'PlayerLeader' AND RulesetDomainOverrides.Ruleset IN (SELECT RuleSetType FROM RuleSets WHERE IsScenario = 1));
--==========================================================================================================================
--==========================================================================================================================