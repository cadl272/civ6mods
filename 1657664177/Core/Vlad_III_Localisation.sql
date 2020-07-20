/*
	Localisation
	Authors: ChimpanG,, Digihuman, SeelingCat
*/

INSERT OR REPLACE INTO LocalizedText (Language, Tag, Text)
VALUES

-----------------------------------------------
-- Leader
-----------------------------------------------	
	
	("en_US",	"LOC_LEADER_CVS_VLAD_III_NAME",  "Vlad III"	),
	
-----------------------------------------------
-- UA
-----------------------------------------------	

	("en_US",	"LOC_TRAIT_LEADER_CVS_VLAD_III_UA_NAME",  "House of Drăculești"	),
	("en_US",	"LOC_TRAIT_LEADER_CVS_VLAD_III_UA_DESCRIPTION",
	"Capturing an enemy City has a chance of causing another to revolt to a Free City on the next turn. Pillaging in enemy territory deals damage to adjacent enemy units. Gains access to the Călărași unique unit."	),

-----------------------------------------------
-- UU
-----------------------------------------------

	("en_US",	"LOC_UNIT_CVS_VLAD_III_UU_NAME",	"Călăraşi"	),
	("en_US",	"LOC_UNIT_CVS_VLAD_III_UU_DESCRIPTION",	 
	"A ranged cavalry unit unique to Romania. Weaker than the Crossbowman it replaces but has +2 [ICON_MOVEMENT] Movement and requires only 1 [ICON_MOVEMENT] Movement to pillage."	),

-----------------------------------------------
-- Agenda
-----------------------------------------------	

	("en_US",	"LOC_AGENDA_CVS_VLAD_III_NAME",	"Scorched Earth"	),
	("en_US",	"LOC_AGENDA_CVS_VLAD_III_DESCRIPTION",	"Will join wars and pillage wherever possible and respects those that do the same. Views neighboring civilizations with a small military as opportunities for conquest."	),
	
	("en_US",	"LOC_DIPLO_KUDO_LEADER_CVS_VLAD_III_REASON_ANY",	"(You have pillaged a high number of tiles.)"	),
	("en_US",	"LOC_DIPLO_MODIFIER_CVS_VLAD_III_HAPPY",	"Vlad III respects your pillaging tactics"	),
	
	("en_US",	"LOC_DIPLO_WARNING_LEADER_CVS_VLAD_III_REASON_ANY",	"(You are neighbors and have a weak army.)"	),
	("en_US",	"LOC_DIPLO_MODIFIER_CVS_VLAD_III_UNHAPPY",	"Vlad III sees your weak military as an opportunity for conquest"	),

--------------------------------------------------------------------
-- Cities
--------------------------------------------------------------------

	("en_US",	"LOC_CITY_NAME_TARGOVISTE",			"Târgoviște"		),
	("en_US",	"LOC_CITY_NAME_BUCHAREST",			"Bucharest"			),
	("en_US",	"LOC_CITY_NAME_ARGES",				"Argeș"				),
	("en_US",	"LOC_CITY_NAME_BRAILA",				"Brăila"			),
	("en_US",	"LOC_CITY_NAME_CRAIOVA",			"Craiova"			),
	("en_US",	"LOC_CITY_NAME_PLOESTI",			"Ploești"			),
	("en_US",	"LOC_CITY_NAME_RAMNICU_VALCEA",		"Râmnicu Vâlcea"	),
	("en_US",	"LOC_CITY_NAME_CAMPULUNG",			"Câmpulung"			),
	("en_US",	"LOC_CITY_NAME_BRAN",				"Bran"				),
	("en_US",	"LOC_CITY_NAME_GIURGIU",			"Giurgiu"			),
	("en_US",	"LOC_CITY_NAME_RAMNICU_SARAT",		"Râmnicu Sărat"		),
	("en_US",	"LOC_CITY_NAME_BUZAU",				"Buzău"				),
	("en_US",	"LOC_CITY_NAME_TURNU",				"Turnu"				),
	("en_US",	"LOC_CITY_NAME_TARGU_JIU",			"Târgu Jiu"			),
	("en_US",	"LOC_CITY_NAME_CORABIA",			"Corabia"			),
	("en_US",	"LOC_CITY_NAME_POENARI",			"Poenari"			),
	("en_US",	"LOC_CITY_NAME_SEVERIN",			"Severin"			),
	("en_US",	"LOC_CITY_NAME_ORASUL_DE_FLOCI",	"Orașul de Floci"	),
	("en_US",	"LOC_CITY_NAME_SLATINA",			"Slatina"			),
	("en_US",	"LOC_CITY_NAME_RUSII_DE_VEDE",		"Rușii de Vede"		),
	("en_US",	"LOC_CITY_NAME_BREZOI",				"Brezoi"			),
	("en_US",	"LOC_CITY_NAME_CARACAL",			"Caracal"			),
	("en_US",	"LOC_CITY_NAME_PITESTI",			"Pitești"			),
	("en_US",	"LOC_CITY_NAME_BAIA_DE_ARAMA",		"Baia de Aramă"		),
		
