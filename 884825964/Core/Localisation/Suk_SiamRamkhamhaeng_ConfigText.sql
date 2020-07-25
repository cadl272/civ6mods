--========================================================================================================================
-- LocalizedText
--========================================================================================================================
INSERT OR REPLACE INTO BaseGameText
		(Tag,					Text)
VALUES
--========================================================================================================================
-- Siam
--========================================================================================================================
		("LOC_CIVILIZATION_SUK_SIAM_NAME",
		"Siam"),
		("LOC_CIVILIZATION_SUK_SIAM_DESCRIPTION",
		"Siamese Empire"),
		("LOC_CIVILIZATION_SUK_SIAM_ADJECTIVE",
		"Siamese"),
		-- RWF
		("LOC_CIVILIZATION_SUK_SIAM_DESCRIPTION_JFD_CIVILIZATION",
		"Siamese Civilization"),
--------------------------------------------------------------------
-- UA
--------------------------------------------------------------------
		("LOC_TRAIT_CIVILIZATION_SUK_SRI_AYUTTHAYA_NAME",
		"Sri Ayutthaya"),
		("LOC_TRAIT_CIVILIZATION_SUK_SRI_AYUTTHAYA_DESCRIPTION",
		"Cities founded next to a River gain +2 [ICON_Housing] Housing, +1 [ICON_Amenities] Amenity. Specialty Districts next to a River provide +1 [ICON_Food] Food. Receive an additional [ICON_Envoy] Envoy from Civics that provide [ICON_Envoy] Envoys."),
--========================================================================================================================
-- Chang Suek
--========================================================================================================================
		("LOC_UNIT_SUK_SIAM_CHANGSUEK_NAME",
		"Chang Suek"),
		("LOC_UNIT_SUK_SIAM_CHANGSUEK_DESCRIPTION",
		"Siamese unique Medieval era unit that replaces the Knight. Stronger, but slower and more expensive than the Knight. Adjacent units gain double experience from battles."),
	--------------------------------------------------------------------
	-- Pedia
	--------------------------------------------------------------------
		("LOC_PEDIA_UNITS_PAGE_UNIT_SUK_SIAM_CHANGSUEK_CHAPTER_HISTORY_PARA_1",
		"In Southeast Asia elephants continued to be employed in warfare far into the Middle Ages. In Siam, particularly, Chang Suek, or war elephants were highly prized. Three people would be stationed on each war elephant, one riding on the neck to do battle, one in the middle to pass weapons such as halberds, spears and javelins to the first and one person at the back to control the elephant. Even Siamese leaders would fight in battle on war elephants, indeed, King Ramkhamhaeng, King Naresuan and the consort of King Maha Chakkraphat, Sri Suriyothai have all fought atop Chang Suek."),
	--------------------------------------------------------------------
	-- Abilities
	--------------------------------------------------------------------
		("LOC_ABILITY_SUK_CHANGSUEK_NAME",
		"White Elephant"),
		("LOC_ABILITY_SUK_CHANGSUEK_DESCRIPTION",
		"Adjacent units gain double experience from battles."),
--========================================================================================================================
-- Floating Market
--========================================================================================================================
		("LOC_DISTRICT_SUK_FLOATINGMARKET_NAME",
		"Floating Market"),
		("LOC_DISTRICT_SUK_FLOATINGMARKET_DESCRIPTION",
		"A district unique to Siam for finance and trade. Replaces the Commercial Hub district.[NEWLINE][NEWLINE]+1 [ICON_Culture] Culture, +1 [ICON_Gold] Gold from Luxury Resources worked by this City. +1 [ICON_TradeRoute] Trade Route capacity, if this city does not yet have a Harbor district.[NEWLINE][NEWLINE] Cannot be built on Hills."),
		("LOC_DISTRICT_SUK_FLOATINGMARKET_EXPANSION_1_DESCRIPTION",
		"A district unique to Siam for finance and trade. Replaces the Commercial Hub district.[NEWLINE][NEWLINE]+1 [ICON_Culture] Culture, +1 [ICON_Gold] Gold from Luxury Resources worked by this City. Cannot be built on Hills."),
		("LOC_DISTRICT_SUK_FLOATINGMARKET_EXPANSION_2_DESCRIPTION",
		"A district unique to Siam for finance and trade. Replaces the Commercial Hub district.[NEWLINE][NEWLINE]+1 [ICON_Gold] Gold from Luxury Resources. An additional +1 [ICON_Culture] Culture from Luxury Resources if this district is adjacent to a River, and another +1 [ICON_Gold] Gold if built on Floodplains.[NEWLINE][NEWLINE]Cannot be built on Hills."),
		("LOC_PEDIA_DISTRICTS_PAGE_DISTRICT_SUK_FLOATINGMARKET_CHAPTER_HISTORY_PARA_1",
		"In the past the areas adjacent to the rivers were the first to be populated. Thus most communities of Thailand were built at the sides of rivers. The waterways served as means of transportation and the center of economic activity as well. Boats were mainly used for both local and regional trade, bringing goods from those that produced to those that could barter and trade. Such heavy reliance on boats in riverside communities, especially in the Chao Phraya River Basin, helped increase the number of floating markets and allowed them to serve as hubs for the communities in Central Thailand for centuries."),
--========================================================================================================================
-- Ramkhamhaeng
--========================================================================================================================
	-- Name
	--------------------------------------------------------------------
		("LOC_LEADER_SUK_RAMKHAMHAENG_NAME",
		"Ramkhamhaeng"),
	--------------------------------------------------------------------
	-- ULA
	--------------------------------------------------------------------
		("LOC_TRAIT_LEADER_SUK_THE_THAI_ALPHABET_NAME",
		"The Thai Alphabet"),
		("LOC_TRAIT_LEADER_SUK_THE_THAI_ALPHABET_DESCRIPTION",
		"Receive [ICON_Gold] Gold when a [ICON_TechBoosted] Eureka or [ICON_CivicBoosted] Inspiration is triggered."),
		("LOC_TRAIT_LEADER_SUK_THE_THAI_ALPHABET_EUREKA",
		"+{1} [ICON_Gold] Gold from triggering the [ICON_TechBoosted] Eureka for {2}"),
		("LOC_TRAIT_LEADER_SUK_THE_THAI_ALPHABET_INSPIRATION",
		"+{1} [ICON_Gold] Gold from triggering the [ICON_CivicBoosted] Inspiration for {2}"),
	--------------------------------------------------------------------
	-- Agenda
	--------------------------------------------------------------------
		("LOC_AGENDA_SUK_FATHER_GOVERNS_CHILDREN_NAME",
		"Father Governs Children"),
		("LOC_AGENDA_SUK_FATHER_GOVERNS_CHILDREN_DESCRIPTION",
		"Likes civilizations with who have cultured and happy citizens. Is upset by civilizations that do not attend to their citizens’ happiness"),

		("LOC_DIPLO_KUDO_LEADER_SUK_RAMKHAMHAENG_REASON_ANY",
		"(You have cultured and happy citizens.)"),
		("LOC_DIPLO_MODIFIER_SUK_FATHER_GOVERNS_CHILDREN_HAPPY",
		"Ramkhamhaeng is pleased you have cultured and happy citizens"),

		("LOC_DIPLO_WARNING_LEADER_SUK_RAMKHAMHAENG_REASON_ANY",
		"(Your empire is unhappy.)"),
		("LOC_DIPLO_MODIFIER_SUK_FATHER_GOVERNS_CHILDREN_UNHAPPY",
		"Ramkhamhaeng is concerned that your people are unhappy");
--------------------------------------------------------------------
--------------------------------------------------------------------