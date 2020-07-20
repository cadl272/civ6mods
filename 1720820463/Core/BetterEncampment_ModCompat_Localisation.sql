/* 
	p0kiehl's Better Encampment
	Author: p0kiehl
*/
UPDATE LocalizedText 
SET Text = 'A district unique to Zulu for military facilities. Replaces the Encampment. Provides +2 [ICON_Housing] Housing. All buildings in this district provide +1 [ICON_Science] Science and +1 [ICON_Culture] Culture. All Builders trained in this city gain +1 build charge. Allows [ICON_Corps] Corps and [ICON_Army] Armies to be trained after unlocking the prerequisite civics. +25% [ICON_Production] Production towards [ICON_Corps] Corps and [ICON_Army] Armies.'
WHERE Tag = 'LOC_DISTRICT_IKANDA_DESCRIPTION' AND Language = 'en_US' AND EXISTS (SELECT * FROM LocalizedText WHERE Tag = 'LOC_P0K_LAUTARO_ABILITY_DESCRIPTION');
