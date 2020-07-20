/* 
	p0kiehl's Better Encampment
	Author: p0kiehl
*/
--========================================================================
-- BaseGameText
--========================================================================
INSERT OR REPLACE INTO BaseGameText
		(Tag, 																								Text)
VALUES  ('LOC_DISTRICT_ENCAMPMENT_DESCRIPTION',
		'A district in your city for military facilities. Provides +1 [ICON_Housing] Housing. Accumulating Strategic resources in this city gain an additional +1 per turn. All Builders trained in this city gain +1 build charge.'),
		('LOC_DISTRICT_IKANDA_DESCRIPTION',
		'A district unique to Zulu which replaces the Encampment. Provides +2 [ICON_Housing] Housing. Accumulating Strategic resources in this city gain an additional +1 per turn. All Builders trained in this city gain +1 build charge. Once the Civic or Technology prerequisite is met, Corps and Armies can be built outright. Faster Corps and Army creation.'),
		('LOC_P0K_BE_ENCAMPMENT_DISTRICT_PRODUCTION',
		'+{1_num} [ICON_Production] Production from the adjacent {1_Num : plural 1?district; other?districts;}.'),
		('LOC_P0K_BE_ENCAMPMENT_STRATEGIC_PRODUCTION',
		'+{1_num} [ICON_Production] Production from the adjacent Strategic {1_Num : plural 1?resource; other?resources;}.'),
		('LOC_TOOLTIP_BONUS_STRATEGIC', -- bug from the base game
		'Strategic Resource');