--==========================================================================================================================
-- Kawad I / Shared Expansion Content
--==========================================================================================================================
-----------------------------------------------
-- AiFavoredItems
-----------------------------------------------
-- BUILDINGS AND DISTRICTS
INSERT INTO AiFavoredItems
		(ListType,					Favored,	Item)
VALUES	('CVS_KAWAD_I_Districts',	1,			'DISTRICT_GOVERNMENT'),		-- Civilization
		('CVS_KAWAD_I_Buildings',	1,			'BUILDING_GOV_WIDE'),		-- Leader
		('CVS_KAWAD_I_Buildings',	1,			'BUILDING_GOV_SPIES'),		-- Leader
		('CVS_KAWAD_I_Buildings',	1,			'BUILDING_GOV_SCIENCE');	-- Leader

-- WONDERS
INSERT INTO AiFavoredItems (ListType, Favored, Item) VALUES ('CVS_KAWAD_I_Buildings', 1, 'BUILDING_ST_BASILS_CATHEDRAL'); -- Leader

-- CIVICS
INSERT INTO AiFavoredItems (ListType, Favored, Item) VALUES ('CVS_KAWAD_I_Civics', 1, 'CIVIC_STATE_WORKFORCE'); -- Civilization

-- DIPLOMACY
INSERT INTO AiFavoredItems
		(ListType,					Favored,	Item)
VALUES	('CVS_KAWAD_I_Diplomacy',	1,			'DIPLOACTION_ALLIANCE_RELIGIOUS'),
		('CVS_KAWAD_I_Diplomacy',	1,			'DIPLOACTION_ALLIANCE_ECONOMIC');

-- PLOT EVALUATION
INSERT INTO AiFavoredItems
		(ListType,						Item,				Favored,	StringVal)
VALUES	('CVS_KAWAD_I_PlotEvaluation',	'Specific Feature',	1,			'FEATURE_EVEREST'),
		('CVS_KAWAD_I_PlotEvaluation',	'Specific Feature',	1,			'FEATURE_ULURU');
-----------------------------------------------
-- MomentIllustrations
-----------------------------------------------
INSERT INTO MomentIllustrations
		(MomentIllustrationType,					MomentDataType,				GameDataType,				Texture)
VALUES	('MOMENT_ILLUSTRATION_UNIQUE_IMPROVEMENT',	'MOMENT_DATA_IMPROVEMENT',	'IMPROVEMENT_CVS_AMARGAR',	'Moment_Infrastructure_CVS_Amargar.dds');