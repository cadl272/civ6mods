/*
	Localisation
	Authors: SailorCat
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT OR REPLACE INTO LocalizedText
		(Tag,	Language,	Text)
VALUES

-----------------------------------------------
-- Leader
-----------------------------------------------	
	
	("LOC_LEADER_CVS_KUDARAT_NAME",  "en_US",	"Kudarat"	),
	("LOC_CITY_NAME_COTABATO",		"en_US",	"Cotabato"	),
	
-----------------------------------------------
-- UA
-----------------------------------------------	

	("LOC_TRAIT_LEADER_CVS_KUDARAT_UA_NAME",  "en_US",	"Helper of the Faith"	),
	("LOC_TRAIT_LEADER_CVS_KUDARAT_UA_DESCRIPTION",	"en_US",	
	"Each level of Walls produces +0.5 [ICON_FAITH] Faith per [ICON_CITIZEN] Population and are constructed 50% faster. Gain [ICON_FAITH] Faith equal to 20% of the unit's cost when a non-civilian unit is created in a walled city. May purchase Traders with [ICON_FAITH] Faith."	),

-----------------------------------------------
-- Agenda
-----------------------------------------------	

	("LOC_AGENDA_CVS_KUDARAT_NAME",	"en_US",	
	"Men of the Lake"	),
	("LOC_AGENDA_CVS_KUDARAT_DESCRIPTION", "en_US",	
	"Likes civilizations who follow the same Religion, and wants his cities to all follow the same Religion. Hates anyone trying to spread their Religion into his cities."	),
	("LOC_DIPLO_KUDO_LEADER_CVS_KUDARAT_REASON_ANY",	"en_US",		  
	"(You follow the same religion.)"	),
	("LOC_DIPLO_MODIFIER_CVS_KUDARAT_HAPPY",	"en_US",	
	"Kudarat is pleased that you follow the same religion."	),
	("LOC_DIPLO_WARNING_LEADER_CVS_KUDARAT_REASON_ANY",	"en_US",	  
	"(You imposed religious conversion on his people.)"	),
	("LOC_DIPLO_MODIFIER_CVS_KUDARAT_UNHAPPY",		"en_US",	 
	"Kudarat is disappointed in your attempts to convert his cities to your religion."	),
		
-----------------------------------------------
-- Diplos
-----------------------------------------------	

-- DOM
	("LOC_LOADING_INFO_LEADER_CVS_KUDARAT",  "en_US",	
	"Brace yourself, Sultan Muhammad Dipatuan Kudarat, for faith and fatherland are only as enduring as those who rise in their defense. If you are to preserve that which you hold dear, your resolve must be indefatigable, your piety unwavering. Stand fast against all invaders so that the flower of your people's faith may bloom in this island paradise."  	),
	
-- FIRST MEET
	-- First AI Line
	("LOC_DIPLO_FIRST_MEET_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"These sacred lands enjoy the protection of Sultan Muhammad Dipatuan Kudarat. May God guide you, and may your grin gleam as brightly as the sea."),
	
	-- AI invitation to visit nearby City
	("LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"Here, you should chart a course for our nearest city. All of Mindanao is a pearl formed in the bosom of faith."),
	
	-- AI accepts human invitation
	("LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"It would be my pleasure."	),
	
	-- AI invitation to exchange Capital Information
	("LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"Cotabato is the heart of the Sultanate. From there, our tenets are manifest. Would you kindly direct us to your capital?"),

-- GREETINGS	
	("LOC_DIPLO_GREETING_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"Hail."	),
	
-- DELEGATION
	-- AI Accepts
	("LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"By all means."	),
	
	-- AI Rejects
	("LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"I must decline."	),
	
	-- AI Requests
	("LOC_DIPLO_DELEGATION_FROM_AI_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"Our delegation wishes to share with you a taste of the Philippines. I recommend the turon."),
	
-- OPEN BORDERS
	-- AI accepts from human	
	("LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_KUDARAT_ANY",	"en_US",	                                     
	"Proceed, but with deference."	),
	
	-- AI rejects from human	
	("LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_KUDARAT_ANY",  "en_US",	                                   
	"And invite your coreligionists to corrupt the faithful? I think not."	),
	
	-- AI requests from human	
	("LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_CVS_KUDARAT_ANY",      "en_US",	                                
	"Would you give my people leave to enter your lands?"),
	
-- DECLARE FRIENDSHIP

	-- AI accepts from human	
	("LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_KUDARAT_ANY",   "en_US",	                                   
	"Ours will be a friendship cast in stone."),
	
	-- AI rejects from human	
	("LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_KUDARAT_ANY",   "en_US",	                                   
	"I do not extend my hand so blithely, or to just anyone."),
	
	-- AI Requests friendship from human	
	("LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_CVS_KUDARAT_ANY",     "en_US",	                                 
	"Let us buoy one another in friendship. We could be as happy as a clam at high tide."	),
	
	-- Human accepts AI requests, AI responds	
	("LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_KUDARAT_ANY",   "en_US",	                                   
	"Wonderful."	),
	
	-- Human rejects AI requests, AI responds	
	("LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_KUDARAT_ANY",   "en_US",	                                   
	"What a shame."	),

-- ALLIANCE

	-- AI Requests an alliance from human
	("LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"It is not worth doing something unless you were doing something that someone, somewhere, would much rather you weren't doing. Many would wish we had not allied."	),

-- KUDOS & WARNINGS
	
	-- AI Kudos
	("LOC_DIPLO_KUDO_EXIT_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"Our rows pale before the brotherhood to be found in mutual religion. May your faith protect you."	),
	
	-- AI Warnings
	("LOC_DIPLO_WARNING_EXIT_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"Watch where your missionaries tread, or they are bound to step on a snake."),
	
	-- AI warns player for border troops
	("LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"Remove your military, else they will suffer this wisdom: Give a man a fire and he is warm for a day. Catch a man on fire and he is warm for the rest of his life."	),

-- TRADE
	
	-- AI Accepts Deal
	("LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"Satisfactory."	),

	-- AI Rejects Deal
	("LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"Hardly."	),

-- DENOUNCE
	
	-- From Human
	("LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"You have trespassed upon all that is good and holy. Your comeuppance will befit a godless wretch such as yourself."	),
	
	-- From AI
	("LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"You are a dark-blooded heathen whose comeuppance is imminent. (Denounces You)"	),
	
-- DOW
	
	-- Human Declares War
	("LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"Your ill-fated waves will do as they are wont to do: break."	),
	
	-- AI Declares War
	("LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"Enough is enough. All the strength of my Sultanate, I promise you, shall become a typhoon against you."	),
	
-- MAKE PEACE
	
	-- AI accepts from human
	("LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"A wise decision."	),
	
	-- AI refuses human
	("LOC_DIPLO_MAKE_PEACE_AI_REFUSE_DEAL_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"The time for clemency has long passed; now, there can be only retribution."	),
	
	-- AI requests from human
	("LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"Peace, not surrender. It is the difference between using a quill and using a sword."	),

-- DEFEAT
	
	-- AI is Defeated
	("LOC_DIPLO_DEFEAT_FROM_AI_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"Time and tide wait for no man, and so the sun finally sets on my watch. May those who assume my mantle never tire."	),

	-- Human is Defeated (will see this in hotseat)
	("LOC_DIPLO_DEFEAT_FROM_HUMAN_LEADER_CVS_KUDARAT_ANY",	"en_US",	
	"Time and tide wait for no man, and so the sun finally sets on my watch. May those who assume my mantle never tire."	),	

--------------------------------------------------------------------
-- Quote and Pedia
--------------------------------------------------------------------

	("LOC_PEDIA_LEADERS_PAGE_CVS_KUDARAT_QUOTE",	"en_US",	
	"You men of the Lake! Forgetting your ancient liberty, have submitted to the Castilians. Such submission is sheer stupidity."  	),
	
	("LOC_PEDIA_LEADERS_PAGE_CVS_KUDARAT_TITLE",	"en_US",	
	"Muhammad Dipatuan Kudarat"),
	
	("LOC_PEDIA_LEADERS_PAGE_CVS_KUDARAT_SUBTITLE",	"en_US",	
	"Sultan of Maguindanao"),
	
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_KUDARAT_CHAPTER_CAPSULE_BODY",	"en_US",	
	"Kudarat excels at hunkering behind religion and defensive measures."),

	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_KUDARAT_CHAPTER_DETAILED_BODY",	"en_US",	
	"Focus on obtaining a religion, and once you have, the world is your oyster. Construct walls, Kutas, and Encampments within your borders to defend against invaders both religious and military. Use your superior defenses as a rallying point from which to spread your religion."),
	
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_KUDARAT_CHAPTER_HISTORY_PARA_1",	"en_US",	
	"Sultan Dipatuan Kudarat ruled as the seventh Sultan of Maguindanao, and an adherent of Islam. His legacy is one rooted in a steadfast defense of his religion and his territory."),

	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_KUDARAT_CHAPTER_HISTORY_PARA_2",	"en_US",	
	"His reign was marked by conflicts with the Spaniards and regular antgonizing by missionaries, though it began with a contest with the neighboring Buayan Sultanate. Despite setbacks, he held his own. Soon thereafter, his ruthlessness was made plain: when one of his allies was brought low, he proceeded to wreak havoc on the force that did the ally in, and in so doing secure the Saragani territory."),

	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_KUDARAT_CHAPTER_HISTORY_PARA_3",	"en_US",	
	"Kudarat turned away Dutch offers of an alliance against the Spaniards, but would find his hand forced all the same. When the Spaniards sought to gather filipinos into settlements modeled after those in Spain, and centered around Catholicism no less, he roused them into a fierce resistance. Kudarat would not stop there; he set his forces upon these settlements."),

	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_KUDARAT_CHAPTER_HISTORY_PARA_4",	"en_US",	
	"His reprisal stirred the Spaniards into action. A serious expedition into Mindanao, meant to kill him and convert his people, struck deep. So deep, in fact, that his capital in Lamitan would fall soon thereafter. Kudarat's resolve had not weakened, however. He retreated with his men to fortifications where he could dig in. Though his defense was tenacious, his kutas were not enough to hold back the Spaniards forever. Having suffered a wound in combat, he was forced to further retreat in order to recover."),

	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_KUDARAT_CHAPTER_HISTORY_PARA_5",	"en_US",	
	"Kudarat would not be extinguished so summarily. Before long, he raised an army to harass the Spaniards who were busy dealing with his earlier rival, the Buayan Sultanate. With Kudarat's help, a Spanish incursion into Maranaos was repelled, and left history a rousing speech by the Sultan."),

	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_KUDARAT_CHAPTER_HISTORY_PARA_6",	"en_US",	
	"With a united front, Kudarat and his allies were able to leave the Spaniards no other option but to withdraw. The peace that followed was turbulent and transitory, but it secured further power for Kudarat. He became more of a force to be reckoned with."),

	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_KUDARAT_CHAPTER_HISTORY_PARA_7",	"en_US",	
	"When peace began to falter, it was mainly on religious grounds. Regular disagreements between the Muslim filipinos and Catholic missionaries eventually reached a breaking point, and an ambassador was killed. Seeking to preempt retaliation by the Spaniards, Kudarat summoned his allies for Jihad. The Spaniards were driven from the land, along with their Catholic brethren."),

	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_KUDARAT_CHAPTER_HISTORY_PARA_8",	"en_US",	
	"After ruling for over fifty years, Kudarat died of old age, a devoted Muslim and champion of his people.");