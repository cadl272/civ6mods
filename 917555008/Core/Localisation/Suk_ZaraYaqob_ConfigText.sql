--========================================================================================================================
-- LocalizedText
--========================================================================================================================
INSERT OR REPLACE INTO BaseGameText
		(Tag,					Text)
VALUES
--========================================================================================================================
-- ETHIOPIA
--========================================================================================================================
		("LOC_CIVILIZATION_SUK_ETHIOPIA_NAME",
		"Ethiopia"),
		("LOC_CIVILIZATION_SUK_ETHIOPIA_DESCRIPTION",
		"Ethiopian Empire"),
		("LOC_CIVILIZATION_SUK_ETHIOPIA_ADJECTIVE",
		"Ethiopia"),
		-- RWF
		("LOC_CIVILIZATION_SUK_ETHIOPIA_DESCRIPTION_JFD_CIVILIZATION",
		"Ethiopian Civilization"),
--------------------------------------------------------------------
-- UA
--------------------------------------------------------------------
		("LOC_TRAIT_CIVILIZATION_SUK_SOLOMONIC_DYNASTY_NAME",
		"Solomonic Dynasty"),
		("LOC_TRAIT_CIVILIZATION_SUK_SOLOMONIC_DYNASTY_DESCRIPTION",
		"May purchase Settlers, Builders, and Traders with [ICON_Faith] Faith. City Centers and Holy Sites yield +2 [ICON_Faith] Faith when built on a Hills tile."),

		('LOC_TRAIT_CIVILIZATION_ETHIOPIA_DESCRIPTION_SUK_REWORK',
		'Ethiopia’s International [ICON_TradeRoute] Trade Routes provide +0.5 [ICON_Faith] Faith per resource at the origin. Improved resources provide +1 [ICON_Faith] Faith per copy the city owns. Can purchase Traders with [ICON_Faith] Faith in cities with a Shrine, Builders in cities with a Temple, and Settlers in cities with a Worship Building.'),
--========================================================================================================================
-- Shotelai
--========================================================================================================================
		("LOC_UNIT_SUK_SHOTELAI_NAME",
		"Shotelai"),
		("LOC_UNIT_SUK_SHOTELAI_DESCRIPTION",
		"Ethiopian unique Medieval Era unit that replaces the Pikeman. +5 [ICON_Strength] Combat Strength against melee units. +1 XP per turn while garrisoned in a City Center. An extra +1 XP per turn for cities founded on a Hills tile, and +1 XP per turn if that city is the [ICON_Capital] Capital."),
	--------------------------------------------------------------------
	-- Pedia
	--------------------------------------------------------------------
		("LOC_PEDIA_UNITS_PAGE_UNIT_SUK_SHOTELAI_CHAPTER_HISTORY_PARA_1",
		"The shotel is a thin, broadly circular bladed sword originating in Ethiopia. Shotelai fought exclusively with the shotel, using the blade's shape to strike around their opponent's shields, penetrating their defences and hitting them in key areas; the kidneys or the lungs were common targets. The blade on a shotel differed from that of a shamshir or a kopesh as it was nearly a full semicircle, making it more awkward for the user to wield. In the hands of an experienced swordsman, however, its potential for death was magnified. Evidence for the shotel dates from the earliest Damotians (Damites) and Axumites, used by both mounted and dismounted warriors. After the Solomonic restoration of Atse Yikuno Amlak I, the resurgent Emperors began to re-establish the Axumite armies. This culminated in the reign of Amda Seyon I. Ethiopian forces were armed with short and long swords such as the Seif and Gorade."),
	--------------------------------------------------------------------
	-- Abilities
	--------------------------------------------------------------------
		("LOC_ABILITY_SUK_SHOTELAI_MELEE_NAME",
		"Anti-Melee"),
		("LOC_ABILITY_SUK_SHOTELAI_MELEE_DESCRIPTION",
		"+5 [ICON_Strength] Combat Strength against melee units (Shotelai)."),
		("LOC_ABILITY_SUK_SHOTELAI_MELEE_MODIFIER_DESCRIPTION",
		"+{Amount} [ICON_Strength] Combat Strength vs. melee units."),

		("LOC_ABILITY_SUK_SHOTELAI_XP_NAME",
		"Blessing of Saint George"),
		("LOC_ABILITY_SUK_SHOTELAI_XP_DESCRIPTION",
		"+1 XP per turn while garrisoned in a City Center. An extra +1 XP per turn for cities founded on a Hills tile, and +1 XP per turn if that city is the [ICON_Capital] Capital."),
