/*
	Localisation
	Authors: ChimpanG
*/

INSERT OR REPLACE INTO LocalizedText (Language, Tag, Text)
VALUES

-----------------------------------------------
-- Leader
-----------------------------------------------	
	
	("en_US", "LOC_LEADER_CVS_ANTIOCHUS_III_NAME",  "Antiochus III"	),
	
-----------------------------------------------
-- UA
-----------------------------------------------	

	("en_US", "LOC_TRAIT_LEADER_CVS_ANTIOCHUS_III_UA_NAME",				"Strategoi"	),
	("en_US", "LOC_TRAIT_LEADER_CVS_ANTIOCHUS_III_UA_DESCRIPTION",		"May build the unique units of civilizations whose cities you've conquered. Receive twice the amount of [ICON_AMENITIES] Amenities from luxury resources owned by allied city-states."	),
	("en_US", "LOC_TRAIT_LEADER_CVS_ANTIOCHUS_III_UA_XP1_DESCRIPTION",	"May build the unique units of civilizations whose cities you've conquered, which provide their era score bonus upon being built for the first time. Receive twice the amount of [ICON_AMENITIES] Amenities from luxury resources owned by allied city-states."	),
	("en_US", "LOC_TRAIT_LEADER_CVS_ANTIOCHUS_III_UA_XP2_DESCRIPTION",	"[ICON_GRIEVANCE] Grievances against you decay at half the usual rate, but you may build the unique units of civilizations whose cities you've conquered, which provide their era score bonus upon being built for the first time. Receive twice the amount of [ICON_AMENITIES] Amenities from luxury resources owned by allied city-states."	),

	("en_US", "LOC_BUILDING_CVS_ANTIOCHUS_III_UA_NAME",  "Seleucid Satrapy"	),
	("en_US", "LOC_BUILDING_CVS_ANTIOCHUS_III_UA_DESCRIPTION",  "Allows empire-wide training of unique units of this city's previous owner."	),

-----------------------------------------------
-- Agenda
-----------------------------------------------	

	("en_US", "LOC_AGENDA_CVS_ANTIOCHUS_III_NAME",						"Basileus Megas"	),
	("en_US", "LOC_AGENDA_CVS_ANTIOCHUS_III_DESCRIPTION",				"Wants to amass the largest army and regards those with larger armies as a threat. Likes Civilizations that do not compete for City-State suzerainity."	),
	("en_US", "LOC_DIPLO_KUDO_LEADER_CVS_ANTIOCHUS_III_REASON_ANY",		"(You are keeping the peace on his continent.)"	),
	("en_US", "LOC_DIPLO_MODIFIER_CVS_ANTIOCHUS_III_HAPPY",				"Antiochus III is happy that you are keeping the peace on his continent"	),
	("en_US", "LOC_DIPLO_WARNING_LEADER_CVS_ANTIOCHUS_III_REASON_ANY",	"(You have a large military.)"	),
	("en_US", "LOC_DIPLO_MODIFIER_CVS_ANTIOCHUS_III_UNHAPPY",			"Antiochus III regards your military might as a threat."	),
		
-----------------------------------------------
-- DOM
-----------------------------------------------	

	("en_US", "LOC_LOADING_INFO_LEADER_CVS_ANTIOCHUS_III",
	"Cast your net wide, great Antiochus, and with the tributes of vanquished kingdoms you may claim what is rightfully yours. Demand alliegiance from those who fall at your command and assimilate the most elite of their forces into your own, for sworn fealty is never yielded... only conquered."  	),

-----------------------------------------------
-- Diplos | First Meet
-----------------------------------------------	

	-- First AI Line (ANY)
	("en_US", "LOC_DIPLO_FIRST_MEET_LEADER_CVS_ANTIOCHUS_III_ANY",
	"Greetings traveller. I am known to my people as Basileus Megas, the great king, but you may call me Antiochus. What might your people call you?" ),
	
	-- AI invitation to visit nearby City (ANY)
	("en_US", "LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_CVS_ANTIOCHUS_III_ANY",
	"I personally extend an invitation to visit our nearby city. There you may rest and resupply before you take your leave."	),
	
	-- AI accepts human invitation (ANY)
	("en_US", "LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_CVS_ANTIOCHUS_III_ANY",
	"Of course."	),
	
	-- AI invitation to exchange Capital Information (ANY)
	("en_US", "LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_CVS_ANTIOCHUS_III_ANY",
	"If we are to remain on good terms, I'd propose exchanging information on our Capitals. What do you say?"	),

-----------------------------------------------
-- Diplos | Greetings
-----------------------------------------------	

	-- (HAPPY)
	("en_US", "LOC_DIPLO_GREETING_LEADER_CVS_ANTIOCHUS_III_HAPPY",
	"What can I do for you?"	),

	-- (UNHAPPY)
	("en_US", "LOC_DIPLO_GREETING_LEADER_CVS_ANTIOCHUS_III_UNHAPPY",
	"Go on..."	),
	
