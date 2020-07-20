--==========================================================================================================================
-- Darius / Config
--==========================================================================================================================
-------------------------------------
-- Players
-------------------------------------	

INSERT INTO Players	(
		CivilizationType,
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
SELECT	'CIVILIZATION_PERSIA', -- CivilizationType
		'LEADER_CVS_DARIUS_BACKGROUND', -- PortraitBackground
		'LEADER_CVS_DARIUS', -- LeaderType
		'LOC_LEADER_CVS_DARIUS_NAME', -- LeaderName
		'ICON_LEADER_CVS_DARIUS', -- LeaderIcon
		'LOC_TRAIT_LEADER_CVS_DARIUS_UA_NAME', -- LeaderAbilityName
		'LOC_TRAIT_LEADER_CVS_DARIUS_UA_DESCRIPTION', -- LeaderAbilityDescription
		'ICON_LEADER_CVS_DARIUS', -- LeaderAbilityIcon
		CivilizationName,
		CivilizationIcon,
		CivilizationAbilityName,
		CivilizationAbilityDescription,
		CivilizationAbilityIcon,
		Domain
FROM Players WHERE CivilizationType = 'CIVILIZATION_PERSIA' AND LeaderType = 'LEADER_CYRUS'
AND Domain NOT IN (SELECT RulesetDomainOverrides.Domain FROM RulesetDomainOverrides WHERE RulesetDomainOverrides.ParameterId = 'PlayerLeader' AND RulesetDomainOverrides.Ruleset IN (SELECT RuleSetType FROM RuleSets WHERE IsScenario = 1));

-------------------------------------
-- PlayerItems
-------------------------------------	
INSERT INTO PlayerItems	
		(CivilizationType,
		LeaderType,
		Type,
		Icon,
		Name,
		Description, 
		SortIndex, 
		Domain)
SELECT	'CIVILIZATION_PERSIA', -- CivilizationType
		'LEADER_CVS_DARIUS', -- LeaderType
		Type, 
		Icon, 
		Name, 
		Description, 
		SortIndex, 
		Domain
FROM PlayerItems WHERE CivilizationType = 'CIVILIZATION_PERSIA' AND LeaderType = 'LEADER_CYRUS'
AND Domain NOT IN (SELECT RulesetDomainOverrides.Domain FROM RulesetDomainOverrides WHERE RulesetDomainOverrides.ParameterId = 'PlayerLeader' AND RulesetDomainOverrides.Ruleset IN (SELECT RuleSetType FROM RuleSets WHERE IsScenario = 1));