-----------------------------------------------
-- DOM
-----------------------------------------------	

	("en_US",	"LOC_LOADING_INFO_LEADER_CVS_VLAD_III",
	"Your reputation precedes you, Vlad Țepeș, fearsome Voivode of Wallachia. While the shadows of stricken foes dance upon the scorched earth beneath the pikes, the long night awaits those who dare cross you. Lead your Călăraşi head first into the darkness, induce panic, and show the world just how fragile loyalty can be as word of your cruel victories reaches those in your path."  	),

-----------------------------------------------
-- Diplos | First Meet
-----------------------------------------------	

	-- First AI Line (ANY)
	("en_US",	"LOC_DIPLO_FIRST_MEET_LEADER_CVS_VLAD_III_ANY",
	"Halt, stranger. Know that you stand in the court House Drăculești. I am Vlad, son of the dragon, Prince to Wallachia. What I am to you entirely depends on how you conduct yourself." ),
	
	-- AI invitation to visit nearby City (ANY)
	("en_US",	"LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_CVS_VLAD_III_ANY",
	"I extend an invitation to you representatives to visit my court, if you wish to see magnificence. It isn't far from here."	),
	
	-- AI accepts human invitation (ANY)
	("en_US",	"LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_CVS_VLAD_III_ANY",
	"I am glad to hear it."	),
	
	-- AI invitation to exchange Capital Information (ANY)
	("en_US",	"LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_CVS_VLAD_III_ANY",
	"If we are to stand on good terms, we ought to exchange information on our capitals in which to conduct our meetings, wouldn't you agree?"	),

-----------------------------------------------
-- Diplos | Greetings
-----------------------------------------------	

	-- (HAPPY)
	("en_US",	"LOC_DIPLO_GREETING_LEADER_CVS_VLAD_III_HAPPY",
	"It has been too long. Have you business with me?"	),

	-- (UNHAPPY)
	("en_US",	"LOC_DIPLO_GREETING_LEADER_CVS_VLAD_III_UNHAPPY",
	"Speak."	),
	
-----------------------------------------------
-- Diplos | Delegation
-----------------------------------------------	

	-- AI Accepts (ANY)
	("en_US",	"LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_CVS_VLAD_III_ANY",
	"Your delegation is welcome into my lands, and shall be granted the utmost respect - so long as they conduct themselves properly."	),
	
	-- AI Rejects (ANY)
	("en_US",	"LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_CVS_VLAD_III_ANY",
	"That would be ill-advised at this time. For the good of Wallachia, I cannot accept."	),
	
	-- AI Requests (ANY)
	("en_US",	"LOC_DIPLO_DELEGATION_FROM_AI_LEADER_CVS_VLAD_III_ANY",
	"I would like to offer you a delegation from my capital, carrying with it simple gifts of Plums, Frgál, and brandy. I trust you will accept them."	),
	
-----------------------------------------------
-- Diplos | Open Borders
-----------------------------------------------	

	-- AI accepts from human (ANY)	
	("en_US",	"LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_VLAD_III_ANY",
	"You pose no threat to my people or rule, so I shall grant this request."	),
	
	-- AI rejects from human (ANY)	
	("en_US",	"LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_VLAD_III_ANY",
	"Wallachia shall not bid welcome to outsiders."	),
	
	-- AI requests from human (ANY)	
	("en_US",	"LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_CVS_VLAD_III_ANY",
	"I see little gain in our borders remaining closed to one another. Allow my troops to pass unimpeded through your lands, and you shall have my thanks."	),
	
