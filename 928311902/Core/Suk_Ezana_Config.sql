--==========================================================================================================================
-- CONFIG DATA
--==========================================================================================================================
-- Players
-------------------------------------	
INSERT INTO Players	
		(CivilizationType,					Portrait,							 PortraitBackground,				LeaderType,				LeaderName,							LeaderIcon,						LeaderAbilityName,								LeaderAbilityDescription,								LeaderAbilityIcon,				CivilizationName,	CivilizationIcon,			CivilizationAbilityName,	CivilizationAbilityDescription,	CivilizationAbilityIcon, Domain)
SELECT	'CIVILIZATION_SUK_ETHIOPIA',		'LEADER_SUK_EZANA_NEUTRAL.dds',		 'LEADER_SALADIN_BACKGROUND',		'LEADER_SUK_EZANA',		'LOC_LEADER_SUK_EZANA_NAME',		'ICON_LEADER_SUK_EZANA',		'LOC_TRAIT_LEADER_SUK_AKSUMITE_COINAGE_NAME',	'LOC_TRAIT_LEADER_SUK_AKSUMITE_COINAGE_DESCRIPTION',	'ICON_LEADER_SUK_EZANA',		CivilizationName,	CivilizationIcon,			CivilizationAbilityName,	CivilizationAbilityDescription,	CivilizationAbilityIcon, Domain
FROM Players WHERE CivilizationType = 'CIVILIZATION_SUK_ETHIOPIA' AND LeaderType = 'LEADER_SUK_ZARAYAQOB';
-------------------------------------
-- PlayerItems
-------------------------------------	
INSERT INTO PlayerItems	
		(CivilizationType,					LeaderType,				Type, Icon, Name, Description, SortIndex, Domain)
SELECT	'CIVILIZATION_SUK_ETHIOPIA',		'LEADER_SUK_EZANA',	Type, Icon, Name, Description, SortIndex, Domain
FROM PlayerItems WHERE CivilizationType = 'CIVILIZATION_SUK_ETHIOPIA' AND LeaderType = 'LEADER_SUK_ZARAYAQOB';

INSERT INTO 			PlayerItems	
						(CivilizationType,					LeaderType,				Type,						Icon,							Name,								Description,									SortIndex,	Domain)
SELECT DISTINCT			'CIVILIZATION_SUK_ETHIOPIA',		'LEADER_SUK_EZANA',		'IMPROVEMENT_SUK_STELE',	'ICON_IMPROVEMENT_SUK_STELE',	'LOC_IMPROVEMENT_SUK_STELE_NAME',	'LOC_IMPROVEMENT_SUK_STELE_DESCRIPTION',		30, 		PlayerItems.Domain
FROM PlayerItems WHERE PlayerItems.Domain NOT IN (SELECT RulesetDomainOverrides.Domain FROM RulesetDomainOverrides WHERE RulesetDomainOverrides.ParameterId = 'PlayerLeader' AND RulesetDomainOverrides.Ruleset IN (SELECT RuleSetType FROM RuleSets WHERE IsScenario = 1));
--==========================================================================================================================
--==========================================================================================================================