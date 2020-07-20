/*
	Localisation
	Authors: ChimpanG
*/

INSERT OR REPLACE INTO LocalizedText (Language, Tag, Text)
VALUES

-----------------------------------------------
-- Leader
-----------------------------------------------	
	
	("en_US", "LOC_LEADER_CVS_ANACAONA_NAME", "Anacaona"	),
	
-----------------------------------------------
-- UA
-----------------------------------------------	

	("en_US", "LOC_TRAIT_LEADER_CVS_ANACAONA_UA_NAME",  "Golden Flower"	),
	("en_US", "LOC_TRAIT_LEADER_CVS_ANACAONA_UA_DESCRIPTION",
	"May patronage [ICON_GREATPERSON] Great People with 25% less [ICON_FAITH] Faith. Receive +1 [ICON_FAITH] Faith from [ICON_ENVOY] Envoys in City-States. Gains access to the Conuco Unique Improvement."),

-----------------------------------------------
-- UI
-----------------------------------------------

	("en_US", "LOC_IMPROVEMENT_CVS_ANACAONA_UI_NAME",	"Conuco"	),
	("en_US", "LOC_IMPROVEMENT_CVS_ANACAONA_UI_DESCRIPTION",		  
	"Unlocks the Builder ability to construct a Conuco, unique to Taino.[NEWLINE][NEWLINE]Doubles the base terrain yield of the plot. Yields an additional +1 [ICON_CULTURE] Culture, with further yields unlocking with progression. Requires an adjacent Luxury or Bonus resource and may not be built on hills, desert or snow."),

	("en_US", "LOC_ADJ_CVS_ANACAONA_UI_GOLD_RESOURCES",		"+{1_num} [ICON_GOLD] Gold from the adjacent luxury {1_Num : plural 1?resource; other?resources;}."			),
	("en_US", "LOC_ADJ_CVS_ANACAONA_UI_CULTURE_RESOURCES",	"+{1_num} [ICON_CULTURE] Culture from the adjacent bonus {1_Num : plural 1?resource; other?resources;}."	),

-----------------------------------------------
-- Agenda
-----------------------------------------------	

	("en_US", "LOC_AGENDA_CVS_ANACAONA_NAME",	"Datiao"	),
	("en_US", "LOC_AGENDA_CVS_ANACAONA_DESCRIPTION", 	"Tries to maintain peace and respects civilizations that do the same. Greatly dislikes civilizations that attack City-States."	),
	("en_US", "LOC_DIPLO_KUDO_LEADER_CVS_ANACAONA_REASON_ANY",	
	"(You are keeping the peace.)"	),
	("en_US", "LOC_DIPLO_MODIFIER_CVS_ANACAONA_HAPPY",		
	"Anacaona is pleased that you are keeping the peace."	),
	("en_US", "LOC_DIPLO_WARNING_LEADER_CVS_ANACAONA_REASON_ANY",		  
	"(You have been at war on her home continent or attacked a City-State.)"	),
	("en_US", "LOC_DIPLO_MODIFIER_CVS_ANACAONA_UNHAPPY",			 
	"Anacaona is upset by your aggression toward City-States."	),
		
-----------------------------------------------
-- Diplos
-----------------------------------------------	

-- DOM
	("en_US", "LOC_LOADING_INFO_LEADER_CVS_ANACAONA",  	
	"The wisest of rulers know that war is but a failure of diplomacy, Anacaona, noble cacica of the Taino. It is your people's knowledge of the land that will allow them to dine on the fruits of Mother Earth, but even greater are the gifts of alliances with minor powers. Catch their attention with the hospitality of Areyto. Keep it with kindness."  	),

-- FIRST MEET
	-- First AI Line
	("en_US", "LOC_DIPLO_FIRST_MEET_LEADER_CVS_ANACAONA_ANY",		
	"Greetings, traveller. I am Anacaona, cacica of the Taino people. From what lands do you come from?" ),
	
	-- AI invitation to visit nearby City
	("en_US", "LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_CVS_ANACAONA_ANY",		
	"It is a Taino custom to hold a grand feast and perform Areyto for visitors. I would like to invite you to dine with us."	),
	
	-- AI accepts human invitation
	("en_US", "LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_CVS_ANACAONA_ANY",		
	"I would be honored. Thank you."	),
	
	-- AI invitation to exchange Capital Information
	("en_US", "LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_CVS_ANACAONA_ANY",		
	"Let us enjoy each other's hospitality and exchange information about our capitals. What do you say?"	),