-----------------------------------------------
-- Diplos | Declare Friendship
-----------------------------------------------	

	-- AI accepts from human (ANY)
	("en_US",	"LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_VLAD_III_ANY",
	"Indeed, you are a proven and trustworthy friend to my kingdom. I stand by you, pikes at the ready."	),
	
	-- AI rejects from human (ANY)	
	("en_US",	"LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_VLAD_III_ANY",
	"Do not presume I am so easily won over."	),
	
	-- AI Requests friendship from human (ANY)	
	("en_US",	"LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_CVS_VLAD_III_ANY",
	"The world is harsh, and many in our lands know this truth. It would be an honour for one as trusted as you to stand by my side as friend of Wallachia and its people."	),
	
	-- Human accepts AI requests, AI responds (ANY)	
	("en_US",	"LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_VLAD_III_ANY",
	"Thank you for agreeing. May this friendship last through the era and beyond."	),
	
	-- Human rejects AI requests, AI responds (ANY)	
	("en_US",	"LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_VLAD_III_ANY",
	"Disappointing."	),

-----------------------------------------------
-- Diplos | Alliance
-----------------------------------------------	

	-- AI Requests an alliance from human (ANY)
	("en_US",	"LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_CVS_VLAD_III_ANY",
	"We have long found agreement in our affairs. Let us show the world that the blood between our nations runs thicker than most, with an alliance to strengthen ourselves against all foes. What do you say?"	),

-----------------------------------------------
-- Diplos | Kudos & Warnings
-----------------------------------------------	
	
	-- AI Kudos (ANY)
	("en_US",	"LOC_DIPLO_KUDO_EXIT_LEADER_CVS_VLAD_III_ANY",
	"I always have respect for those familiar with scorched earth tactics, so long as that earth does not belong to me."	),
	
	-- AI Warnings (ANY)
	("en_US",	"LOC_DIPLO_WARNING_EXIT_LEADER_CVS_VLAD_III_ANY",
	"So few troops with which to defend yourselves. I see weakness in your rule."	),

-----------------------------------------------
-- Diplos | Troops Near Border
-----------------------------------------------	
	
	-- AI warns player for border troops (HAPPY)
	("en_US",	"LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_CVS_VLAD_III_HAPPY",
	"The presence of your army at my borders is sowing rumours of war among my people. Remove them at once, before my hands are forced."	),

	-- AI warns player for border troops (UNHAPPY)
	("en_US",	"LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_CVS_VLAD_III_UNHAPPY",
	"You do not intimidate me with such displays of aggression at my border. Move them now, or I shall move them for you."	),
	
	-- AI accepts player's warning for border troops warning (HAPPY)
	("en_US",	"LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_VLAD_III_HAPPY",
	"My apologies. It is merely a series of military exercises, for Wallachia will not remain undefended. I will let the generals know that they should move along."	),
	
	-- AI accepts player's warning for border troops warning (UNHAPPY)
	("en_US",	"LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_VLAD_III_UNHAPPY",
	"My military acts in the interests of my nation. I shall remove them, but know that we do not take to your meddling lightly."	),
	
	-- AI rejects player's warning for border troops warning (ANY) ~ DECLARES WAR
	("en_US",	"LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_CVS_VLAD_III_ANY",
	"Their positioning is no coincidence, for I intend to take your lands, and with them your head."	),

