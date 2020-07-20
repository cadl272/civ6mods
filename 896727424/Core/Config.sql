--==========================================================================================================================
-- CONFIG DATA
--==========================================================================================================================
-- Players
-------------------------------------	
INSERT INTO Players	
		(CivilizationType,			Portrait,							 PortraitBackground,				LeaderType,				LeaderName,							LeaderIcon,						LeaderAbilityName,									LeaderAbilityDescription,									LeaderAbilityIcon,				CivilizationName,	CivilizationIcon,	CivilizationAbilityName,	CivilizationAbilityDescription,	CivilizationAbilityIcon, Domain)
SELECT	'CIVILIZATION_PERSIA',		'LEADER_SUK_KHOSROW_I_NEUTRAL.dds',	 'LEADER_SUK_KHOSROW_I_BACKGROUND',	'LEADER_SUK_KHOSROW_I',	'LOC_LEADER_SUK_KHOSROW_I_NAME',	'ICON_LEADER_SUK_KHOSROW_I',	'LOC_TRAIT_LEADER_SUK_ARCHWAY_OF_CTESIPHON_NAME',	'LOC_TRAIT_LEADER_SUK_ARCHWAY_OF_CTESIPHON_DESCRIPTION',	'ICON_LEADER_SUK_KHOSROW_I',	CivilizationName,	CivilizationIcon,	CivilizationAbilityName,	CivilizationAbilityDescription,	CivilizationAbilityIcon, Domain
FROM Players WHERE CivilizationType = 'CIVILIZATION_PERSIA' AND LeaderType = 'LEADER_CYRUS'
AND Domain NOT IN (SELECT RulesetDomainOverrides.Domain FROM RulesetDomainOverrides WHERE RulesetDomainOverrides.ParameterId = 'PlayerLeader' AND RulesetDomainOverrides.Ruleset IN (SELECT RuleSetType FROM RuleSets WHERE IsScenario = 1));
-------------------------------------
-- PlayerItems
-------------------------------------	
INSERT INTO PlayerItems	
		(CivilizationType,			LeaderType,				Type, Icon, Name, Description, SortIndex, Domain)
SELECT	'CIVILIZATION_PERSIA',		'LEADER_SUK_KHOSROW_I',	Type, Icon, Name, Description, SortIndex, Domain
FROM PlayerItems WHERE CivilizationType = 'CIVILIZATION_PERSIA' AND LeaderType = 'LEADER_CYRUS'
AND Domain NOT IN (SELECT RulesetDomainOverrides.Domain FROM RulesetDomainOverrides WHERE RulesetDomainOverrides.ParameterId = 'PlayerLeader' AND RulesetDomainOverrides.Ruleset IN (SELECT RuleSetType FROM RuleSets WHERE IsScenario = 1));
--==========================================================================================================================
--==========================================================================================================================