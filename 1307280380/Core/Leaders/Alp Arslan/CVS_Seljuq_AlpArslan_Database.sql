-- CVS_Seljuq_AlpArslan_Database
-- Author: thecrazyscotsman
-- DateCreated: 1/21/2018 2:10:00 PM
--------------------------------------------------------------
INSERT INTO THECRAZYSCOTSMAN_DEBUGGING (Document, Marker, Pass) SELECT 'CVS_Seljuq_AlpArslan_Database', 'BEGIN', 1;	
--=====
--TYPES
--=====
INSERT INTO Types (Type, Kind)
	VALUES
		('CVS_LEADER_ALP_ARSLAN', 'KIND_LEADER'),
		('CVS_UNIT_VIZIER', 'KIND_UNIT'),
		('CVS_ABILITY_VIZIER', 'KIND_ABILITY'),
		('CVS_TRAIT_LEADER_ORDER_OF_THE_REALM', 'KIND_TRAIT'),
		('CVS_TRAIT_AGENDA_LION_OF_MANZIKERT', 'KIND_TRAIT'),
		('CVS_TRAIT_LEADER_UNIT_VIZIER', 'KIND_TRAIT'),
		('CVS_MODIFIER_VIZIER_ATTACH_MODIFIER_IN_NEAREST_CITY', 'KIND_MODIFIER'),
		('CVS_MODIFIER_VIZIER_ADJUST_CITY_YIELD_PER_DISTRICT', 'KIND_MODIFIER'),
		('CVS_MODIFIER_VIZIER_ATTACH_MODIFIER_TO_CITY_DISTRICTS', 'KIND_MODIFIER'),
		('CVS_MODIFIER_VIZIER_ADJUST_CAPITAL_YIELD_PER_CITY_DISTRICT', 'KIND_MODIFIER'),
		('CVS_MODIFIER_ALPARSLAN_TRAINED_UNIT_FREE_PROMOTION', 'KIND_MODIFIER');
	
--=================
--CIVILIZATION LEADERS
--=================
INSERT INTO CivilizationLeaders (CivilizationType, LeaderType, CapitalName)
	VALUES
		('CVS_CIVILIZATION_SELJUQ', 'CVS_LEADER_ALP_ARSLAN', 'LOC_CITY_NAME_SC_ISFAHAN');
		
--=======
--LEADERS
--=======
INSERT INTO Leaders (LeaderType, Name, InheritFrom, SceneLayers)
	VALUES
		('CVS_LEADER_ALP_ARSLAN', 'LOC_CVS_LEADER_ALP_ARSLAN_NAME', 'LEADER_DEFAULT', 4);

INSERT INTO LeaderQuotes (LeaderType, Quote)
	VALUES
		('CVS_LEADER_ALP_ARSLAN', 'LOC_PEDIA_LEADERS_PAGE_CVS_LEADER_ALP_ARSLAN_QUOTE');		

--=======
--COLORS
--=======
INSERT INTO PlayerColors (Type, Usage, PrimaryColor, SecondaryColor, TextColor)
	VALUES
		('CVS_LEADER_ALP_ARSLAN', 'Unique', 'COLOR_PLAYER_CVS_SELJUQ_ALP_ARSLAN_PRIMARY', 'COLOR_PLAYER_CVS_SELJUQ_ALP_ARSLAN_SECONDARY', 'COLOR_PLAYER_WHITE_TEXT');

INSERT INTO Colors (Type, Color)
	VALUES
		('COLOR_PLAYER_CVS_SELJUQ_ALP_ARSLAN_PRIMARY', '71,95,119,255'),
		('COLOR_PLAYER_CVS_SELJUQ_ALP_ARSLAN_SECONDARY', '255,214,191,255');

--===========
--LOADING INFO
--===========
INSERT INTO LoadingInfo (LeaderType, BackgroundImage, ForegroundImage, PlayDawnOfManAudio)
	VALUES
		('CVS_LEADER_ALP_ARSLAN', 'CVS_LEADER_ALP_ARSLAN_BACKGROUND', 'LEADER_CVS_ALP_ARSLAN_NEUTRAL', 0);

--INSERT INTO THECRAZYSCOTSMAN_DEBUGGING (Document, Marker, Pass) SELECT 'CVS_Seljuq_AlpArslan_Database', 'LEADERS', 1;	
--============
--UNITS ABILITIES
--============	
INSERT INTO Tags (Tag, Vocabulary)
	VALUES
		('CVS_CLASS_VIZIER', 'ABILITY_CLASS');

INSERT INTO TypeTags (Type, Tag)
	VALUES
		('CVS_ABILITY_VIZIER', 'CVS_CLASS_VIZIER'),
		('CVS_UNIT_VIZIER', 'CVS_CLASS_VIZIER');

INSERT INTO UnitAbilities (UnitAbilityType, Name, Description)
	VALUES
		('CVS_ABILITY_VIZIER', 'LOC_CVS_ABILITY_VIZIER_NAME', 'LOC_CVS_ABILITY_VIZIER_DESCRIPTION');

INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId)
	VALUES
		('CVS_ABILITY_VIZIER', 'CVS_VIZIER_CITY_GOLD_PER_DISTRICT'),
		('CVS_ABILITY_VIZIER', 'CVS_VIZIER_CITY_FAITH_PER_DISTRICT'),
		('CVS_ABILITY_VIZIER', 'CVS_VIZIER_CITY_PRODUCTION_PER_DISTRICT'),
		('CVS_ABILITY_VIZIER', 'CVS_VIZIER_CITY_FOOD_PER_DISTRICT');

--=====
--UNITS 
--=====			
INSERT INTO UnitAiInfos (UnitType, AiType)
	VALUES
		('CVS_UNIT_VIZIER', 'UNITTYPE_CIVILIAN');