-----------------------------------------------
-- Diplos | Delegation
-----------------------------------------------	

	-- AI Accepts (ANY)
	("en_US", "LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_CVS_ANTIOCHUS_III_ANY",
	"Of course. I will welcome your delegates personally."	),
	
	-- AI Rejects (ANY)
	("en_US", "LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_CVS_ANTIOCHUS_III_ANY",
	"I cannot allow that at this time."	),
	
	-- AI Requests (ANY)
	("en_US", "LOC_DIPLO_DELEGATION_FROM_AI_LEADER_CVS_ANTIOCHUS_III_ANY",
	"I have sent a delgation with fruits, wheat and freshly minted coin. I trust that they shall be received well."	),
	
-----------------------------------------------
-- Diplos | Open Borders
-----------------------------------------------	

	-- AI accepts from human (ANY)	
	("en_US", "LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_ANTIOCHUS_III_ANY",
	"Of course, I see no reason not to."	),
	
	-- AI rejects from human (ANY)	
	("en_US", "LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_ANTIOCHUS_III_ANY",
	"Until I understand your intentions, I cannot allow this."	),
	
	-- AI requests from human (ANY)	
	("en_US", "LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_CVS_ANTIOCHUS_III_ANY",
	"I believe that allowing one another free passage would be a step to a fine friendship between our nations. Would you agree?"	),
	
-----------------------------------------------
-- Diplos | Declare Friendship
-----------------------------------------------	

	-- AI accepts from human (ANY)
	("en_US", "LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_ANTIOCHUS_III_ANY",
	"A wise idea. Let the world know that we stand united as friends."	),
	
	-- AI rejects from human (ANY)	
	("en_US", "LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_ANTIOCHUS_III_ANY",
	"I do not see a friend in you at this time. Perhaps later."	),
	
	-- AI Requests friendship from human (ANY)	
	("en_US", "LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_CVS_ANTIOCHUS_III_ANY",
	"Friendship is the foundation on which to build a strong alliance, and so I offer you mine. Would you extend me the same courtesy?"	),
	
	-- Human accepts AI requests, AI responds (ANY)	
	("en_US", "LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_ANTIOCHUS_III_ANY",
	"Excellent."	),
	
	-- Human rejects AI requests, AI responds (ANY)	
	("en_US", "LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_ANTIOCHUS_III_ANY",
	"Pity."	),

-----------------------------------------------
-- Diplos | Alliance
-----------------------------------------------	

	-- AI Requests an alliance from human (ANY)
	("en_US", "LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_CVS_ANTIOCHUS_III_ANY",
	"I believe that an alliance between our nations would sew the seeds of long-term prosperity for both of us. Would you agree?"	),

-----------------------------------------------
-- Diplos | Kudos & Warnings
-----------------------------------------------	
	
	-- AI Kudos (ANY)
	("en_US", "LOC_DIPLO_KUDO_EXIT_LEADER_CVS_ANTIOCHUS_III_ANY",
	"It is an intelligent ruler that knows not to interfere in my affairs. As long as you keep your distance from my vassals, I imagine we'll become good allies."	),
	
	-- AI Warnings (ANY)
	("en_US", "LOC_DIPLO_WARNING_EXIT_LEADER_CVS_ANTIOCHUS_III_ANY",
	"I do not tremble at the might of your armies. Be warned, should they enter Seleucid lands, they shall not return."	),

-----------------------------------------------
-- Diplos | Troops Near Border
-----------------------------------------------	
	
	-- AI warns player for border troops (ANY)
	("en_US", "LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_CVS_ANTIOCHUS_III_ANY",
	"I say this once, and once only. Remove your troops from borders."	),

	-- AI accepts player's warning for border troops warning
	("en_US", "LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_ANTIOCHUS_III_ANY",
	"I will remove them at once. Apologies for the confusion."	),
		
	-- AI rejects player's warning for border troops warning (ANY) ~ DECLARES WAR
	("en_US", "LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_CVS_ANTIOCHUS_III_ANY",
	"The fact that it has taken you this long to notice does not give me much hope of a good fight. I suppose I'll make your death quick."	),

-----------------------------------------------
-- Diplos | Settling Too Close
-----------------------------------------------	
	
	-- AI warns player for settling too close (ANY)
	("en_US", "LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_LEADER_CVS_ANTIOCHUS_III_ANY",
	"If you are intent on settling so close to my cities, I will be forced to take yours."	),

	-- Negative AI response to human request (ANY)
	("en_US", "LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_CVS_ANTIOCHUS_III_ANY",
	"The only promise I'll make is to cut out the tongue of those who try to impose their will on Seleucid."	),
	
-----------------------------------------------
-- Diplos | Trade
-----------------------------------------------	

	-- AI Accepts Deal (ANY)
	("en_US", "LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_CVS_ANTIOCHUS_III_ANY",
	"I accept."	),
	
	-- AI Rejects Deal (Unhappy)
	("en_US", "LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_CVS_ANTIOCHUS_III_ANY",
	"I think not."	),

