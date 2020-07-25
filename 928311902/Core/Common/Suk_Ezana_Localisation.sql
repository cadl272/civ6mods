--========================================================================================================================
-- LocalizedText
--========================================================================================================================
	INSERT OR REPLACE INTO BaseGameText
			(Tag,					Text)
	VALUES
--========================================================================================================================
-- Ezana
--========================================================================================================================
		("LOC_LEADER_SUK_EZANA_NAME",
		"Ezana"),
		("LOC_LEADER_SUK_EZANA_DLC_NAME",
		"Ezana"),
--========================================================================================================================
-- ULA
--========================================================================================================================
		("LOC_TRAIT_LEADER_SUK_AKSUMITE_COINAGE_NAME",
		"Aksumite Coinage"),
		("LOC_TRAIT_LEADER_SUK_AKSUMITE_COINAGE_DESCRIPTION",
		"Your [ICON_TradeRoute] Trade Routes to other civilizations provide +1 [ICON_Culture] Culture and +2 [ICON_Gold] Gold for Ethiopia. Unlocks the Builder ability to construct a Hawelti."),

		("LOC_TRAIT_LEADER_SUK_AKSUMITE_COINAGE_DLC_NAME",
		"May This Please the People"),
		("LOC_TRAIT_LEADER_SUK_AKSUMITE_COINAGE_DLC_DESCRIPTION",
		"Holy Sites provide +1 [ICON_TradeRoute] Trade Route capacity, if the city does not yet have a Commercial Hub or a Harbor. Unlocks the Builder ability to construct a Hawelti."),
		("LOC_TRAIT_LEADER_SUK_AKSUMITE_COINAGE_DLC_XP1_DESCRIPTION",
		"Shrines provide +1 [ICON_TradeRoute] Trade Route capacity, if the city does not yet have a Market or a Lighthouse. Unlocks the Builder ability to construct a Hawelti."),
--========================================================================================================================
-- Agenda
--========================================================================================================================
		("LOC_AGENDA_SUK_EZANAS_STONE_NAME",
		"Ezana’s Stone"),
		("LOC_AGENDA_SUK_EZANAS_STONE_DESCRIPTION",
		"Likes civilizations that have a strong economy and a strong military. Dislikes civilizations that have a strong economy but a weak military."),

		("LOC_DIPLO_MODIFIER_SUK_EZANAS_STONE_KUDO",
		"Ezana is pleased you have a strong economy and a strong military"),
		("LOC_DIPLO_MODIFIER_SUK_EZANAS_STONE_WARNING",
		"Ezana is disappointed you have a strong economy but a weak military"),