INSERT INTO Units (UnitType, BaseMoves, Cost, CostProgressionModel, CostProgressionParam1, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name, Description, PurchaseYield, PromotionClass, Maintenance, PrereqCivic, ObsoleteCivic, TraitType)
	VALUES
		('CVS_UNIT_VIZIER', 2, 180, 'COST_PROGRESSION_PREVIOUS_COPIES', 30, 'ADVISOR_GENERIC', 2, 0, 'DOMAIN_LAND', 'FORMATION_CLASS_SUPPORT', 'LOC_CVS_UNIT_VIZIER_NAME', 'LOC_CVS_UNIT_VIZIER_DESCRIPTION', 'YIELD_GOLD', 'PROMOTION_CLASS_SUPPORT', 3, 'CIVIC_CIVIL_SERVICE', 'CIVIC_NATIONALISM', 'CVS_TRAIT_LEADER_UNIT_VIZIER');

--INSERT INTO THECRAZYSCOTSMAN_DEBUGGING (Document, Marker, Pass) SELECT 'CVS_Seljuq_AlpArslan_Database', 'UNITS', 1;			
--======
--TRAITS
--======
INSERT INTO LeaderTraits (LeaderType, TraitType)
	VALUES
		('CVS_LEADER_ALP_ARSLAN', 'CVS_TRAIT_LEADER_ORDER_OF_THE_REALM'),
		('CVS_LEADER_ALP_ARSLAN', 'CVS_TRAIT_LEADER_UNIT_VIZIER');

INSERT INTO Traits (TraitType, Name, Description)
	VALUES
		('CVS_TRAIT_LEADER_ORDER_OF_THE_REALM', 'LOC_CVS_TRAIT_LEADER_ORDER_OF_THE_REALM_NAME', 'LOC_CVS_TRAIT_LEADER_ORDER_OF_THE_REALM_DESCRIPTION'),
		('CVS_TRAIT_LEADER_UNIT_VIZIER', 'LOC_CVS_TRAIT_LEADER_UNIT_VIZIER_NAME', 'LOC_CVS_TRAIT_LEADER_UNIT_VIZIER_DESCRIPTION'),
		('CVS_TRAIT_AGENDA_LION_OF_MANZIKERT', 'LOC_PLACEHOLDER', 'LOC_PLACEHOLDER');	
		
--========
--AGENDAS	
--========
INSERT INTO Agendas (AgendaType, Name, Description)
	VALUES
		('CVS_AGENDA_LION_OF_MANZIKERT', 'LOC_CVS_AGENDA_LION_OF_MANZIKERT_NAME', 'LOC_CVS_AGENDA_LION_OF_MANZIKERT_DESCRIPTION');

INSERT INTO HistoricalAgendas (LeaderType, AgendaType)
	VALUES
		('CVS_LEADER_ALP_ARSLAN', 'CVS_AGENDA_LION_OF_MANZIKERT');

INSERT INTO AgendaTraits (AgendaType, TraitType)
	VALUES
		('CVS_AGENDA_LION_OF_MANZIKERT', 'CVS_TRAIT_AGENDA_LION_OF_MANZIKERT');

INSERT INTO ExclusiveAgendas (AgendaOne, AgendaTwo)
	VALUES
		('CVS_AGENDA_LION_OF_MANZIKERT', 'AGENDA_STANDING_ARMY');

--INSERT INTO THECRAZYSCOTSMAN_DEBUGGING (Document, Marker, Pass) SELECT 'CVS_Seljuq_AlpArslan_Database', 'TRAITS', 1;			
--========
--LEADER AI
--========
INSERT INTO AiListTypes (ListType)
	VALUES
		('CVS_AlpArslan_Buildings'),
		('CVS_AlpArslan_Districts'),
		('CVS_AlpArslan_Civics'),
		('CVS_AlpArslan_Techs'),
		('CVS_AlpArslan_Units'),
		('CVS_AlpArslan_UnitClasses'),
		('CVS_AlpArslan_Settlement'),
		('CVS_AlpArslan_Pseudoyields'),
		('CVS_AlpArslan_Yields'),
		('CVS_AlpArslan_Diplomacy');
	
INSERT INTO AiLists	(ListType, LeaderType, AgendaType, System)
	VALUES
		('CVS_AlpArslan_Buildings', 'CVS_TRAIT_LEADER_ORDER_OF_THE_REALM', NULL, 'Buildings'),
		('CVS_AlpArslan_Districts', 'CVS_TRAIT_LEADER_ORDER_OF_THE_REALM', NULL, 'Districts'),
		('CVS_AlpArslan_Civics', 'CVS_TRAIT_LEADER_ORDER_OF_THE_REALM', NULL, 'Civics'),
		('CVS_AlpArslan_Techs', 'CVS_TRAIT_LEADER_ORDER_OF_THE_REALM', NULL, 'Technologies'),
		('CVS_AlpArslan_Units', 'CVS_TRAIT_LEADER_ORDER_OF_THE_REALM', NULL, 'Units'),
		('CVS_AlpArslan_UnitClasses', 'CVS_TRAIT_LEADER_ORDER_OF_THE_REALM', NULL, 'UnitPromotionClasses'),
		('CVS_AlpArslan_Settlement', 'CVS_TRAIT_LEADER_ORDER_OF_THE_REALM', NULL, 'PlotEvaluations'),
		('CVS_AlpArslan_Pseudoyields', 'CVS_TRAIT_LEADER_ORDER_OF_THE_REALM', NULL, 'PseudoYields'),
		('CVS_AlpArslan_Yields', 'CVS_TRAIT_LEADER_ORDER_OF_THE_REALM', NULL, 'Yields'),
		('CVS_AlpArslan_Diplomacy', 'CVS_TRAIT_LEADER_ORDER_OF_THE_REALM', NULL, 'DiplomaticActions');
		
