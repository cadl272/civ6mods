/*
	Localisation
	Authors: Sailor Cat, ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT OR REPLACE INTO LocalizedText (Language, Tag, Text)
VALUES

-----------------------------------------------
-- Leader
-----------------------------------------------	
	
	("en_US", "LOC_LEADER_CVS_TIGRANES_II_NAME",  	"Tigranes II"	),
	
-----------------------------------------------
-- UA
-----------------------------------------------	

	("en_US", "LOC_TRAIT_LEADER_CVS_TIGRANES_II_UA_NAME",  	"Seventy Valleys"	),
	
	("en_US", "LOC_TRAIT_LEADER_CVS_TIGRANES_II_UA_DESCRIPTION",		
	"Units receive additional [ICON_STRENGTH] Combat Strength on Hills and being [ICON_PROMOTION] Promoted or [ICON_GOLD] Upgraded restores the unit's actions. Cities with an Encampment may build one more district than the [ICON_CITIZEN] Population usually allows."),
	
	("en_US", "LOC_TRAIT_LEADER_CVS_TIGRANES_II_UA_XP1_DESCRIPTION",		
	"Units receive additional [ICON_STRENGTH] Combat Strength on Hills and being [ICON_PROMOTION] Promoted or [ICON_GOLD] Upgraded restores the unit's actions. Receive a random [ICON_CIVICBOOSTED] Inspiration upon recruiting a [ICON_GREATGENERAL] Great General."),

	("en_US", "LOC_MODIFIER_CVS_TIGRANES_II_UA_HILL_STRENGTH_DESCRIPTION",  	"+{1_Amount} Combat Bonus on Hills (Seventy Valleys)"	),

-----------------------------------------------
-- Agenda
-----------------------------------------------	

	("en_US", "LOC_AGENDA_CVS_TIGRANES_II_NAME",		"Tsovits Tsov"	),
	("en_US", "LOC_AGENDA_CVS_TIGRANES_II_DESCRIPTION", 	"Will not hesitate to backstab others and likes those who endeavour to follow his lead. Thinks civilizations with small militaries are weak."	),
	("en_US", "LOC_DIPLO_KUDO_LEADER_CVS_TIGRANES_II_REASON_ANY",			  
	"(You have a declared a surprise war.)"	),
	("en_US", "LOC_DIPLO_MODIFIER_CVS_TIGRANES_II_HAPPY",		
	"Tigranes II is impressed with your brazen approach to surprise wars"	),
	("en_US", "LOC_DIPLO_WARNING_LEADER_CVS_TIGRANES_II_REASON_ANY",		  
	"(Your military is weak.)"	),
	("en_US", "LOC_DIPLO_MODIFIER_CVS_TIGRANES_II_UNHAPPY",			 
	"Tigranes II thinks you are weak"	),

-----------------------------------------------
-- DOM
-----------------------------------------------	

	("en_US", "LOC_LOADING_INFO_LEADER_CVS_TIGRANES_II",
	"Rise, Tigranes the Great. With your fetters removed, now is the time to strike out. Inflict justice upon those unworthy neighbors who profaned your nation, and consolidate their power with yours. Show the world what becomes of those who cross the great stone curtain, and under you, Armenia will know glory."  	),

-----------------------------------------------
-- Diplos | First Meet
-----------------------------------------------	

	-- First AI Line (ANY)
	("en_US", "LOC_DIPLO_FIRST_MEET_LEADER_CVS_TIGRANES_II_ANY",
	"I see another ambitious soul hopes to scale the escarpments of Tigranes the Great. Pray ours is a lasting friendship, because to have scaled them, you will have put your back to those escarpments... and my hand on your shoulder." ),
	
	-- AI invitation to visit nearby City (ANY)
	("en_US", "LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_CVS_TIGRANES_II_ANY",
	"Should you find yourself in the area, I suggest you attend a Kochari dance in our nearest city."	),
	
	-- AI accepts human invitation (ANY)
	("en_US", "LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_CVS_TIGRANES_II_ANY",
	"Let's strike out then."	),
	
	-- AI invitation to exchange Capital Information (ANY)
	("en_US", "LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_CVS_TIGRANES_II_ANY",
	"I extend an invitation to our capital at Tigranocerta, where Hellenistic and Iranian cultures have reached a heretofore unheard of unity--and in hopes of your returning the favor."	),

-----------------------------------------------
-- Diplos | Greetings
-----------------------------------------------	

	-- (HAPPY)
	("en_US", "LOC_DIPLO_GREETING_LEADER_CVS_TIGRANES_II_HAPPY",
	"Speak freely."	),

	-- (UNHAPPY)
	("en_US", "LOC_DIPLO_GREETING_LEADER_CVS_TIGRANES_II_UNHAPPY",
	"Choose your words wisely."	),
	
-----------------------------------------------
-- Diplos | Delegation
-----------------------------------------------	

	-- AI Accepts (ANY)
	("en_US", "LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_CVS_TIGRANES_II_ANY",
	"Carry on."	),
	
	-- AI Rejects (ANY)
	("en_US", "LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_CVS_TIGRANES_II_ANY",
	"You are not welcome here."	),
	
	-- AI Requests (ANY)
	("en_US", "LOC_DIPLO_DELEGATION_FROM_AI_LEADER_CVS_TIGRANES_II_ANY",
	"Expect a delegation bearing exquisite Armenian carpets, and our traditional chili pepper paste, harissa. Should you welcome it, I would be more inclined to stay my hand, or grasp yours."	),
	
-----------------------------------------------
-- Diplos | Open Borders
-----------------------------------------------	

	-- AI accepts from human (ANY)	
	("en_US", "LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_TIGRANES_II_ANY",
	"If you believe your people can brave the wilds of Armenia, they are welcome to try."	),
	
	-- AI rejects from human (ANY)	
	("en_US", "LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_TIGRANES_II_ANY",
	"You shall not pass."	),
	
	-- AI requests from human (ANY)	
	("en_US", "LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_CVS_TIGRANES_II_ANY",
	"You are no doubt unsettled by the cavalry bristling at your borders. They wish only to pass."	),
	
-----------------------------------------------
-- Diplos | Declare Friendship
-----------------------------------------------	

	-- AI accepts from human (ANY)
	("en_US", "LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_TIGRANES_II_ANY",
	"We ride together, saddle by saddle."	),
	
	-- AI rejects from human (ANY)	
	("en_US", "LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_TIGRANES_II_ANY",
	"Hah! Go eat a horse."	),
	
	-- AI Requests friendship from human (ANY)	
	("en_US", "LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_CVS_TIGRANES_II_ANY",
	"Friendships are forged in the hunt, strengthened thereafter. Shall we then celebrate ours in the nearest hunting park?"),
	
	-- Human accepts AI requests, AI responds (ANY)	
	("en_US", "LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_TIGRANES_II_ANY",
	"String your bow and ready your falcon."	),
	
	-- Human rejects AI requests, AI responds (ANY)	
	("en_US", "LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_TIGRANES_II_ANY",
	"More's the pity."	),

-----------------------------------------------
-- Diplos | Alliance
-----------------------------------------------	

	-- AI Requests an alliance from human (ANY)
	("en_US", "LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_CVS_TIGRANES_II_ANY",
	"Consolidate might with guile. A mantra to live by. A mantra we share. Ally with Armenia, and few would dare."	),

-----------------------------------------------
-- Diplos | Kudos & Warnings
-----------------------------------------------	
	
	-- AI Kudos (ANY)
	("en_US", "LOC_DIPLO_KUDO_EXIT_LEADER_CVS_TIGRANES_II_ANY",
	"Your mettle inspires, your ruthlessness commands, and you, leader who saddles the world, have earned my respect."	),
	
	-- AI Warnings (ANY)
	("en_US", "LOC_DIPLO_WARNING_EXIT_LEADER_CVS_TIGRANES_II_ANY",
	"The footnotes of history are littered with your kind: milksops remembered only as those trampled underfoot. Right your path, or stand in mine. Either way, history will be made."	),

-----------------------------------------------
-- Diplos | Troops Near Border
-----------------------------------------------	
	
	-- AI warns player for border troops (HAPPY)
	("en_US", "LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_CVS_TIGRANES_II_HAPPY",
	"What an impressive host you've assembled. Truly impressive. But I would rather you not use my borders as a staging ground."	),

	-- AI warns player for border troops (UNHAPPY)
	("en_US", "LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_CVS_TIGRANES_II_UNHAPPY",
	"As we speak, my archers prepare for target practice. Coincidentally, your military loiters uncomfortably close to my borders."	),
	
	-- AI accepts player's warning for border troops warning (HAPPY)
	("en_US", "LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_TIGRANES_II_HAPPY",
	"I will leave, but you need not raise your hackles when a friend passes. Instead, consider your borders all the more safer for it."	),
	
	-- AI accepts player's warning for border troops warning (UNHAPPY)
	("en_US", "LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_TIGRANES_II_UNHAPPY",
	"You presume much in warning me. Lucky for you, I am headed elsewhere."	),
	
	-- AI rejects player's warning for border troops warning (ANY) ~ DECLARES WAR
	("en_US", "LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_CVS_TIGRANES_II_ANY",
	"A force such as mine goes where it pleases."	),

-----------------------------------------------
-- Diplos | Settling Too Close
-----------------------------------------------	
	
	-- AI warns player for settling too close (HAPPY)
	("en_US", "LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_LEADER_CVS_TIGRANES_II_HAPPY",
	"In the best interests of both our civilizations, I ask that you found your next city further afield."	),
	
	-- AI warns player for settling too close (UNHAPPY)
	("en_US", "LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_LEADER_CVS_TIGRANES_II_UNHAPPY",
	"Continue to settle close to my borders, and I will be forced to expand them."	),
	
	-- Positive AI response to human request (HAPPY)
	("en_US", "LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_TIGRANES_II_HAPPY",
	"So be it. We will look elsewhere."	),
	
	-- Positive AI response to human request (UNHAPPY)
	("en_US", "LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_TIGRANES_II_UNHAPPY",
	"You need not worry. Had I known your city reeked of tanneries, I would not have settled nearby--downwind or otherwise."	),
	
	-- Negative AI response to human request (HAPPY)
	("en_US", "LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_CVS_TIGRANES_II_HAPPY",
	"There is land enough to go around, and resources aplenty. Stay your avarice, for I am a generous neighbor."	),
	
	-- Negative AI response to human request (UNHAPPY)
	("en_US", "LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_CVS_TIGRANES_II_UNHAPPY",
	"Presume to tell me where to settle, and I will found my next city on the ashes of your capital."	),
	
-----------------------------------------------
-- Diplos | Trade
-----------------------------------------------	

	-- AI Accepts Deal (HAPPY)
	("en_US", "LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_CVS_TIGRANES_II_HAPPY",
	"Never have I felt so content to be handing over coin."	),
	
	-- AI Accepts Deal (Unhappy)
	("en_US", "LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_CVS_TIGRANES_II_UNHAPPY",
	"With our business concluded, leave."	),

	-- AI Rejects Deal (HAPPY)
	("en_US", "LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_CVS_TIGRANES_II_HAPPY",
	"You haggle well. Too well for me."	),
	
	-- AI Rejects Deal (Unhappy)
	("en_US", "LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_CVS_TIGRANES_II_UNHAPPY",
	"A miser departs with empty palms, or not at all."	),

-----------------------------------------------
-- Diplos | Denounce
-----------------------------------------------	

	-- From Human
	("en_US", "LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_CVS_TIGRANES_II_ANY",
	"Hmph."	),
	
	-- From AI
	("en_US", "LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_CVS_TIGRANES_II_ANY",
	"If this were the Bacchae, the part of Dionysus would be mine, because you keep finding new ways to anger me. Know you what became of Pentheus? (Denounces You)"	),
	
-----------------------------------------------
-- Diplos | Declarations of War
-----------------------------------------------	

	-- Human Declares War
	("en_US", "LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_CVS_TIGRANES_II_ANY",
	"Many have stood before the stone curtain with conquest in their hearts. All have fallen. Make peace with your gods."	),
	
	-- AI Declares War
	("en_US", "LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_CVS_TIGRANES_II_ANY",
	"Listen, wretch. Listen and know the thunder beyond your walls is no summer storm, but the hooves of your undoing."	), 

-----------------------------------------------
-- Diplos | Make Peace
-----------------------------------------------	
	
	-- AI accepts from human
	("en_US", "LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_CVS_TIGRANES_II_ANY",
	"Reconciliation is the aim of all wars. We fight, hoping that when it comes, the terms are ours."	),
	
	-- AI refuses human
	("en_US", "LOC_DIPLO_MAKE_PEACE_AI_REFUSE_DEAL_LEADER_CVS_TIGRANES_II_ANY",
	"The only hatchet worth burying finds your brow."	),
	
	-- AI requests from human
	("en_US", "LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_CVS_TIGRANES_II_ANY",
	"When you have fought as we have, with indefatigable valor, there is no shame in peace."	),

-----------------------------------------------
-- Diplos | Defeat
-----------------------------------------------	
	
	-- AI is Defeated
	("en_US", "LOC_DIPLO_DEFEAT_FROM_AI_LEADER_CVS_TIGRANES_II_ANY",
	"For centuries, Armenia has been hardened in the wars of her neighbors. Now that she has struck out on her own, even my death cannot stop her."	),

	-- Human is Defeated (will see this in hotseat)
	("en_US", "LOC_DIPLO_DEFEAT_FROM_HUMAN_LEADER_CVS_TIGRANES_II_ANY",
	"For centuries, Armenia has been hardened in the wars of her neighbors. Now that she has struck out on her own, even my death cannot stop her."	),

--------------------------------------------------------------------
-- Quote and Pedia
--------------------------------------------------------------------

	("en_US", "LOC_PEDIA_LEADERS_PAGE_CVS_TIGRANES_II_QUOTE",		
	"Fair kings are seldom remembered for their fairness by those who did not respect their power."  	),
	
	("en_US", "LOC_PEDIA_LEADERS_PAGE_CVS_TIGRANES_II_TITLE",		
	"Tigranes II"),
	
	("en_US", "LOC_PEDIA_LEADERS_PAGE_CVS_TIGRANES_II_SUBTITLE",		
	"Tigranes the Great, King of Armenia"	),
	
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_TIGRANES_II_CHAPTER_CAPSULE_BODY",		
	"Victory for Tigranes is but a process of elimination."),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_TIGRANES_II_CHAPTER_DETAILED_BODY",		
	"Armenia's production capabilities give it an edge in most victory conditions, but under Tigranes II's leadership, those benefits make for a fearsome opponent when it comes to domination. He will look to hit the ground running by constructing walls and the Vank unique district which allows for building quarries on flat land as additional sources of production, particularly when paired with Industrial Zones. Tigranes may capitalise on settling near mountains to defend his cities with stronger defenses and ranged attacks, while the larger part of his armies are conquering elsewhere. What's more, the faith from the district may be used to purchase the Ayrudzi unique unit, which may move after attacking for hit and run tactics, and with Tigranes II's combat bonuses to units on hills, ability to take an action after being promoted or upgraded, capturing a slew of cities is not only encouraged, but expected. With the Ayrudzi contributing great person points toward great generals, with which Tigranes may receive a free inspiration, unlocking important military policies will support Tigranes in his bid for a domination victory."	),

	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_TIGRANES_II_CHAPTER_HISTORY_PARA_1",		
	"Under King Tigranes II the Great, from 95 to 55 B.C. Armenia thrived, and became the strongest state in the Roman east."),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_TIGRANES_II_CHAPTER_HISTORY_PARA_2",		
	"In the aftermath of the defeat of Antiochus the Great by the Romans at the Battle of Magnesia in 190 B.C., the grip of the Seleucid Empire on the East was weakened. Armenia was at that time governed by two of Antiochus' generals, Artaxias and Zariadris. Seizing the opportunity, the generals decided to delcare their loyalty to the Roman victors, and claimed autonomy from the ailing Seleucid Empire. For much of its later history, the Kingdom of Armenia would serve as a buffer state between the Roman Empire in the West and the Parthian Empire in the East. Yet, this was not always the case, as Armenia was once a powerful Eastern kingdom during the reign of Tigranes II, also known as Tigranes the Great."),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_TIGRANES_II_CHAPTER_HISTORY_PARA_3",		
	"Following the independence of Armenia, the satrapy was divided between the two generals. Artaxias ruled over the Kingdom of Armenia, and Zariadris ruled over the Kingdom of Sophene. Tigranes was a descendent of Artaxias, and was born around 140 B.C. Around the age of 20, Tigranes was taken as a hostage by the Parthians, only to be released some 25 years later after ceding 'seventy valleys' in Armenia' to them."),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_TIGRANES_II_CHAPTER_HISTORY_PARA_4",		
	"Once freed from the Parthians and on the throne of Armenia, Tigranes wasted no time at establishing his position. He first formed an alliance with Mithridates VI of Pontus by marrying his daughter, Cleopatra the Elder. Then, Tigranes set his sights on conquest. At that time, the Kingdom of Sophene was ruled by Artanes, a descendant of Zariadris. Tigranes decided to expand his kingdom, and conquered the lands held by Artanes in 93 B.C. Following the death of Mithridates II of Parthia in 91 B.C., Tigranes successfully reconquered the seventy valleys ceded to him just four years earlier, and laid waste to Parthian lands. Tigranes then conquered Osreoene (Edessa), Nisibis, Gordyene, Atropatene, and Adiabene. He also waged war on the Seleucid Empire, and took Syria and Phoenicia in 83 B.C."),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_TIGRANES_II_CHAPTER_HISTORY_PARA_5",		
	"Although Tigranes grew rapidly in power, his triumph was to be short-lived. To the west of Armenia, Tigranes' father-in-law, Mithridates VI of Pontus, was at war with the Romans in what is known today as the Third Mithridatic War. Having been defeated by the Roman general Lucullus, Mithridates fled to Tigranes, who refused to hand him over to the Romans. By doing so, Tigranes effectively declared war with Rome."),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_TIGRANES_II_CHAPTER_HISTORY_PARA_6",		
	"Although heavily outnumbered by his enemies, Lucullus decided to march on Tigranakert, the new capital of the Armenian Kingdom, in 69 B.C. While the Romans were besieging the city, Tigranes arrived with a huge army, which numbered at 260,000 men. Leaving around 6,000 men to maintain the siege, Lucullus met Tigranes with about 11,000 men. In a surprising turn of events, Tigranes was defeated by Lucullus and was forced to flee to the old Armenian capital, Artaxata, where he was again defeated by the Romans."),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_TIGRANES_II_CHAPTER_HISTORY_PARA_7",		
	"When the Roman troops grew weary of the eastern campaign, and refused to go any further, Lucullus was recalled by the Senate and replaced by Pompey. In 66 B.C., Pompey marched on Armenia and Tigranes surrendered to the Roman general without a fight. Having reconciled with the Romans, Tigranes became a 'friend and ally' of the Romans with the condition that he give up the territories won through his previous conquests. Tigranes continued to rule over the Kingdom of Armenia until his death in about 55 B.C.");
	
	