--========================================================================================================================
-- UTI
--========================================================================================================================
		("LOC_IMPROVEMENT_SUK_STELE_NAME",
		"Hawelti"),
		("LOC_IMPROVEMENT_SUK_STELE_DESCRIPTION",
		"Unlocks the Builder ability to construct a Hawelti, unique to Ezana’s Ethiopia.[NEWLINE][NEWLINE]+2 [ICON_Culture] Culture. +1 Appeal. Cities with at least 3 Hawelti gain +1 [ICON_TradeRoute] Trade Route capacity. Must be built on Hills and cannot be built next to another Hawelti."),

		("LOC_IMPROVEMENT_SUK_STELE_XP2_DESCRIPTION",
		"Unlocks the Builder ability to construct a Hawelti, unique to Ezana’s Ethiopia.[NEWLINE][NEWLINE]+2 [ICON_Culture] Culture. +1 Appeal. Cities with at least 3 Hawelti gain +1 [ICON_TradeRoute] Trade Route capacity. Must be built on Hills or Volcanic Soil and cannot be built next to another Hawelti. Can only be pillaged (never destroyed) by natural disasters."),

		("LOC_IMPROVEMENT_SUK_STELE_DLC_DESCRIPTION",
		"Unlocks the Builder ability to construct a Hawelti, unique to Ezana.[NEWLINE][NEWLINE]Provides [ICON_Gold] Gold equal to the tile’s Appeal. International [ICON_TradeRoute] Trade Routes from this city gain +1 [ICON_Culture] Culture, increasing to +2 [ICON_Culture] when built on tiles with Charming Appeal, or to +3 [ICON_Culture] when built on tiles with Breathtaking Appeal.[NEWLINE][NEWLINE]One per city. Tiles with Hawelti cannot be swapped. Must be built on Hills."),

		("LOC_IMPROVEMENT_SUK_STELE_DLC_XP2_DESCRIPTION",
		"Unlocks the Builder ability to construct a Hawelti, unique to Ezana.[NEWLINE][NEWLINE]Provides [ICON_Gold] Gold equal to the tile’s Appeal. International [ICON_TradeRoute] Trade Routes from this city gain +1 [ICON_Culture] Culture, increasing to +2 [ICON_Culture] when built on tiles with Charming Appeal, or to +3 [ICON_Culture] when built on tiles with Breathtaking Appeal.[NEWLINE][NEWLINE]One per city. Tiles with Hawelti cannot be swapped. Must be built on Hills or Volcanic Soil and can only be pillaged (never destroyed) by natural disasters."),

		("LOC_PEDIA_BUILDINGS_PAGE_IMPROVEMENT_SUK_STELE_CHAPTER_HISTORY_PARA_1",
		"In an expansive field on Aksum’s northern edge stand the ancient city’s most renowned surviving monuments, a group of memorial obelisks, or stelae, erected between the third and fourth centuries A.D. Although other Aksumite stelae fields such as the Gudit field are known, none possess the great variety of form and scale present here, ranging from relatively rough-hewn stone blocks of three feet in length to a now fallen tour de force intended to tower ninety-seven feet high."),

		("LOC_PEDIA_BUILDINGS_PAGE_IMPROVEMENT_SUK_STELE_CHAPTER_HISTORY_PARA_2",
		"The stelae were carved mainly from solid blocks of nepheline syenite, a weather-resistant rock similar in appearance to granite, and are believed to have come from the quarries of Wuchate Golo several miles to the west of Aksum. After being cut from the rock walls there, they would have been dragged by organized manpower to the site of their installation, where finer carving awaited a few of the stelae."),

		("LOC_PEDIA_BUILDINGS_PAGE_IMPROVEMENT_SUK_STELE_CHAPTER_HISTORY_PARA_3",
		"The impetus for this organizational effort appears to have been commemorative: there are many burials in this area and elaborate tombs are situated near the foremost group of the largest stelae. The wide variation in size and carving sophistication is most likely due to the varying degrees of social status and wealth of the deceased. Although the identities of the persons who sponsored them are not known, the tallest stelae probably commemorated royalty while smaller works were most likely commissioned by local elite.");