INSERT INTO AiFavoredItems (ListType, Favored, Value, Item, StringVal)
	VALUES
		('CVS_AlpArslan_Buildings', 1, 0, 'BUILDING_MONUMENT', NULL),
		('CVS_AlpArslan_Buildings', 1, 0, 'BUILDING_WALLS', NULL),
		('CVS_AlpArslan_Buildings', 1, 0, 'BUILDING_CASTLE', NULL),
		('CVS_AlpArslan_Buildings', 1, 0, 'BUILDING_STAR_FORT', NULL),
		('CVS_AlpArslan_Buildings', 1, 0, 'BUILDING_MARKET', NULL),
		('CVS_AlpArslan_Buildings', 1, 0, 'BUILDING_BANK', NULL),
		('CVS_AlpArslan_Buildings', 1, 0, 'BUILDING_STOCK_EXCHANGE', NULL),
		('CVS_AlpArslan_Buildings', 1, 0, 'BUILDING_BARRACKS', NULL),
		('CVS_AlpArslan_Buildings', 1, 0, 'BUILDING_STABLE', NULL),
		('CVS_AlpArslan_Buildings', 1, 0, 'BUILDING_ARMORY', NULL),
		('CVS_AlpArslan_Buildings', 1, 0, 'BUILDING_MILITARY_ACADEMY', NULL),
		('CVS_AlpArslan_Buildings', 1, 0, 'BUILDING_COLOSSUS', NULL),
		('CVS_AlpArslan_Buildings', 1, 0, 'BUILDING_GREAT_ZIMBABWE', NULL),
		('CVS_AlpArslan_Buildings', 1, 0, 'BUILDING_BIG_BEN', NULL),
		('CVS_AlpArslan_Districts', 1, 0, 'DISTRICT_ENCAMPMENT', NULL),
		('CVS_AlpArslan_Districts', 1, 0, 'DISTRICT_COMMERCIAL_HUB', NULL),
		('CVS_AlpArslan_Districts', 1, 0, 'DISTRICT_THEATER', NULL),
		('CVS_AlpArslan_Civics', 1, 0, 'CIVIC_POLITICAL_PHILOSOPHY', NULL),
		('CVS_AlpArslan_Civics', 1, 0, 'CIVIC_FOREIGN_TRADE', NULL),
		('CVS_AlpArslan_Civics', 1, 0, 'CIVIC_STATE_WORKFORCE', NULL),
		('CVS_AlpArslan_Civics', 1, 0, 'CIVIC_CIVIL_SERVICE', NULL),
		('CVS_AlpArslan_Civics', 1, 0, 'CIVIC_FEUDALISM', NULL),
		('CVS_AlpArslan_Civics', 1, 0, 'CIVIC_MERCANTILISM', NULL),
		('CVS_AlpArslan_Civics', 1, 0, 'CIVIC_CAPITALISM', NULL),
		('CVS_AlpArslan_Techs', 1, 0, 'TECH_BRONZE_WORKING', NULL),
		('CVS_AlpArslan_Techs', 1, 0, 'TECH_CURRENCY', NULL),
		('CVS_AlpArslan_Techs', 1, 0, 'TECH_SHIPBUILDING', NULL),
		('CVS_AlpArslan_Techs', 1, 0, 'TECH_STIRRUPS', NULL),
		('CVS_AlpArslan_Techs', 1, 0, 'TECH_BANKING', NULL),
		('CVS_AlpArslan_Techs', 1, 0, 'TECH_ECONOMICS', NULL),
		('CVS_AlpArslan_Units', 1, 0, 'CVS_UNIT_SARBAZ', NULL),
		('CVS_AlpArslan_Units', 1, 0, 'CVS_UNIT_VIZIER', NULL),
		('CVS_AlpArslan_UnitClasses', 1, 1, 'PROMOTION_CLASS_ANTI_CAVALRY', NULL),
		('CVS_AlpArslan_UnitClasses', 1, 1, 'PROMOTION_CLASS_LIGHT_CAVALRY', NULL),
		('CVS_AlpArslan_UnitClasses', 1, 1, 'PROMOTION_CLASS_HEAVY_CAVALRY', NULL),
		('CVS_AlpArslan_Settlement', 1, 0, 'Fresh Water', NULL),
		('CVS_AlpArslan_Settlement', 1, 0, 'Resource Class', 'RESOURCECLASS_BONUS'),
		('CVS_AlpArslan_Settlement', 1, 10, 'Resource Class', 'RESOURCECLASS_LUXURY'),
		('CVS_AlpArslan_Settlement', 1, 0, 'Specific Feature', 'FEATURE_OASIS'),
		('CVS_AlpArslan_Pseudoyields', 1, 0, 'PSEUDOYIELD_GPP_GENERAL', NULL),
		('CVS_AlpArslan_Pseudoyields', 1, 0, 'PSEUDOYIELD_GPP_MERCHANT', NULL),
		('CVS_AlpArslan_Pseudoyields', 1, 0, 'PSEUDOYIELD_UNIT_TRADE', NULL),
		('CVS_AlpArslan_Pseudoyields', 1, 0, 'PSEUDOYIELD_UNIT_COMBAT', NULL),
		('CVS_AlpArslan_Pseudoyields', 1, 0, 'PSEUDOYIELD_IMPROVEMENT', NULL),
		('CVS_AlpArslan_Yields', 1, 10, 'YIELD_GOLD', NULL),
		('CVS_AlpArslan_Yields', 1, 10, 'YIELD_CULTURE', NULL),
		('CVS_AlpArslan_Diplomacy', 1, 0, 'DIPLOACTION_DIPLOMATIC_DELEGATION', NULL),
		('CVS_AlpArslan_Diplomacy', 1, 0, 'DIPLOACTION_RESIDENT_EMBASSY', NULL),
		('CVS_AlpArslan_Diplomacy', 1, 0, 'DIPLOACTION_PROPOSE_TRADE', NULL),
		('CVS_AlpArslan_Diplomacy', 1, 0, 'DIPLOACTION_JOINT_WAR', NULL),
		('CVS_AlpArslan_Diplomacy', 1, 0, 'DIPLOACTION_DECLARE_TERRITORIAL_WAR', NULL);

--INSERT INTO THECRAZYSCOTSMAN_DEBUGGING (Document, Marker, Pass) SELECT 'CVS_Seljuq_AlpArslan_Database', 'AI', 1;	
--=========
--MODIFIERS
--=========
INSERT INTO TraitModifiers (TraitType, ModifierId)
	VALUES
		('CVS_TRAIT_LEADER_ORDER_OF_THE_REALM', 'CVS_ALPARSLAN_TRAINED_LANDUNIT_FREE_PROMOTION'),
		('CVS_TRAIT_AGENDA_LION_OF_MANZIKERT', 'CVS_AGENDA_ORDER_OF_THE_REALM_PLAYER_HAS_WEAK_ARMY'),
		('CVS_TRAIT_AGENDA_LION_OF_MANZIKERT', 'CVS_AGENDA_ORDER_OF_THE_REALM_PLAYER_HAS_STRONG_ARMY'),
		('CVS_TRAIT_AGENDA_LION_OF_MANZIKERT', 'CVS_AGENDA_ORDER_OF_THE_REALM_PLAYER_DECLARES_HOLY_WAR_DIFFERENT_RELIGION');