-----------------------------------------------
-- Diplos | Settling Too Close
-----------------------------------------------	
	
	-- AI warns player for settling too close (HAPPY)
	("en_US",	"LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_LEADER_CVS_VLAD_III_HAPPY",
	"You have settled too close to my people's lands. Refrain from doing this again.."	),
	
	-- AI warns player for settling too close (UNHAPPY)
	("en_US",	"LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_LEADER_CVS_VLAD_III_UNHAPPY",
	"The lands you just claimed belong to Wallachia. Insolence will not be tolerated."	),
	
	-- Positive AI response to human request (HAPPY)
	("en_US",	"LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_VLAD_III_HAPPY",
	"I was unaware that you laid claim to such lands. Rest assured, I shall find other, better lands to build upon elsewhere."	),
	
	-- Positive AI response to human request (UNHAPPY)
	("en_US",	"LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_VLAD_III_UNHAPPY",
	"Oh? This land is yours? My apologies, I mistook it for barbarian territory. But if you insist, then I shall settle elsewhere next time."	),
	
	-- Negative AI response to human request (HAPPY)
	("en_US",	"LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_CVS_VLAD_III_HAPPY",
	"There is no need to be hasty, we are able to peacefully coexist in close proximity."	),
	
	-- Negative AI response to human request (UNHAPPY)
	("en_US",	"LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_CVS_VLAD_III_UNHAPPY",
	"If you want this land, come and take it.."	),
	
-----------------------------------------------
-- Diplos | Trade
-----------------------------------------------	

	-- AI Accepts Deal (HAPPY)
	("en_US",	"LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_CVS_VLAD_III_HAPPY",
	"Very well."	),
	
	-- AI Accepts Deal (Unhappy)
	("en_US",	"LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_CVS_VLAD_III_UNHAPPY",
	"This will have to suffice."	),

	-- AI Rejects Deal (HAPPY)
	("en_US",	"LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_CVS_VLAD_III_HAPPY",
	"You can do better than this."	),
	
	-- AI Rejects Deal (Unhappy)
	("en_US",	"LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_CVS_VLAD_III_UNHAPPY",
	"The next words that leave your mouth had better be worth my time, or I shall cut out your tongue."	),

-----------------------------------------------
-- Diplos | Denounce
-----------------------------------------------	

	-- Human denounce, AI responds
	("en_US",	"LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_CVS_VLAD_III_ANY",
	"To openly declare yourself an enemy to the son of the dragon is not wise. Know that I shall spare no effort when seeking retribution."	),
	
	-- From AI
	("en_US",	"LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_CVS_VLAD_III_ANY",
	"In your future I see a landscape of fire and death. I fear for your people. (Denounces You)"	),
	
-----------------------------------------------
-- Diplos | Declarations of War
-----------------------------------------------	

	-- Human Declares War, AI responds
	("en_US",	"LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_CVS_VLAD_III_ANY",
	"May your gods offer you salvation, for you shall find none by my hand."	),
	
	-- AI Declares War
	("en_US",	"LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_CVS_VLAD_III_ANY",
	"As my banners cross the escarpments of Wallachia to find you, your people will look toward their commanders for guidance and see hope... I'll take that from them first."	), 

-----------------------------------------------
-- Diplos | Make Peace
-----------------------------------------------	
	
	-- AI accepts from human
	("en_US",	"LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_CVS_VLAD_III_ANY",
	"The terms are acceptable."	),
	
	-- AI refuses human
	("en_US",	"LOC_DIPLO_MAKE_PEACE_AI_REFUSE_DEAL_LEADER_CVS_VLAD_III_ANY",
	"The world is not big enough to hide from me."	),
	
	-- AI requests from human
	("en_US",	"LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_CVS_VLAD_III_ANY",
	"No good will come from overextending. Let us put an end to this war."	),

-----------------------------------------------
-- Diplos | Defeat
-----------------------------------------------	
	
	-- AI is Defeated
	("en_US",	"LOC_DIPLO_DEFEAT_FROM_AI_LEADER_CVS_VLAD_III_ANY",
	"If you truly believe Wallachia and its people will ever be yours, then you are the greatest fool I have ever known. Mark my words - even if I should fall, the dragon lives on in its people and Wallachia will rise again!"	),

	-- Human is Defeated (will see this in hotseat)
	("en_US",	"LOC_DIPLO_DEFEAT_FROM_HUMAN_LEADER_CVS_VLAD_III_ANY",
	"{LOC_DIPLO_DEFEAT_FROM_AI_LEADER_CVS_VLAD_III_ANY}"	),