-- GREETINGS	
	("en_US", "LOC_DIPLO_GREETING_LEADER_CVS_ANACAONA_ANY",		
	"Hello, friend. What can I do for you?"	),
	
-- DELEGATION
	-- AI Accepts
	("en_US", "LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_CVS_ANACAONA_ANY",		
	"It would be my pleasure to welcome your delegates. I will ensure that their stay with us is welcomed and remembered."	),
	
	-- AI Rejects
	("en_US", "LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_CVS_ANACAONA_ANY",		
	"No, I'm sorry. Let's get to know each other better first."	),
	
	-- AI Requests
	("en_US", "LOC_DIPLO_DELEGATION_FROM_AI_LEADER_CVS_ANACAONA_ANY",		
	"I have sent gifts of casabi and tabacú for you to enjoy. I trust that my delegates are treated with the same respect you have shown me."	),
	
-- OPEN BORDERS
	-- AI accepts from human	
	("en_US", "LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_ANACAONA_ANY",		                                     
	"Why of course, please visit us any time you like."	),
	
	-- AI rejects from human	
	("en_US", "LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_ANACAONA_ANY",  	                                   
	"For the safety of my people, I must decline."	),
	
	-- AI requests from human	
	("en_US", "LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_CVS_ANACAONA_ANY",      	                                
	"How can we learn from one another if we are to cast lines in the soil? Let us share open borders with each other."	),
	
-- DECLARE FRIENDSHIP

	-- AI accepts from human	
	("en_US", "LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_ANACAONA_ANY",   	                                   
	"Of course. A friend of mine is a friend of my people."	),
	
	-- AI rejects from human	
	("en_US", "LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_ANACAONA_ANY",   	                                   
	"It is perhaps too soon for a formal declaration of friendship. Give it some time."	),
	
	-- AI Requests friendship from human	
	("en_US", "LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_CVS_ANACAONA_ANY",     	                                 
	"I admire the way in which you govern your people. Allow me to extend my hand in friendship."	),
	
	-- Human accepts AI requests, AI responds	
	("en_US", "LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_ANACAONA_ANY",   	                                   
	"Thank you, friend."	),
	
	-- Human rejects AI requests, AI responds	
	("en_US", "LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_ANACAONA_ANY",   	                                   
	"Very well. No hard feelings."	),

-- ALLIANCE

	-- AI Requests an alliance from human
	("en_US", "LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_CVS_ANACAONA_ANY",		
	"You have come to be one of the people I trust most in this world. What would you say to an alliance between our nations?"	),

-- KUDOS & WARNINGS
	
	-- AI Kudos
	("en_US", "LOC_DIPLO_KUDO_EXIT_LEADER_CVS_ANACAONA_ANY",		
	"You should be proud of your accomplishments. I see great things for you and your people."	),
	
	-- AI Warnings
	("en_US", "LOC_DIPLO_WARNING_EXIT_LEADER_CVS_ANACAONA_ANY",		
	"To what end must one endure your reckless actions? Please reconsider the path on which you walk."	),
	
	-- AI warns player for border troops
	("en_US", "LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_CVS_ANACAONA_ANY",		
	"We are a nation of hospitality and kindness, but we will not stand for idle threats. Please remove your troops from my borders."	),

-- TRADE
	
	-- AI Accepts Deal
	("en_US", "LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_CVS_ANACAONA_ANY",		
	"I think we can come to agreement on that."	),

	-- AI Rejects Deal
	("en_US", "LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_CVS_ANACAONA_ANY",		
	"That is a shame."	),