INSERT INTO DynamicModifiers (ModifierType, CollectionType, EffectType)
	VALUES
		('CVS_MODIFIER_VIZIER_ATTACH_MODIFIER_IN_NEAREST_CITY', 'COLLECTION_UNIT_NEAREST_OWNER_CITY', 'EFFECT_ATTACH_MODIFIER'),
		('CVS_MODIFIER_VIZIER_ADJUST_CITY_YIELD_PER_DISTRICT', 'COLLECTION_OWNER', 'EFFECT_ADJUST_CITY_YIELD_PER_DISTRICT'),
		('CVS_MODIFIER_VIZIER_ATTACH_MODIFIER_TO_CITY_DISTRICTS', 'COLLECTION_CITY_DISTRICTS', 'EFFECT_ATTACH_MODIFIER'),
		('CVS_MODIFIER_VIZIER_ADJUST_CAPITAL_YIELD_PER_CITY_DISTRICT', 'COLLECTION_PLAYER_CAPITAL_CITY', 'EFFECT_ADJUST_CITY_YIELD_CHANGE'),
		('CVS_MODIFIER_ALPARSLAN_TRAINED_UNIT_FREE_PROMOTION', 'COLLECTION_CITY_TRAINED_UNITS', 'EFFECT_ADJUST_UNIT_GRANT_EXPERIENCE');

INSERT INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId, SubjectRequirementSetId)
	VALUES
		--VIZIER
		('CVS_VIZIER_CITY_GOLD_PER_DISTRICT', 'CVS_MODIFIER_VIZIER_ATTACH_MODIFIER_IN_NEAREST_CITY', 'CVS_VIZIER_PLOT_HAS_CITY_CENTER_REQUIREMENTSET', NULL),
		('CVS_VIZIER_CITY_FAITH_PER_DISTRICT', 'CVS_MODIFIER_VIZIER_ATTACH_MODIFIER_IN_NEAREST_CITY', 'CVS_VIZIER_PLOT_HAS_CITY_CENTER_REQUIREMENTSET', NULL),
		('CVS_VIZIER_CITY_PRODUCTION_PER_DISTRICT', 'CVS_MODIFIER_VIZIER_ATTACH_MODIFIER_IN_NEAREST_CITY', 'CVS_VIZIER_PLOT_HAS_CITY_CENTER_REQUIREMENTSET', NULL),
		('CVS_VIZIER_CITY_FOOD_PER_DISTRICT', 'CVS_MODIFIER_VIZIER_ATTACH_MODIFIER_IN_NEAREST_CITY', 'CVS_VIZIER_PLOT_HAS_CITY_CENTER_REQUIREMENTSET', NULL),
		('CVS_VIZIER_CITY_GOLD_PER_DISTRICT_MODIFIER', 'CVS_MODIFIER_VIZIER_ADJUST_CITY_YIELD_PER_DISTRICT', NULL, NULL),
		('CVS_VIZIER_CITY_FAITH_PER_DISTRICT_MODIFIER', 'CVS_MODIFIER_VIZIER_ADJUST_CITY_YIELD_PER_DISTRICT', NULL, NULL),
		('CVS_VIZIER_CITY_PRODUCTION_PER_DISTRICT_MODIFIER', 'CVS_MODIFIER_VIZIER_ADJUST_CITY_YIELD_PER_DISTRICT', NULL, NULL),
		('CVS_VIZIER_CITY_FOOD_PER_DISTRICT_MODIFIER', 'CVS_MODIFIER_VIZIER_ADJUST_CITY_YIELD_PER_DISTRICT', NULL, NULL),
		
		--ORDER OF THE REALM
		('CVS_ALPARSLAN_TRAINED_LANDUNIT_FREE_PROMOTION', 'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER', NULL, 'CVS_ALPARSLAN_CITY_HAS_GOVERNOR_REQUIREMENTSET'),
		('CVS_ALPARSLAN_TRAINED_LANDUNIT_FREE_PROMOTION_MODIFIER', 'CVS_MODIFIER_ALPARSLAN_TRAINED_UNIT_FREE_PROMOTION', NULL, 'CVS_ALPARSLAN_UNIT_IS_LANDCOMBAT_REQUIREMENTSET'),
		
		--LION OF MANZIKERT
		('CVS_AGENDA_ORDER_OF_THE_REALM_PLAYER_HAS_WEAK_ARMY', 'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER', NULL, 'CVS_ALPARSLAN_PLAYER_HAS_WEAK_STANDING_ARMY_REQUIREMENTSET'),
		('CVS_AGENDA_ORDER_OF_THE_REALM_PLAYER_HAS_STRONG_ARMY', 'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER', NULL, 'CVS_ALPARSLAN_PLAYER_HAS_STRONG_STANDING_ARMY_REQUIREMENTSET'),
		('CVS_AGENDA_ORDER_OF_THE_REALM_PLAYER_DECLARES_HOLY_WAR_DIFFERENT_RELIGION', 'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER', NULL, 'CVS_ALPARSLAN_PLAYER_DECLARES_HOLY_WAR_AND_DIFFERENT_RELIGION');

INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES
		--VIZIER 
		('CVS_VIZIER_CITY_GOLD_PER_DISTRICT', 'ModifierId', 'CVS_VIZIER_CITY_GOLD_PER_DISTRICT_MODIFIER'),
		('CVS_VIZIER_CITY_FAITH_PER_DISTRICT', 'ModifierId', 'CVS_VIZIER_CITY_FAITH_PER_DISTRICT_MODIFIER'),
		('CVS_VIZIER_CITY_PRODUCTION_PER_DISTRICT', 'ModifierId', 'CVS_VIZIER_CITY_PRODUCTION_PER_DISTRICT_MODIFIER'),
		('CVS_VIZIER_CITY_FOOD_PER_DISTRICT', 'ModifierId', 'CVS_VIZIER_CITY_FOOD_PER_DISTRICT_MODIFIER'),
		('CVS_VIZIER_CITY_GOLD_PER_DISTRICT_MODIFIER', 'YieldType', 'YIELD_GOLD'),
		('CVS_VIZIER_CITY_GOLD_PER_DISTRICT_MODIFIER', 'Amount', 2),
		('CVS_VIZIER_CITY_FAITH_PER_DISTRICT_MODIFIER', 'YieldType', 'YIELD_FAITH'),
		('CVS_VIZIER_CITY_FAITH_PER_DISTRICT_MODIFIER', 'Amount', 2),
		('CVS_VIZIER_CITY_PRODUCTION_PER_DISTRICT_MODIFIER', 'YieldType', 'YIELD_PRODUCTION'),
		('CVS_VIZIER_CITY_PRODUCTION_PER_DISTRICT_MODIFIER', 'Amount', 1),
		('CVS_VIZIER_CITY_FOOD_PER_DISTRICT_MODIFIER', 'YieldType', 'YIELD_FOOD'),
		('CVS_VIZIER_CITY_FOOD_PER_DISTRICT_MODIFIER', 'Amount', 1),
		
		--ORDER OF THE REALM
		('CVS_ALPARSLAN_TRAINED_LANDUNIT_FREE_PROMOTION', 'ModifierId', 'CVS_ALPARSLAN_TRAINED_LANDUNIT_FREE_PROMOTION_MODIFIER'),
		('CVS_ALPARSLAN_TRAINED_LANDUNIT_FREE_PROMOTION_MODIFIER', 'Amount', -1),
		
		--LION OF MANZIKERT
		('CVS_AGENDA_ORDER_OF_THE_REALM_PLAYER_HAS_WEAK_ARMY', 'InitialValue', 6),
		('CVS_AGENDA_ORDER_OF_THE_REALM_PLAYER_HAS_WEAK_ARMY', 'StatementKey', 'LOC_DIPLO_KUDO_LEADER_ALP_ARSLAN_AGENDA_LOW_STANDING_ARMY'),
		('CVS_AGENDA_ORDER_OF_THE_REALM_PLAYER_HAS_WEAK_ARMY', 'SimpleModifierDescription', 'LOC_DIPLO_MODIFIER_ALP_ARSLAN_LOW_STANDING_ARMY'),
		('CVS_AGENDA_ORDER_OF_THE_REALM_PLAYER_HAS_STRONG_ARMY', 'InitialValue', -6),
		('CVS_AGENDA_ORDER_OF_THE_REALM_PLAYER_HAS_STRONG_ARMY', 'StatementKey', 'LOC_DIPLO_WARNING_LEADER_ALP_ARSLAN_AGENDA_HIGH_STANDING_ARMY'),
		('CVS_AGENDA_ORDER_OF_THE_REALM_PLAYER_HAS_STRONG_ARMY', 'SimpleModifierDescription', 'LOC_DIPLO_MODIFIER_ALP_ARSLAN_HIGH_STANDING_ARMY'),
		('CVS_AGENDA_ORDER_OF_THE_REALM_PLAYER_DECLARES_HOLY_WAR_DIFFERENT_RELIGION', 'InitialValue', -12),
		('CVS_AGENDA_ORDER_OF_THE_REALM_PLAYER_DECLARES_HOLY_WAR_DIFFERENT_RELIGION', 'ReductionTurns', 12),
		('CVS_AGENDA_ORDER_OF_THE_REALM_PLAYER_DECLARES_HOLY_WAR_DIFFERENT_RELIGION', 'ReductionValue', -1),
		('CVS_AGENDA_ORDER_OF_THE_REALM_PLAYER_DECLARES_HOLY_WAR_DIFFERENT_RELIGION', 'StatementKey', 'LOC_DIPLO_WARNING_LEADER_ALP_ARSLAN_AGENDA_DECLARED_HOLY_WAR_DIFFERENT_RELIGION'),
		('CVS_AGENDA_ORDER_OF_THE_REALM_PLAYER_DECLARES_HOLY_WAR_DIFFERENT_RELIGION', 'SimpleModifierDescription', 'LOC_DIPLO_MODIFIER_CVS_ALP_ARSLAN_DECLARED_HOLY_WAR_DIFFERENT_RELIGION');

