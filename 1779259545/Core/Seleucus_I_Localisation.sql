/*
	Localisation
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT OR REPLACE INTO LocalizedText (Language, Tag, Text)
VALUES

-----------------------------------------------
-- Leader
-----------------------------------------------	
	
	("en_US", "LOC_LEADER_CVS_SELEUCUS_I_NAME",  	"Seleucus I"	),
	
-----------------------------------------------
-- UA
-----------------------------------------------	

	("en_US", "LOC_TRAIT_LEADER_CVS_SELEUCUS_I_UA_NAME",  			"Wars of the Diadochi"	),
	("en_US", "LOC_TRAIT_LEADER_CVS_SELEUCUS_I_UA_DESCRIPTION",		"Encampment Buildings provide +1 [ICON_AMENITIES] Amenity and [ICON_GREATGENERAL] Great Generals can use their retirement ability an additional time. Gains access to the Elephantarchia unique unit."),

	-- Great Person Replacement for Sun Tzu
	("en_US", "LOC_GREAT_PERSON_INDIVIDUAL_CVS_SCIPIO_AFRICANUS_NAME",  	"Scipio Africanus"	),
	("en_US", "LOC_GREATPERSON_CVS_SCIPIO_AFRICANUS_ACTIVE",				"Instantly creates a Catapult unit"	),

-----------------------------------------------
-- UU
-----------------------------------------------

	("en_US", "LOC_UNIT_CVS_SELEUCUS_I_UU_NAME",			"Elephantarchia"	),
	("en_US", "LOC_UNIT_CVS_SELEUCUS_I_UU_DESCRIPTION",		"A heavy cavalry unit unique to Seleucid. Costs more [ICON_GOLD] Gold to maintain and has less [ICON_MOVEMENT] Movement than the Knight it replaces, but is stronger when defending and available earlier with the Military Training civic. Deals full damage to city walls and earns [ICON_GREATGENERAL] Great General Points from eliminating enemy units."	),

	("en_US", "LOC_MODIFIER_CVS_SELEUCUS_I_UU_DEFENDING_DESCRIPTION",  	"+{1_Amount} Combat Strength when defending"	),

-----------------------------------------------
-- Agenda
-----------------------------------------------	

	("en_US", "LOC_AGENDA_CVS_SELEUCUS_I_NAME",		"Hellenic Legacy"	),
	("en_US", "LOC_AGENDA_CVS_SELEUCUS_I_DESCRIPTION", 	"Respects civilizations that have a high income that invest in military infrastructure. Thinks civilizations with large armies that avoid war are weak."	),
	("en_US", "LOC_DIPLO_KUDO_LEADER_CVS_SELEUCUS_I_REASON_ANY",			  
	"(You have a high income and focus on military infrastructure.)"	),
	("en_US", "LOC_DIPLO_MODIFIER_CVS_SELEUCUS_I_HAPPY",		
	"Seleucus I is pleased that you have many Barracks or Stables"	),
	("en_US", "LOC_DIPLO_MODIFIER_CVS_SELEUCUS_I_HAPPY_2",		
	"Seleucus I is pleased that you have many Armories"	),
	("en_US", "LOC_DIPLO_MODIFIER_CVS_SELEUCUS_I_HAPPY_3",		
	"Seleucus I is pleased that you have many Military Academies"	),
	("en_US", "LOC_DIPLO_WARNING_LEADER_CVS_SELEUCUS_I_REASON_ANY",		  
	"(You have a large army but neglect warfare.)"	),
	("en_US", "LOC_DIPLO_MODIFIER_CVS_SELEUCUS_I_UNHAPPY",		 
	"Selecus I is disappointed that your impressive army is not being used to conquer"	),
		
-----------------------------------------------
-- Diplos
-----------------------------------------------	

-- DOM
	("en_US", "LOC_LOADING_INFO_LEADER_CVS_SELEUCUS_I",  	
	"In a world of darkness, there are but few commanders strong enough to boldly tend the flame of Hellenic conquest, Seleucus Nicator. Keep your generals poised, your armies well-maintained, and bring forth a new dawn of prosperity for Hellenism in the East. Your legacy awaits."  ),

-- FIRST MEET
	-- First AI Line
	("en_US", "LOC_DIPLO_FIRST_MEET_LEADER_CVS_SELEUCUS_I_ANY",		
	"Greetings, I am Seleucus Nicator, Basileus of the Seleucid Empire. Treat me with respect, and you shall have mine. Now tell me, where do you hail from?" ),
	
	-- AI invitation to visit nearby City
	("en_US", "LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_CVS_SELEUCUS_I_ANY",		
	"I'd like to extend a personal invitation to visit our city nearby."	),
	
	-- AI accepts human invitation
	("en_US", "LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_CVS_SELEUCUS_I_ANY",		
	"Very well."	),
	
	-- AI invitation to exchange Capital Information
	("en_US", "LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_CVS_SELEUCUS_I_ANY",		
	"An empire's capital is gauged not for its breadth, but by the height of its vision. Let us exchange information on our Capitals and forge a better understanding of one another."	),

-- GREETINGS	
	("en_US", "LOC_DIPLO_GREETING_LEADER_CVS_SELEUCUS_I_ANY",		
	"Speak your mind."	),
	
-- DELEGATION
	-- AI Accepts
	("en_US", "LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_CVS_SELEUCUS_I_ANY",		
	"Very well. They will be treated with the same respect you have shown me."	),
	
	-- AI Rejects
	("en_US", "LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_CVS_SELEUCUS_I_ANY",		
	"I think not."	),
	
	-- AI Requests
	("en_US", "LOC_DIPLO_DELEGATION_FROM_AI_LEADER_CVS_SELEUCUS_I_ANY",		
	"I have sent a delegation of minted Silver and coin as a gift. It should arrive with you shortly."	),
	
-- OPEN BORDERS
	-- AI accepts from human	
	("en_US", "LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_SELEUCUS_I_ANY",	                                   
	"Very well, but do not mistake my kindness for weakness."	),
	
	-- AI rejects from human	
	("en_US", "LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_SELEUCUS_I_ANY",  	                                   
	"I live by choice, not by chance and you have not given me enough reason to trust your intentions."	),
	
	-- AI requests from human	
	("en_US", "LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_CVS_SELEUCUS_I_ANY",      	                                
	"My soldiers require safe passage through your lands. Can I count on you to provide this?"	),
	
-- DECLARE FRIENDSHIP

	-- AI accepts from human	
	("en_US", "LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_SELEUCUS_I_ANY",   	                                   
	"We have accord."	),
	
	-- AI rejects from human	
	("en_US", "LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_SELEUCUS_I_ANY",   	                                   
	"I cannot, for adversaries are as likely to be found in close confidants as they are on the battlefield."	),
	
	-- AI Requests friendship from human	
	("en_US", "LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_CVS_SELEUCUS_I_ANY",     	                                 
	"We are all drawn to those whose demons play well with ours. I extend my hand in friendship."	),
	
	-- Human accepts AI requests, AI responds	
	("en_US", "LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_SELEUCUS_I_ANY",   	                                   
	"Excellent."	),
	
	-- Human rejects AI requests, AI responds	
	("en_US", "LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_SELEUCUS_I_ANY",   	                                   
	"Arrogance seldom goes forgotten."	),

-- ALLIANCE

	-- AI Requests an alliance from human
	("en_US", "LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_CVS_SELEUCUS_I_ANY",		
	"You demonstrate a fire inside that inspires soldiers to follow you into hell itself. For this I offer an alliance with Seleucid."	),

-- KUDOS & WARNINGS
	
	-- AI Kudos
	("en_US", "LOC_DIPLO_KUDO_EXIT_LEADER_CVS_SELEUCUS_I_ANY",		
	"The battlefield is a symphony. When you are on it, you are in perfect rhythm with your environment. Wouldn't you agree?"	),
	
	-- AI Warnings
	("en_US", "LOC_DIPLO_WARNING_EXIT_LEADER_CVS_SELEUCUS_I_ANY",		
	"There is no harm in diplomacy, but when the pen fails, make no mistake, I will be ready with the sword."	),
	
	-- AI warns player for border troops
	("en_US", "LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_CVS_SELEUCUS_I_ANY",		
	"When threats can no longer be contained by borders, one must prepare to march an army against it. I'd suggest you move along."	),

-- TRADE
	
	-- AI Accepts Deal
	("en_US", "LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_CVS_SELEUCUS_I_ANY",		
	"This will do."	),

	-- AI Rejects Deal
	("en_US", "LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_CVS_SELEUCUS_I_ANY",		
	"I don't have time for games. Come back with a better offer, or don't come back at all."	),

-- DENOUNCE
	
	-- From Human
	("en_US", "LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_CVS_SELEUCUS_I_ANY",		
	"It would serve you well not to underestimate an an old general in a profession where men usually die young."	),
	
	-- From AI
	("en_US", "LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_CVS_SELEUCUS_I_ANY",		
	"A word to the wise, tempt not the more experienced warrior to draw his sword. (Denounces You)"	),
	
-- DOW
	
	-- Human Declares War
	("en_US", "LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_CVS_SELEUCUS_I_ANY",		
	"So be it. To the dust we shall return."	),
	
	-- AI Declares War
	("en_US", "LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_CVS_SELEUCUS_I_ANY",		
	"This isn't personal. This is war, for what I want cannot be purchased. I will attempt to take your territory by force, and you will try to stop me. Arm your men; I'll be at your gates by nightfall."	),
	
-- MAKE PEACE
	
	-- AI accepts from human
	("en_US", "LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_CVS_SELEUCUS_I_ANY",		
	"Great is the guilt of an unnecessary war. I can agree to this."	),
	
	-- AI refuses human
	("en_US", "LOC_DIPLO_MAKE_PEACE_AI_REFUSE_DEAL_LEADER_CVS_SELEUCUS_I_ANY",		
	"Peace? Go stand in the ashes of your dead and ask them if peace is still an option. Their silence is your answer."	),
	
	-- AI requests from human
	("en_US", "LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_CVS_SELEUCUS_I_ANY",		
	"Sometimes we can overexert ourselves in war, only to discover that its purpose all along was peace. Don't you think it's time we called a truce?"	),

-- DEFEAT
	
	-- AI is Defeated
	("en_US", "LOC_DIPLO_DEFEAT_FROM_AI_LEADER_CVS_SELEUCUS_I_ANY",		
	"You fought with honor and intelligence. I owe you my respect, for at last I have found a worthy successor to rule over my kingdom. I am finally at peace. Go ahead. Put me to the sword and finish this..."	),

	-- Human is Defeated (will see this in hotseat)
	("en_US", "LOC_DIPLO_DEFEAT_FROM_HUMAN_LEADER_CVS_SELEUCUS_I_ANY",		
	"You fought with honor and intelligence. I owe you my respect, for at last I have found a worthy successor to rule over my kingdom. I am finally at peace. Go ahead. Put me to the sword and finish this..."	),	

--------------------------------------------------------------------
-- Quote and Pedia
--------------------------------------------------------------------

	("en_US", "LOC_PEDIA_LEADERS_PAGE_CVS_SELEUCUS_I_QUOTE",		
	"Fight until you no longer need to introduce yourself."  ),
	
	("en_US", "LOC_PEDIA_LEADERS_PAGE_CVS_SELEUCUS_I_TITLE",		
	"Seleucus I Nicator"),
	
	("en_US", "LOC_PEDIA_LEADERS_PAGE_CVS_SELEUCUS_I_SUBTITLE",		
	"Basileus of the Seleucid Empire"),
	
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_SELEUCUS_I_CHAPTER_CAPSULE_BODY",		
	"Under Seleucus I, expansion through conquest is the order of the day, every day."),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_SELEUCUS_I_CHAPTER_DETAILED_BODY",		
	"The Seleucid army is never one to be taken lightly. With their ability to build large cities rapidly, they are in a strong position to take advantage of well-placed infrastructure suitable for most victory conditions. Cities with an Agora gain an early boost to city growth with their [ICON_Food] Food bonus on outgoing Domestic [ICON_TradeRoute] Trade Routes. Agoras will also benefit from investment in infrastructure with [ICON_Gold] Gold bonuses from adjacent Farms and Pastures. This means they can address shortfalls quickly and efficiently while simultaneously maintaining a strong military, which includes the Argyraspides unique unit that provides benefits from strong positional tactics. Under Seleucis I, Seleucid becomes a war machine. With his Elephantarchia unit's ability to deal full damage to city walls, and [ICON_GreatGeneral] Great Generals able to use their retirement ability twice, capturing cities will be a priority for Seleucus I. With [ICON_Amenities] Amenity bonuses in military buildings stemming revolt from constant warfare, Seleucid should look to extend their territory like a fine-tuned machine."	),

	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_SELEUCUS_I_CHAPTER_HISTORY_PARA_1",		
	"Despite not receiving his share of the fallen king’s empire until several years later, Seleucus I Nicator was one of the more capable of the successors to the kingdom of Alexander the Great upon his death in 323 BCE. Seleucus and his descendants established what became known as the Seleucid Empire which lasted nearly 250 years."),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_SELEUCUS_I_CHAPTER_HISTORY_PARA_2",		
	"As with the other successors to Alexander, Seleucus (358 – 281 BCE) was the son of a Macedonian nobleman, one of King Phillip II’s generals. While little else of his family is known, historians do speak of a dream his mother had in which he was fathered not by Antiochus but by the Greek god Apollo."),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_SELEUCUS_I_CHAPTER_HISTORY_PARA_3",		
	"After the death of Alexander, Ptolemy led the fight to have the empire divided among the surviving generals. the Wars of Diadochi or Wars of Successors began. The alliances that formed after the divide were tenuous at best, and the war would endure for another 50 years."),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_SELEUCUS_I_CHAPTER_HISTORY_PARA_4",		
	"The reason for Ptolemy’s desire to divide the empire was a selfish one, for he achieved a long time goal and acquired Egypt. While he proved to be a capable “pharaoh,” one of his first acts was to kidnap the body of Alexander and bring him to Egypt.  Perdiccos, who saw himself as the true successor to Alexander, had planned to ship the king’s body to Macedonia where a tomb was being constructed; however, Ptolemy stole the body as it arrived in Damascus. This action led to an immediate and lengthy war between Peridiccos and Ptolemy. Although he served as an officer under Perdiccos and at first sided with him, Seleucus turned against him and aligned himself with Ptolemy. Some historians even believe he took part in Peridiccos’ assassination.   As a reward for his assistance, Seleucus was named governor of Babylon by Antipater."),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_SELEUCUS_I_CHAPTER_HISTORY_PARA_5",		
	"Because of jealousy and ambition among the other successors, Seleucus was unable to maintain his province’s borders, and when Antigonos the One-Eyed invaded Babylon, Seleucus fled to Egypt in 316 BCE, seeking assistance and refuge from Ptolemy. In 312 BCE, and with the assistance of Ptolemy, Cassander and Lysimander, Seleucus was able to defeat Antigonos in the Battle of Gaza and regain his lost territory."),	
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_SELEUCUS_I_CHAPTER_HISTORY_PARA_6",		
	"Over the next few years, he assisted in the defeat and death of Antigonos at the Battle of Ipsus in 301 BCE, expanding his empire into Syria. Later, he captured the son of Antigonos, Demetrios, and held him prisoner until Demetrios’ death in 285 BCE. Likewise, Seleucus proved himself to be a capable general and strategist in his own right; he expanded his own territory into Asia Minor and India, making peace and securing his southern border with the Indian ruler Chandraguta. He built the cities of Antioch (his new capital) and Seleucia located on the Tigris River. At the Battle of Corupedium, he defeated and killed Lysimachos, setting his eyes on Macedonia; however, he never succeeded in his conquest, dying in his attempt, killed by the son of his former ally, Ptolemy, who had wanted Macedonia for himself.  Seleucus’s memory would survive long after him, for his family established an empire that would live for generations to come."),
	
	("en_US", "LOC_PEDIA_UNITS_PAGE_UNIT_CVS_SELEUCUS_I_UU_CHAPTER_HISTORY_PARA_1",  	
	"The successors to Alexander's empire, the Diadochi, used hundreds of Indian elephants in their wars, with the Seleucid Empire being particularly notable for their use of the animals, still being largely brought from India. Indeed, the Seleucid–Mauryan war of 305-303 BC ended with the Seleucids ceding vast eastern territories in exchange for 500 war elephants - a small part of the Mauryan forces, which included up to 9000 elephants by some accounts."),
	("en_US", "LOC_PEDIA_UNITS_PAGE_UNIT_CVS_SELEUCUS_I_UU_CHAPTER_HISTORY_PARA_2",  	
	"The Seleucids put their new elephants to good use at the Battle of Ipsus four years later, where they blocked the return of the victorious Antigonid cavalry, allowing the latter's phalanx to be isolated and defeated. Later in its history, the Seleucid Empire used elephants in its efforts to crush the Maccabean Revolt in Judea. The elephants were terrifying to the lighter-armed Jewish warriors, and the youngest of the Hasmonean brothers, Eleazar Avaran, famously defeated one of the creatures in the Battle of Beth Zechariah, sticking a spear under the belly of an elephant he mistakenly believed to be carrying Emperor Antiochus V Eupator, killing the elephant at the cost of Eleazar's own life.");
	
	
	
	
	
	