--========================================================================================================================
-- Oromo Cavalry
--========================================================================================================================
		("LOC_UNIT_ETHIOPIAN_OROMO_CAVALRY_DESCRIPTION_SUK_REWORK",
		"Industrial Era unit that replaces Cavalry, unique to Menelik II. Stronger and greater sight. Receives no [ICON_Movement] Movement penalty from moving in Hills."),
--========================================================================================================================
-- Rock-Hewn Church
--========================================================================================================================
		("LOC_BUILDING_SUK_ROCK_HEWN_CHURCH_NAME",
		"Rock-Hewn Church"),
		("LOC_BUILDING_SUK_ROCK_HEWN_CHURCH_DESCRIPTION",
		"A building unique to Ethiopia. Required to purchase Apostles and Inquisitors with [ICON_Faith] Faith. +3 [ICON_Production] Production, this bonus increases to +5 [ICON_Production] Production if this district has a Worship Building. +1 [ICON_GreatEngineer] Great Engineer point."),
		("LOC_PEDIA_BUILDINGS_PAGE_BUILDING_SUK_ROCK_HEWN_CHURCH_CHAPTER_HISTORY_PARA_1",
		"Ethiopia's conversion to Christianity fundamentally changed its history, and this is perhaps best evidenced by the country's rock-hewn churches. The very landscape of the country was transformed as the faithful cut thousands of churches from the living rock. The most remarkable and renowned example of these rock-cut churches is the pilgrimage site of Lalibela, in the Tigray mountains, dated to the thirteenth century. The wondrous accomplishment of that cluster of eleven structures excavated from the tufa, envisioned as a New Jerusalem and credited to the labors of angels, required an architectural genius capable of conceptualizing before work began every aspect of the design, from its interior spaces to exterior details."),
--========================================================================================================================
-- Zara Yaqob
--========================================================================================================================
	-- Name
	--------------------------------------------------------------------
		("LOC_LEADER_SUK_ZARAYAQOB_NAME",
		"Zara Yaqob"),
	--------------------------------------------------------------------
	-- ULA
	--------------------------------------------------------------------
		("LOC_TRAIT_LEADER_SUK_DEBRE_MITMAQ_NAME",
		"Council of Debre Mitmaq"),
		("LOC_TRAIT_LEADER_SUK_DEBRE_MITMAQ_DESCRIPTION",
		"Receive an extra Wildcard policy slot when you have 3 or more Holy Site Districts. Receive a second Wildcard policy slot if you have 6 or more Holy Site Districts."),
	--------------------------------------------------------------------
	-- Agenda
	--------------------------------------------------------------------
		("LOC_AGENDA_SUK_BOOK_OF_LIGHT_NAME",
		"Book of Light"),
		("LOC_AGENDA_SUK_BOOK_OF_LIGHT_DESCRIPTION",
		"Likes civilizations from different continents who share his faith. Is wary of civilizations from his home continent that follow a different religion."),

		("LOC_DIPLO_KUDO_LEADER_SUK_ZARAYAQOB_REASON_ANY",
		"(You are on a different continent, but follow the same faith.)"),
		("LOC_DIPLO_MODIFIER_SUK_BOOK_OF_LIGHT_SAME_RELIGION",
		"Zara Yaqob is pleased to see his religion flourishing so far away"),

		("LOC_DIPLO_WARNING_LEADER_SUK_ZARAYAQOB_REASON_ANY",
		"(You are on the same continent, but follow a different faith.)"),
		("LOC_DIPLO_MODIFIER_SUK_BOOK_OF_LIGHT_DIFF_RELIGION",
		"Zara Yaqob is upset that your nation is near him, but haven't converted"),
--========================================================================================================================
-- Game Modes
--========================================================================================================================
		('LOC_GAMEMODE_SUK_ETHIOPIAREWORK_NAME',
		'Sukritact’s Ethiopia Rework'),
		('LOC_GAMEMODE_SUK_ETHIOPIAREWORK_DESCRIPTION',
		'This game mode adjusts the Ethiopian Civilization added by the New Frontier Pass to better match Sukritact’s Ethiopia Mod.[NEWLINE][NEWLINE]Ethiopia’s unique ability is altered to restore the [ICON_Faith] Faith purchasing of Traders, Builders, and Settlers. However, to compensate for the increased [ICON_Faith] Faith that Ethiopia can generate in comparison with the original mod, these purchases are now locked behind Holy Site Buildings. Archaeologists and Archaeological Museums can no longer be bought with [ICON_Faith] Faith.[NEWLINE][NEWLINE]Menelik II recieves the Oromo Cavalry as his personal guard. They now replace the Industrial era Cavalry unit, and are exclusive to him. Instead, the Shotelai—a Medieval era Pikeman replacement which gains XP while garrisoned—returns as Ethiopia’s unique unit.');
--------------------------------------------------------------------
--------------------------------------------------------------------