INSERT INTO ModifierStrings (ModifierId, Context, Text)
	VALUES
		('CVS_AGENDA_ORDER_OF_THE_REALM_PLAYER_HAS_WEAK_ARMY', 'Sample', 'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
		('CVS_AGENDA_ORDER_OF_THE_REALM_PLAYER_HAS_STRONG_ARMY', 'Sample', 'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
		('CVS_AGENDA_ORDER_OF_THE_REALM_PLAYER_DECLARES_HOLY_WAR_DIFFERENT_RELIGION', 'Sample', 'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL');

--INSERT INTO THECRAZYSCOTSMAN_DEBUGGING (Document, Marker, Pass) SELECT 'CVS_Seljuq_AlpArslan_Database', 'MODIFIERS', 1;	
--============
--REQUIREMENTS
--============
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)
	VALUES
		--VIZIER
		('CVS_VIZIER_UNIT_ADJACENCY_REQUIREMENTSET', 'REQUIREMENTSET_TEST_ALL'),
		('CVS_VIZIER_PLOT_HAS_CITY_CENTER_REQUIREMENTSET', 'REQUIREMENTSET_TEST_ALL'),
		('CVS_VIZIER_DISTRICT_IS_GENERIC_REQUIREMENTSET', 'REQUIREMENTSET_TEST_ANY'),
		
		--ORDER OF THE REALM
		('CVS_ALPARSLAN_CITY_HAS_GOVERNOR_REQUIREMENTSET', 'REQUIREMENTSET_TEST_ALL'),
		('CVS_ALPARSLAN_UNIT_IS_LANDCOMBAT_REQUIREMENTSET', 'REQUIREMENTSET_TEST_ANY'),
		
		--LION OF MANZIKERT
		('CVS_ALPARSLAN_PLAYER_HAS_STRONG_STANDING_ARMY_REQUIREMENTSET', 'REQUIREMENTSET_TEST_ALL'),
		('CVS_ALPARSLAN_PLAYER_HAS_WEAK_STANDING_ARMY_REQUIREMENTSET', 'REQUIREMENTSET_TEST_ALL'),
		('CVS_ALPARSLAN_PLAYER_DECLARES_HOLY_WAR_AND_DIFFERENT_RELIGION', 'REQUIREMENTSET_TEST_ALL');
		
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
	VALUES
		--VIZIER
		('CVS_VIZIER_UNIT_ADJACENCY_REQUIREMENTSET', 'CVS_VIZIER_REQUIRES_UNIT_WITHIN_2_TILES'),
		('CVS_VIZIER_UNIT_ADJACENCY_REQUIREMENTSET', 'CVS_VIZIER_REQUIRES_LAND_DOMAIN'),
		('CVS_VIZIER_PLOT_HAS_CITY_CENTER_REQUIREMENTSET', 'CVS_VIZIER_REQUIRES_PLOT_HAS_CITY_CENTER'),
		('CVS_VIZIER_DISTRICT_IS_GENERIC_REQUIREMENTSET', 'CVS_VIZIER_REQUIRES_DISTRICT_IS_CITY_CENTER'),
		('CVS_VIZIER_DISTRICT_IS_GENERIC_REQUIREMENTSET', 'CVS_VIZIER_REQUIRES_DISTRICT_IS_AQUEDUCT'),
		('CVS_VIZIER_DISTRICT_IS_GENERIC_REQUIREMENTSET', 'CVS_VIZIER_REQUIRES_DISTRICT_IS_NEIGHBORHOOD'),
		
		--ORDER OF THE REALM
		('CVS_ALPARSLAN_CITY_HAS_GOVERNOR_REQUIREMENTSET', 'CVS_ALPARSLAN_REQUIRES_CITY_HAS_GOVERNOR'),
		('CVS_ALPARSLAN_UNIT_IS_LANDCOMBAT_REQUIREMENTSET', 'CVS_ALPARSLAN_REQUIRES_PROMOTION_CLASS_RECON'),
		('CVS_ALPARSLAN_UNIT_IS_LANDCOMBAT_REQUIREMENTSET', 'CVS_ALPARSLAN_REQUIRES_PROMOTION_CLASS_MELEE'),
		('CVS_ALPARSLAN_UNIT_IS_LANDCOMBAT_REQUIREMENTSET', 'CVS_ALPARSLAN_REQUIRES_PROMOTION_CLASS_RANGED'),
		('CVS_ALPARSLAN_UNIT_IS_LANDCOMBAT_REQUIREMENTSET', 'CVS_ALPARSLAN_REQUIRES_PROMOTION_CLASS_SIEGE'),
		('CVS_ALPARSLAN_UNIT_IS_LANDCOMBAT_REQUIREMENTSET', 'CVS_ALPARSLAN_REQUIRES_PROMOTION_CLASS_ANTI_CAVALRY'),
		('CVS_ALPARSLAN_UNIT_IS_LANDCOMBAT_REQUIREMENTSET', 'CVS_ALPARSLAN_REQUIRES_PROMOTION_CLASS_LIGHT_CAVALRY'),
		('CVS_ALPARSLAN_UNIT_IS_LANDCOMBAT_REQUIREMENTSET', 'CVS_ALPARSLAN_REQUIRES_PROMOTION_CLASS_HEAVY_CAVALRY'),
		
		--LION OF MANZIKERT
		('CVS_ALPARSLAN_PLAYER_HAS_STRONG_STANDING_ARMY_REQUIREMENTSET', 'CVS_ALPARSLAN_REQUIRES_STRONG_STANDING_ARMY'),
		('CVS_ALPARSLAN_PLAYER_HAS_STRONG_STANDING_ARMY_REQUIREMENTSET', 'REQUIRES_MAJOR_CIV_OPPONENT'),
		('CVS_ALPARSLAN_PLAYER_HAS_STRONG_STANDING_ARMY_REQUIREMENTSET', 'REQUIRES_MET_30_TURNS_AGO'),
		('CVS_ALPARSLAN_PLAYER_HAS_WEAK_STANDING_ARMY_REQUIREMENTSET', 'CVS_ALPARSLAN_REQUIRES_WEAK_STANDING_ARMY'),
		('CVS_ALPARSLAN_PLAYER_HAS_WEAK_STANDING_ARMY_REQUIREMENTSET', 'REQUIRES_MAJOR_CIV_OPPONENT'),
		('CVS_ALPARSLAN_PLAYER_HAS_WEAK_STANDING_ARMY_REQUIREMENTSET', 'REQUIRES_MET_30_TURNS_AGO'),
		('CVS_ALPARSLAN_PLAYER_DECLARES_HOLY_WAR_AND_DIFFERENT_RELIGION', 'CVS_ALPARSLAN_REQUIRES_PLAYER_DECLARED_HOLY_WAR'),
		('CVS_ALPARSLAN_PLAYER_DECLARES_HOLY_WAR_AND_DIFFERENT_RELIGION', 'CVS_ALPARSLAN_REQUIRES_PLAYER_DIFFERENT_RELIGION'),
		('CVS_ALPARSLAN_PLAYER_DECLARES_HOLY_WAR_AND_DIFFERENT_RELIGION', 'REQUIRES_PLAYERS_HAVE_MET'),
		('CVS_ALPARSLAN_PLAYER_DECLARES_HOLY_WAR_AND_DIFFERENT_RELIGION', 'REQUIRES_MAJOR_CIV_OPPONENT');		

INSERT INTO Requirements (RequirementId, RequirementType, Inverse, Triggered)
	VALUES
		--VIZIER
		('CVS_VIZIER_REQUIRES_UNIT_WITHIN_2_TILES', 'REQUIREMENT_PLOT_ADJACENT_TO_OWNER', 0, 0),
		('CVS_VIZIER_REQUIRES_LAND_DOMAIN', 'REQUIREMENT_UNIT_DOMAIN_MATCHES', 0, 0),
		('CVS_VIZIER_REQUIRES_PLOT_HAS_CITY_CENTER', 'REQUIREMENT_PLOT_DISTRICT_TYPE_MATCHES', 0, 0),
		('CVS_VIZIER_REQUIRES_DISTRICT_IS_CITY_CENTER', 'REQUIREMENT_DISTRICT_TYPE_MATCHES', 0, 0),
		('CVS_VIZIER_REQUIRES_DISTRICT_IS_AQUEDUCT', 'REQUIREMENT_DISTRICT_TYPE_MATCHES', 0, 0),
		('CVS_VIZIER_REQUIRES_DISTRICT_IS_NEIGHBORHOOD', 'REQUIREMENT_DISTRICT_TYPE_MATCHES', 0, 0),
		
		--ORDER OF THE REALM
		('CVS_ALPARSLAN_REQUIRES_CITY_HAS_GOVERNOR', 'REQUIREMENT_CITY_HAS_GOVERNOR', 0, 0),
		('CVS_ALPARSLAN_REQUIRES_PROMOTION_CLASS_RECON', 'REQUIREMENT_UNIT_PROMOTION_CLASS_MATCHES', 0, 0),
		('CVS_ALPARSLAN_REQUIRES_PROMOTION_CLASS_MELEE', 'REQUIREMENT_UNIT_PROMOTION_CLASS_MATCHES', 0, 0),
		('CVS_ALPARSLAN_REQUIRES_PROMOTION_CLASS_RANGED', 'REQUIREMENT_UNIT_PROMOTION_CLASS_MATCHES', 0, 0),
		('CVS_ALPARSLAN_REQUIRES_PROMOTION_CLASS_SIEGE', 'REQUIREMENT_UNIT_PROMOTION_CLASS_MATCHES', 0, 0),
		('CVS_ALPARSLAN_REQUIRES_PROMOTION_CLASS_ANTI_CAVALRY', 'REQUIREMENT_UNIT_PROMOTION_CLASS_MATCHES', 0, 0),
		('CVS_ALPARSLAN_REQUIRES_PROMOTION_CLASS_LIGHT_CAVALRY', 'REQUIREMENT_UNIT_PROMOTION_CLASS_MATCHES', 0, 0),
		('CVS_ALPARSLAN_REQUIRES_PROMOTION_CLASS_HEAVY_CAVALRY', 'REQUIREMENT_UNIT_PROMOTION_CLASS_MATCHES', 0, 0),
		
		--LION OF MANZIKERT
		('CVS_ALPARSLAN_REQUIRES_STRONG_STANDING_ARMY', 'REQUIREMENT_PLAYER_MILITARY_STRENGTH_LEAD', 0, 0),
		('CVS_ALPARSLAN_REQUIRES_WEAK_STANDING_ARMY', 'REQUIREMENT_PLAYER_MILITARY_STRENGTH_LEAD', 0, 0),
		('CVS_ALPARSLAN_REQUIRES_PLAYER_DECLARED_HOLY_WAR', 'REQUIREMENT_PLAYER_DECLARED_WAR', 0, 1),
		('CVS_ALPARSLAN_REQUIRES_PLAYER_DIFFERENT_RELIGION', 'REQUIREMENT_PLAYER_IS_SAME_RELIGION', 1, 0);

INSERT INTO RequirementArguments (RequirementId, Name, Value)
	VALUES
		--VIZIER
		('CVS_VIZIER_REQUIRES_UNIT_WITHIN_2_TILES', 'MinDistance', 0),
		('CVS_VIZIER_REQUIRES_UNIT_WITHIN_2_TILES', 'MaxDistance', 2),
		('CVS_VIZIER_REQUIRES_LAND_DOMAIN', 'UnitDomain', 'DOMAIN_LAND'),
		('CVS_VIZIER_REQUIRES_PLOT_HAS_CITY_CENTER', 'DistrictType', 'DISTRICT_CITY_CENTER'),
		('CVS_VIZIER_REQUIRES_DISTRICT_IS_CITY_CENTER', 'DistrictType', 'DISTRICT_CITY_CENTER'),
		('CVS_VIZIER_REQUIRES_DISTRICT_IS_AQUEDUCT', 'DistrictType', 'DISTRICT_AQUEDUCT'),
		('CVS_VIZIER_REQUIRES_DISTRICT_IS_NEIGHBORHOOD', 'DistrictType', 'DISTRICT_NEIGHBORHOOD'),
		
		--ORDER OF THE REALM
		('CVS_ALPARSLAN_REQUIRES_PROMOTION_CLASS_RECON', 'UnitPromotionClass', 'PROMOTION_CLASS_RECON'),
		('CVS_ALPARSLAN_REQUIRES_PROMOTION_CLASS_MELEE', 'UnitPromotionClass', 'PROMOTION_CLASS_MELEE'),
		('CVS_ALPARSLAN_REQUIRES_PROMOTION_CLASS_RANGED', 'UnitPromotionClass', 'PROMOTION_CLASS_RANGED'),
		('CVS_ALPARSLAN_REQUIRES_PROMOTION_CLASS_SIEGE', 'UnitPromotionClass', 'PROMOTION_CLASS_SIEGE'),
		('CVS_ALPARSLAN_REQUIRES_PROMOTION_CLASS_ANTI_CAVALRY', 'UnitPromotionClass', 'PROMOTION_CLASS_ANTI_CAVALRY'),
		('CVS_ALPARSLAN_REQUIRES_PROMOTION_CLASS_LIGHT_CAVALRY', 'UnitPromotionClass', 'PROMOTION_CLASS_LIGHT_CAVALRY'),
		('CVS_ALPARSLAN_REQUIRES_PROMOTION_CLASS_HEAVY_CAVALRY', 'UnitPromotionClass', 'PROMOTION_CLASS_HEAVY_CAVALRY'),
		
		--LION OF MANZIKERT
		('CVS_ALPARSLAN_REQUIRES_STRONG_STANDING_ARMY', 'MinimumDelta', 5),
		('CVS_ALPARSLAN_REQUIRES_STRONG_STANDING_ARMY', 'StrengthRatio', 1.2),
		('CVS_ALPARSLAN_REQUIRES_STRONG_STANDING_ARMY', 'DomainType', 'DOMAIN_LAND'),
		('CVS_ALPARSLAN_REQUIRES_WEAK_STANDING_ARMY', 'MinimumDelta', 5),
		('CVS_ALPARSLAN_REQUIRES_WEAK_STANDING_ARMY', 'StrengthRatio', -1.2),
		('CVS_ALPARSLAN_REQUIRES_WEAK_STANDING_ARMY', 'DomainType', 'DOMAIN_LAND'),
		('CVS_ALPARSLAN_REQUIRES_PLAYER_DECLARED_HOLY_WAR', 'WarType', 'HOLY_WAR'),
		('CVS_ALPARSLAN_REQUIRES_PLAYER_DECLARED_HOLY_WAR', 'WhileMet', 1);

--INSERT INTO THECRAZYSCOTSMAN_DEBUGGING (Document, Marker, Pass) SELECT 'CVS_Seljuq_AlpArslan_Database', 'REQUIREMENTS', 1;	
--===============
--FAVORED RELIGIONS
--===============
INSERT OR REPLACE INTO FavoredReligions	(LeaderType, ReligionType)
SELECT 'CVS_LEADER_ALP_ARSLAN', ReligionType
FROM Religions WHERE ReligionType = 'RELIGION_ISLAM';

--=======
--MOMENTS
--=======
INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
	VALUES
		('MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', 'CVS_UNIT_VIZIER', 'Vizier_HM.dds');

--=====================
--RULE WITH FAITH SUPPORT
--=====================
CREATE TABLE IF NOT EXISTS Leader_Titles 
	(
	LeaderType TEXT default null,
	GovernmentType TEXT default null,
	LeaderTitle	TEXT default null,
	PolicyType TEXT default null,
	UseFeminine	BOOLEAN	default 0,
	TitleIsFullName	BOOLEAN	default 0
	);	

INSERT INTO Leader_Titles (LeaderType, GovernmentType, PolicyType, LeaderTitle)
	VALUES
		('CVS_LEADER_ALP_ARSLAN', 'GOVERNMENT_CHIEFDOM', NULL, 'LOC_GOVERNMENT_JFD_CHIEFDOM_LEADER_TITLE_CVS_ALP_ARSLAN'),
		('CVS_LEADER_ALP_ARSLAN', 'GOVERNMENT_JFD_HORDE', NULL, 'LOC_GOVERNMENT_JFD_HORDE_LEADER_TITLE_CVS_ALP_ARSLAN'),
		('CVS_LEADER_ALP_ARSLAN', 'GOVERNMENT_JFD_POLIS', NULL, 'LOC_GOVERNMENT_JFD_POLIS_LEADER_TITLE_CVS_ALP_ARSLAN'),
		('CVS_LEADER_ALP_ARSLAN', 'GOVERNMENT_AUTOCRACY', NULL, 'LOC_GOVERNMENT_JFD_AUTOCRACY_LEADER_TITLE_CVS_ALP_ARSLAN'),
		('CVS_LEADER_ALP_ARSLAN', 'GOVERNMENT_OLIGARCHY', NULL, 'LOC_GOVERNMENT_JFD_OLIGARCHY_LEADER_TITLE_CVS_ALP_ARSLAN'),
		('CVS_LEADER_ALP_ARSLAN', 'GOVERNMENT_CLASSICAL_REPUBLIC', NULL, 'LOC_GOVERNMENT_JFD_CLASSICAL_DEMOCRACY_LEADER_TITLE_CVS_ALP_ARSLAN'),
		('CVS_LEADER_ALP_ARSLAN', 'GOVERNMENT_MERCHANT_REPUBLIC', NULL, 'LOC_GOVERNMENT_JFD_MERCHANT_REPUBLIC_LEADER_TITLE_CVS_ALP_ARSLAN'),
		('CVS_LEADER_ALP_ARSLAN', 'GOVERNMENT_MONARCHY', NULL, 'LOC_GOVERNMENT_JFD_MONARCHY_LEADER_TITLE_CVS_ALP_ARSLAN'),
		('CVS_LEADER_ALP_ARSLAN', 'GOVERNMENT_JFD_ABSOLUTE_MONARCHY', NULL, 'LOC_GOVERNMENT_JFD_MONARCHY_LEADER_TITLE_CVS_ALP_ARSLAN'),
		('CVS_LEADER_ALP_ARSLAN', 'GOVERNMENT_JFD_CONSTITUTIONAL_MONARCHY', NULL, 'LOC_GOVERNMENT_JFD_MONARCHY_LEADER_TITLE_CVS_ALP_ARSLAN'),
		('CVS_LEADER_ALP_ARSLAN', 'GOVERNMENT_JFD_NOBLE_REPUBLIC', NULL, 'LOC_GOVERNMENT_JFD_NOBLE_REPUBLIC_LEADER_TITLE_CVS_ALP_ARSLAN'),
		('CVS_LEADER_ALP_ARSLAN', 'GOVERNMENT_DEMOCRACY', NULL, 'LOC_GOVERNMENT_JFD_LIBERAL_DEMOCRACY_LEADER_TITLE_CVS_ALP_ARSLAN'),
		('CVS_LEADER_ALP_ARSLAN', 'GOVERNMENT_COMMUNISM', NULL, 'LOC_GOVERNMENT_JFD_PEOPLES_REPUBLIC_LEADER_TITLE_CVS_ALP_ARSLAN'),
		('CVS_LEADER_ALP_ARSLAN', 'GOVERNMENT_FASCISM', NULL, 'LOC_GOVERNMENT_JFD_MILITARY_GUARDIANSHIP_LEADER_TITLE_CVS_ALP_ARSLAN'),
		('CVS_LEADER_ALP_ARSLAN', NULL, 'POLICY_JFD_EMPIRE', 'LOC_GOVERNMENT_JFD_EMPIRE_LEADER_TITLE_CVS_ALP_ARSLAN');

DELETE FROM Leader_Titles WHERE LeaderType = 'CVS_LEADER_ALP_ARSLAN' AND GovernmentType IS NOT NULL AND GovernmentType NOT IN (SELECT GovernmentType FROM Governments);
DELETE FROM Leader_Titles WHERE LeaderType = 'CVS_LEADER_ALP_ARSLAN' AND PolicyType IS NOT NULL AND PolicyType NOT IN (SELECT PolicyType FROM Policies);

INSERT INTO THECRAZYSCOTSMAN_DEBUGGING (Document, Marker, Pass) SELECT 'CVS_Seljuq_AlpArslan_Database', 'END', 1;	