-- DENOUNCE
	
	-- From Human
	("en_US", "LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_CVS_ANACAONA_ANY",		
	"I know not the reason for this, but I do know that I don't always have to care."	),
	
	-- From AI
	("en_US", "LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_CVS_ANACAONA_ANY",		
	"If you stopped your foolishness for but a moment, perhaps you would appreciate more in this world. (Denounces You)"	),
	
-- DOW
	
	-- Human Declares War
	("en_US", "LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_CVS_ANACAONA_ANY",		
	"It is a shame that it has come to this. Rest assured, I will not go without a fight."	),
	
	-- AI Declares War
	("en_US", "LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_CVS_ANACAONA_ANY",		
	"Consider how deplorable you must be for the Taino people to demand war. It is a rare moment, but a necessary one."	),
	
-- MAKE PEACE
	
	-- AI accepts from human
	("en_US", "LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_CVS_ANACAONA_ANY",		
	"Yes, I think that would be in both of our interests."	),
	
	-- AI refuses human
	("en_US", "LOC_DIPLO_MAKE_PEACE_AI_REFUSE_DEAL_LEADER_CVS_ANACAONA_ANY",		
	"No. The world can no longer tolerate your actions, and you must be stopped."	),
	
	-- AI requests from human
	("en_US", "LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_CVS_ANACAONA_ANY",		
	"Can you not see that there is more to life than pain and suffering? For the sake of our peoples, let us call a truce."	),

-- DEFEAT
	
	-- AI is Defeated
	("en_US", "LOC_DIPLO_DEFEAT_FROM_AI_LEADER_CVS_ANACAONA_ANY",		
	"Regrettably, the gods have not answered my call. You may take many lives like the hurricane, but be warned, sometimes even a butterfly can change the way the wind blows. You'll meet your comeuppance."	),

	-- Human is Defeated (will see this in hotseat)
	("en_US", "LOC_DIPLO_DEFEAT_FROM_HUMAN_LEADER_CVS_ANACAONA_ANY",		
	"Regrettably, the gods have not answered my call. You may take many lives like the hurricane, but be warned, sometimes even a butterfly can change the way the wind blows. You'll meet your comeuppance."	),	