-----------------------------------------------
-- Diplos | Denounce
-----------------------------------------------	

	-- From Human
	("en_US", "LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_CVS_ANTIOCHUS_III_ANY",
	"I don't respond to threats. I make them, and you would be wise not to test my patience."	),
	
	-- From AI
	("en_US", "LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_CVS_ANTIOCHUS_III_ANY",
	"History has shown that it isn't the size of the army that matter, but instead how one can wield it. You may have the numbers, but you lack competence. (Denounces You)"	),
	
-----------------------------------------------
-- Diplos | Declarations of War
-----------------------------------------------	

	-- Human Declares War
	("en_US", "LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_CVS_ANTIOCHUS_III_ANY",
	"You are a fool. Know that this will be the last decision you will ever make."	),
	
	-- AI Declares War
	("en_US", "LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_CVS_ANTIOCHUS_III_ANY",
	"I will not stand idle while your treachery goes unpunished. Ready your troops and watch the blood drain from their faces when you tell them that Antiochus the Great is coming for them."	), 

-----------------------------------------------
-- Diplos | Make Peace
-----------------------------------------------	
	
	-- AI accepts from human
	("en_US", "LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_CVS_ANTIOCHUS_III_ANY",
	"I would agree. Let us settle this with a truce."	),
	
	-- AI refuses human
	("en_US", "LOC_DIPLO_MAKE_PEACE_AI_REFUSE_DEAL_LEADER_CVS_ANTIOCHUS_III_ANY",
	"I would not accept such humiliation."	),
	
	-- AI requests from human
	("en_US", "LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_CVS_ANTIOCHUS_III_ANY",
	"I am tired of this. Too long have we been at an impasse. Would you agree to a truce?"	),

-----------------------------------------------
-- Diplos | Defeat
-----------------------------------------------	
	
	-- AI is Defeated
	("en_US", "LOC_DIPLO_DEFEAT_FROM_AI_LEADER_CVS_ANTIOCHUS_III_ANY",
	"My armies, scattered to the winds. My people, displaced from their homes. I wish you nothing but a lifetime of suffering for what you have done."	),

	-- Human is Defeated (will see this in hotseat)
	("en_US", "LOC_DIPLO_DEFEAT_FROM_HUMAN_LEADER_CVS_ANTIOCHUS_III_ANY",
	"My armies, scattered to the winds. My people, displaced from their homes. I wish you nothing but a lifetime of suffering for what you have done."	),

--------------------------------------------------------------------
-- Quote and Pedia
--------------------------------------------------------------------

	("en_US", "LOC_PEDIA_LEADERS_PAGE_CVS_ANTIOCHUS_III_QUOTE",
	"Geography might keep one a neighbor, but it is fear that keeps their allegiance."  ),
	
	("en_US", "LOC_PEDIA_LEADERS_PAGE_CVS_ANTIOCHUS_III_TITLE",
	"Antiochus III"),
	
	("en_US", "LOC_PEDIA_LEADERS_PAGE_CVS_ANTIOCHUS_III_SUBTITLE",
	"Basileus Megas"	),
	
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_ANTIOCHUS_III_CHAPTER_CAPSULE_BODY",
	"A dynamic army is at its most dangerous under Antiochus III."),
	
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_ANTIOCHUS_III_CHAPTER_DETAILED_BODY",
	"Antiochus III will try to amass large armies with which to conquer as much territory as possible. With the ability to construct the unique units of civilizations he conquers, Antiochus can have the most dynamic strike force in the game. However, he will want to make time for City-States, as they will grant him the amenities of luxuries they own that he does not. This will allow him to stay at war longer than most, and encourage his cities to flourish in the occasional intervals of peace. Like most Seleucid rulers, Antiochus is a formiddable foe and well-equipped for a domination victory, while the Civilization bonuses will allow him to maintain units and infrastructure through trade and expansion. If there was ever a leader that would be better as a friend than foe, Antiochus III is it."	),

	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_ANTIOCHUS_III_CHAPTER_HISTORY_PARA_1",
	"The Seleucid state was a hegemonic empire, willing to acknowledge local autonomy in return for tribute, military aid, and formal acknowledgment of Seleucid suzerainty. Nobody more than Antiochus III propagated this system, and as a result, there was a shift from direct administration by royal officials to a system of vassal states. With connections established, by marriage and ritualized guest-friendship and cemented by gifts, otherwise known as ‘Epigamia', the satrapic administration and title were retained. However, satrapies established through military means were often designated as 'Strategoi'."),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_ANTIOCHUS_III_CHAPTER_HISTORY_PARA_2",
	"Iranian lands, including as far east as Bactria, were of fundamental importance for the Seleucid empire, because in addition to tribute, these regions provided much of the cavalry, infantry and archers on which Seleucid military power was to a large extent based. At the Battle of Magnesia in 190 BCE, Antiochus III fielded no fewer than 6,000 Iranian cataphracts, more than 10,000 Elamite and Persian light infantry, and 1,000 Parthian or Saka horse archers. It is recorded as late as 140 BCE, that vassal rulers of Persis, Elam and Bactria sent auxiliary troops to support Seleucid wars against the Parthians.");