--========================================================================================================================
-- EZANA
-- Tag varies depending on DLC
--========================================================================================================================
	-- Init
	--------------------------------------------------------------------------
		WITH CTE(LeaderTag) AS
			(SELECT CASE
				WHEN EXISTS (SELECT * FROM LocalizedText WHERE Tag = 'LOC_CIVILIZATION_ETHIOPIA_NAME')
				THEN 'SUK_EZANA_DLC'
				ELSE 'SUK_EZANA'
				END LeaderTag
			)
		INSERT OR REPLACE INTO BaseGameText
				(Tag,					Text)
		SELECT * FROM (VALUES
	--------------------------------------------------------------------------
	-- Loading Screen
	--------------------------------------------------------------------------
		("LOC_LOADING_INFO_LEADER_"||(SELECT LeaderTag FROM CTE)||"",
		"It falls to you, King Ezana, to bring glory and prosperity to proud Ethiopia! Build great monuments to inspire your people and welcome merchants to your lands. Send forth your traders across the globe to spread the news of Aksum’s glory and bring back great wealth to Ethiopia. King Ezana, the world is full of riches, waiting to be seized!" 															),
	--------------------------------------------------------------------------
	-- Diplo
	--------------------------------------------------------------------------
		-- First Meet
		-------------------------------------
			("LOC_DIPLO_FIRST_MEET_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
			"I am Ezana, King of Aksum, Himyar, Raydan, Kush, Saba, Salhin, Tsarad, of the Ethiopians and the Beja. Who are you, and what riches do you bring to Ethiopia?"),
			("LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
			"Let me show one of our cities nearby, so you can send us your merchants later."),
			("LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
			"Your generosity speaks well of you. I accept!"),
			("LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
			"Trade is the lifeblood of Aksum. Shall we share the locations of our capitals to facilitate it?"),
		-------------------------------------
		-- Agenda Diplo
		-------------------------------------
				("LOC_DIPLO_KUDO_EXIT_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
				"A strong and wealthy nation makes for an excellent trading partner."),
				("LOC_DIPLO_WARNING_EXIT_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
				"Your coffers are full, but your borders are undefended. Do you want to be plundered?"),

				("LOC_DIPLO_KUDO_LEADER_"||(SELECT LeaderTag FROM CTE)||"_REASON_ANY",
				"(You have a strong economy and a strong military."),
				("LOC_DIPLO_WARNING_LEADER_"||(SELECT LeaderTag FROM CTE)||"_REASON_ANY",
				"(You have a strong economy but a weak military."),
		-------------------------------------
		-- War and Peace
		-------------------------------------
			-- Human Declares War
				("LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
				"Aksum has both earthly riches and the Lord’s favor. Do you really think your army can overcome them both?"),
			-- AI Declares War
				("LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
				"Aksum must grow if it is to prosper. You seem a ripe target."),
			-- Making Peace
				("LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
				"Peace and trade it is then. For now."),
				("LOC_DIPLO_MAKE_PEACE_AI_REFUSE_DEAL_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
				"Tired of war already? Unfortunately for you, we are not."),
				("LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
				"I would keep fighting, but my merchants demand an end to this conflict."),
			-- Defeat
				("LOC_DIPLO_DEFEAT_FROM_AI_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
				"How is it that Aksum has so fallen? Why were we not saved by our wealth and piety?"),
		-------------------------------------
		-- DoF
		-------------------------------------
				("LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
				"Friendship is the pathway to prosperity! Let us grow rich together!"),
			-- AI requested friendship
				("LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_AI_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
				"Excellent. Excellent!"),
				("LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_AI_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
				"No? Well, it's your loss."),
			-- On human requests friendship
				("LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
				"Why not? Sounds like it will be good for the economy if nothing else."),
				("LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
				"Hmm? Why would I accept? You have nothing to offer Ethiopia."),
		-------------------------------------
		-- Delegation
		-------------------------------------
				("LOC_DIPLO_DELEGATION_FROM_AI_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
				"I’ve sent a delegation with a gift of injera and berbere. Will you accept?"),
				("LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
				"Your envoy and gifts are appreciated. I might send a caravan later to trade for more."),
				("LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
				"We decline. Aksum rich enough without your charity."),
		-------------------------------------
		-- Denounce
		-------------------------------------
				("LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
				"My merchants did say you weren't to be trusted. Shame you had to prove them right."),
				("LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
				"You are a duplicitous cheat and a miser! Only the Lord knows the true extent of your sins. (Denounces You)"),
		-------------------------------------
		-- Alliance
		-------------------------------------
				("LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
				"Could I interest you in an alliance? I could throw in some ivory to sweeten the deal."),
		-------------------------------------
		-- Misc Standard Lines
		-------------------------------------
				("LOC_DIPLO_GREETING_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
				"Welcome."),

				("LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
				"This is highway robbery! No!"),
				("LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
				"Agreed! May we both profit."),

				("LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
				"I humbly request permission to march through your borders. We will keep the peace."),
				("LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
				"Very well, I hereby grant you permission to pass through my lands."),
				("LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
				"I am not so eager to trade as to open my home to lions."),

				("LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
				"Do not show your blade unless you mean to strike. Move your soldiers from our lands."),
	--------------------------------------------------------------------------
	-- Quote and Pedia
	--------------------------------------------------------------------------
			("LOC_PEDIA_LEADERS_PAGE_"||(SELECT LeaderTag FROM CTE)||"_QUOTE",
			"When spiders unite, they can tie up a lion."),

			("LOC_PEDIA_LEADERS_PAGE_"||(SELECT LeaderTag FROM CTE)||"_TITLE",
			"Ezana"),
			("LOC_PEDIA_LEADERS_PAGE_"||(SELECT LeaderTag FROM CTE)||"_SUBTITLE",
			"King of Aksum, Himyar, Raydan, Kush, Saba, Salhin, Tsarad, of the Ethiopians and the Beja"),
			("LOC_PEDIA_LEADERS_PAGE_LEADER_"||(SELECT LeaderTag FROM CTE)||"_CHAPTER_CAPSULE_BODY",
			"Ethiopia is a paragon of religious and architectural prowess. Ezana provides powerful economic and cultural boons through his Hawelti and trade bonuses."),
			("LOC_PEDIA_LEADERS_PAGE_LEADER_"||(SELECT LeaderTag FROM CTE)||"_CHAPTER_DETAILED_BODY",
			"Ethiopia has multiple incentives to prioritise [ICON_Faith] Faith generation, most prominently the ability to utilise your surplus [ICON_Faith] Faith to expand and grow. Good Holy Site district placement also will provide a nice production bonus with the Rock-Hewn Church, so place them well. Ezana brings an nice economic twist to this religious combination. His Hawelti provide a modest amount of culture, but more important provide additional [ICON_TradeRoute] Trade Route capacity, allowing you to worry less about building Commercial Hubs, and focus more on Holy Sites. His Traders earn you additional [ICON_Gold] Gold and [ICON_Culture] Culture as well."),
			("LOC_PEDIA_LEADERS_PAGE_LEADER_"||(SELECT LeaderTag FROM CTE)||"_CHAPTER_HISTORY_PARA_1",
			"King Ezana, was a fourth-century c.e. king who converted to Christianity and subsequently established this faith as the state religion in Axum (Aksum), part of modern-day Ethiopia. Scholars do not agree on the details of Ezana’s life, but several have documented information about his reign through trilingual inscriptions on stone tablets of the period. "),
			("LOC_PEDIA_LEADERS_PAGE_LEADER_"||(SELECT LeaderTag FROM CTE)||"_CHAPTER_HISTORY_PARA_2",
			"Ezana and Sayzana were tutored by two Hellenic Syrians who had been rescued as young boys after other occupants of their ship had been either murdered or killed in a shipwreck. The king subsequently accepted responsibility for the brothers, who were classified as slaves. However, recognizing their unique abilities, he named Aedesius as the royal cupbearer and placed Frumentius in the position of royal treasurer and secretary. After the king’s death the Syrians continued to tutor the royal twins and served as advisers to the queen. Some scholars believe that Frumentius and his brother were entirely responsible for converting the royal family to Christianity, and therefore, ultimately that they are responsible for converting all of Ethiopia."),
			("LOC_PEDIA_LEADERS_PAGE_LEADER_"||(SELECT LeaderTag FROM CTE)||"_CHAPTER_HISTORY_PARA_3",
			"As monarch, Ezana claimed many titles and is credited with being the first to call himself the “king of kings”. He identified himself as the king of Axum, Saba, Salhen, Himyar, Raydan, Habashat, Tiamo, Kasu, and of the Beja tribes. The kingdom over which King Ezana ruled stretched out on both sides of the Red Sea and extended into what is modern-day Sudan and Somalia. Evidence shows that early in their tenure as monarchs of Axum, Ezana and Sayzana paid allegiance to pagan gods. Ezana often called himself the “Son of Mahrem”, which was equivalent to identifying himself with Ares, the Greek god of war. After the brothers’ conversion to Christianity, Axumite coins most often depicted the cross, or sometimes multiple crosses."),
			("LOC_PEDIA_LEADERS_PAGE_LEADER_"||(SELECT LeaderTag FROM CTE)||"_CHAPTER_HISTORY_PARA_4",
			"Ezana is considered to have been the ablest and most politically astute of the brothers, and some scholars doubt that he even had a twin. At any rate, Ezana reigned over Axum at a time when it was flourishing as a viable political, economic, and agricultural African state. His tenure was marked by territorial expansion and significant economic growth, and Ezana opened up a major trade route with Egypt. Consequently, a large number of Greek traders immigrated to Ethiopia in order to take advantage of its rich resources of gold, ivory, spices, and tortoiseshell."),
			("LOC_PEDIA_LEADERS_PAGE_LEADER_"||(SELECT LeaderTag FROM CTE)||"_CHAPTER_HISTORY_PARA_5",
			"After his death on the battlefield at around 25 years of age, Ezana was buried in a rock-hewn church that still stands in present-day Ethiopia. Sayzana became the sole monarch, governing for the next 14 years.")
	);
--========================================================================================================================
--========================================================================================================================