--------------------------------------------------------------------
-- Quote and Pedia
--------------------------------------------------------------------

	("en_US", "LOC_PEDIA_LEADERS_PAGE_CVS_ANACAONA_QUOTE",		
	"Pursue not what catches one's eye, but what captures one's heart."  ),
	
	("en_US", "LOC_PEDIA_LEADERS_PAGE_CVS_ANACAONA_TITLE",		
	"Anacaona"),
	
	("en_US", "LOC_PEDIA_LEADERS_PAGE_CVS_ANACAONA_SUBTITLE",		
	"Cacica of the Taino"),
	
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_ANACAONA_CHAPTER_CAPSULE_BODY",		
	"Versatile in victory, diplomacy with City-States is the key to Anacaona's success."),
	
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_ANACAONA_CHAPTER_DETAILED_BODY",		
	"The initial push for Taino is to take advantage of their quick Macana warriors to meet as many city-states as possible. Using the Batéy and its unique Areyto Ceremony project will allow them to produce [ICON_Envoy] Envoys to Suzerain as many City-States as possible in order to reap the rewards of doubled type-bonuses. With Anacaona leading them, Taino have a unique opportunity to double-up on terrain yields with their unique Conuco improvement, allowing her to grow her cities faster. With the ability to buy [ICON_GreatPerson] Great People with 25% less [ICON_Faith] Faith, Anacaona will find such versatility suitable for any victory condition."	),

	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_ANACAONA_CHAPTER_HISTORY_PARA_1",		
	"Anacaona was a Taino cacica (chief) born into a family of chiefs, and sister of Bohechío, chief of Jaragua. Her husband was Caonabo, chief of the nearby territory of Maguana. Her brother and her husband were two of the five highest caciques who ruled the island of Kiskeya (now called Haiti and Dominican Republic) when the Spaniards settled there in 1492. She was celebrated as a composer of ballads and narrative poems, called areítos. She is immortalised in the intertwining histories of Haiti and the Dominican Republic, with many in Haiti claiming her as a significant icon in early Haitian history and a primordial founder of their country."),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_ANACAONA_CHAPTER_HISTORY_PARA_2",		
	"Anacaona was born in Maguana (near present-day Léogâne), where her Brother was Chieftain in 1474. During Christopher Columbus's visit in late 1496, Anacaona and her brother Bohechío appeared as equal negotiators. On that occasion, described by Bartolomé de las Casas in Historia de las Indias, Columbus successfully negotiated for tribute of food and cotton to be paid by the natives to the Spanish under his command."),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_ANACAONA_CHAPTER_HISTORY_PARA_3",		
	"The visit is described as having taken place in a friendly atmosphere. Several months later, Columbus arrived with a caravel to collect a part of the tribute. Anacaona and Bohechío had sailed briefly aboard the caravel, near today's Léogâne in the Gulf of Gonâve as his guests. At first relations between natives and Conquistadors were cordial, the natives realizing too late their lands were actually being stolen and their subjects enslaved."),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_ANACAONA_CHAPTER_HISTORY_PARA_4",		
	"Anacaona's high status was probably strengthened by elements of matrilineal descent in the Taino society. Taino caciques usually passed inheritance to the eldest children of their sisters. If their sisters had no children, then they chose among the children of their brothers, and when there were none, they fell back upon one of their own."),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_ANACAONA_CHAPTER_HISTORY_PARA_5",		
	"Anacaona became chief of Jaragua after her brother's death. Her husband Caonabo, suspected of having organized the attack on La Navidad (a Spanish settlement on north-western Hispaniola), was captured by Alonso de Ojeda and shipped to Spain, dying in a shipwreck during the journey, as many other Taino leaders died on Spanish ships away from their native lands. The Tainos, being ill-treated by the conquerors, revolted and made a long war against them."),	
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_ANACAONA_CHAPTER_HISTORY_PARA_6",		
	"In 1503 during a meeting of 80 caciques, including Anacaona, the Spanish Governor Nicolás de Ovando ordered the meeting house to be set on fire to burn them alive. Cacica Anacaona and her Taino noblemen were arrested — all accused of conspiracy for resisting occupation and executed."),		
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_ANACAONA_CHAPTER_HISTORY_PARA_7",		
	"Prior to her execution, Anacaona was offered clemency if she would give herself as concubine to one of the Spaniards which was common in the era. Standing with her fellow Tainos in solidarity, the Caribbean indigenous cacica chose execution over colluding with her Spanish enemy, her refusal cementing her legend. Anacaona remained rebellious and independent until her violent public death. Because Anacaona refused the sexual offer of the Spanish intruders while others were shot, Anacaona was executed by hanging. She was only 29 years old."),

	("en_US", "LOC_PEDIA_IMPROVEMENTS_PAGE_IMPROVEMENT_CVS_ANACAONA_UI_CHAPTER_HISTORY_PARA_1",	
	"Taino groups in the more developed islands, such as Puerto Rico, Hispaniola, and Jamaica, relied more on agriculture (farming and other jobs). Fields for important root crops, such as the staple yuca, were prepared by heaping up mounds of soil, called conucos."),
	("en_US", "LOC_PEDIA_IMPROVEMENTS_PAGE_IMPROVEMENT_CVS_ANACAONA_UI_CHAPTER_HISTORY_PARA_2",	
	"This improved soil drainage and fertility as well as delaying erosion, allowing for longer storage of crops in the ground. Less important crops such as corn were raised in simple clearings created by slash and burn technique."),
	("en_US", "LOC_PEDIA_IMPROVEMENTS_PAGE_IMPROVEMENT_CVS_ANACAONA_UI_CHAPTER_HISTORY_PARA_3",	
	"Typically, conucos were three feet high and nine feet in circumference and were arranged in rows. The primary root crop was yuca/cassava, a woody shrub cultivated for its edible and starchy tuberous root. It was planted using a coa, a kind of hoe made completely from wood. Women processed the poisonous variety of cassava by squeezing it to extract the toxic juices. Then they would grind the roots into flour for baking bread. Batata (sweet potato) was the next most important root crop.");
		
	
	
	
	
	
	
	