--------------------------------------------------------------------
-- Quote and Pedia
--------------------------------------------------------------------

	("en_US",	"LOC_PEDIA_LEADERS_PAGE_CVS_VLAD_III_QUOTE",
	"It would be better that those who think of death should not follow me."  ),
	
	("en_US",	"LOC_PEDIA_LEADERS_PAGE_CVS_VLAD_III_TITLE",
	"Vlad Țepeș"),
	
	("en_US",	"LOC_PEDIA_LEADERS_PAGE_CVS_VLAD_III_SUBTITLE",
	"Voivode of Wallachia"	),
	
	("en_US",	"LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_VLAD_III_CHAPTER_CAPSULE_BODY",
	"Vlad has the power to induce panic in the cities of his enemies on his quest for domination."),
	
	("en_US",	"LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_VLAD_III_CHAPTER_DETAILED_BODY",
	"While Romania's bonuses lend themselves well to diplomatic victories and cultural progression, Vlad will instead look to exploit the war-based bonuses to conquer. With the ability to flip nearby cities upon capturing another, enemies of Vlad will soon find that they are fighting battles on multiple fronts when their cities revolt. Vlad will look to incite chaos wherever he goes, and nothing epitomises this more than his ability to scorch the earth and damage adjacent enemy units when he pillages a tile in enemy territory. With Romania's bonuses for participating in emergencies, Vlad will no doubt find himself the target of many, but Vlad has a strong weapon with his unique horse archer that may move after attacking with which to help him secure a victory, after which he will only become stronger."	),

	("en_US",	"LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_VLAD_III_CHAPTER_HISTORY_PARA_1",
	"Vlad the Impaler, in full Vlad III Dracula or Romanian Vlad III Drăculea, also called Vlad III or Romanian Vlad Țepeș, (born 1431, Sighișoara, Transylvania [now in Romania]—died 1476, north of present-day Bucharest, Romania), voivode (military governor, or prince) of Walachia (1448; 1456–1462; 1476) whose cruel methods of punishing his enemies gained notoriety in 15th-century Europe."),
	("en_US",	"LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_VLAD_III_CHAPTER_HISTORY_PARA_2",
	"Vlad was the second of four brothers born into the noble family of Vlad II Dracul. His sobriquet Dracula (meaning “son of Dracul”) was derived from the Latin draco (“dragon”) after his father’s induction into the Order of the Dragon, created by Holy Roman Emperor Sigismund for the defense of Christian Europe against the Ottoman Empire. Vlad moved to Târgoviște, Walachia, in 1436 when his father assumed leadership of the Walachian voivodate (principality). In 1442 Vlad and his younger brother were sent to the court of Ottoman Sultan Murad II as collateral to assure the sultan that their father, in a reversal of his previous position, would support Ottoman policies. Vlad returned in 1448, having been informed of the assassination of his father and older brother at the hands of Walachian boyars (nobles) the year before."),
	("en_US",	"LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_VLAD_III_CHAPTER_HISTORY_PARA_3",
	"Vlad then embarked upon the first of a lifelong series of campaigns to regain his father’s seat. His opponents included the boyars as well as his younger brother, who was supported by the Ottoman sultan. He emerged briefly victorious in 1448 but was deposed after only two months. After an eight-year struggle, Vlad again claimed the voivodate."),
	("en_US",	"LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_VLAD_III_CHAPTER_HISTORY_PARA_4",
	"It was during this period of rule that he committed the atrocities for which he was best known. His penchant for impaling his enemies on stakes in the ground and leaving them to die earned him the name Vlad the Impaler (Romanian: Vlad Țepeș). He inflicted this type of torture on foreign and domestic enemies alike: notably, as he retreated from a battle in 1462, he left a field filled with thousands of impaled victims as a deterrent to pursuing Ottoman forces. That year he escaped Ottoman capture only to be intercepted by Hungarian forces and imprisoned by Matthias I of Hungary. Vlad regained his seat in 1476 but was killed in battle the same year. He remained a folk hero in the region for his efforts against Ottoman encroachment."),

	("en_US",	"LOC_PEDIA_UNITS_PAGE_UNIT_CVS_VLAD_III_UU_CHAPTER_HISTORY_PARA_1",  	
	"In the Middle Ages and early Renaissance, the Wallachians relied on light cavalry archers (Călăraşi) to deploy hit-and-run tactics. A core component of Vlad's army, Călăraşi were lightly armed missile troops typically used in skirmishes, capable of moving swiftly to avoid close combat or to deliver a rapid blow to the flanks or rear of its foe."	);

