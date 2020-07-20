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
	
	("en_US", "LOC_LEADER_CVS_JOSE_RIZAL_NAME",  	"Jose Rizal"	),
	
-----------------------------------------------
-- UA
-----------------------------------------------	

	("en_US", "LOC_TRAIT_LEADER_CVS_JOSE_RIZAL_UA_NAME",  	"Illustrados"	),
	("en_US", "LOC_TRAIT_LEADER_CVS_JOSE_RIZAL_UA_DESCRIPTION",		
	"Theater Square buildings in founded cities provide +1 [ICON_GREATPERSON] Great Person Points per turn for [ICON_GREATWRITER] Writers, [ICON_GREATARTIST] Artists, and [ICON_GREATMUSICIAN] Musicians respectively, and gain +1 Slot for Great Works of their respective type."),

-----------------------------------------------
-- Agenda
-----------------------------------------------	

	("en_US", "LOC_AGENDA_CVS_JOSE_RIZAL_NAME",			"Propaganda Movement"	),
	("en_US", "LOC_AGENDA_CVS_JOSE_RIZAL_DESCRIPTION", 	"Admires civilizations with high culture output and happy citizens. Dislikes civilizations at war on his continent."	),

	("en_US", "LOC_DIPLO_KUDO_LEADER_CVS_JOSE_RIZAL_REASON_ANY",	"(You have high culture output and a happy populace.)"	),
	("en_US", "LOC_DIPLO_MODIFIER_CVS_JOSE_RIZAL_HAPPY",			"Rizal is happy that you have a high culture output and a happy populace"	),
	("en_US", "LOC_DIPLO_WARNING_LEADER_CVS_JOSE_RIZAL_REASON_ANY",	"(You have been at war on his home continent.)"	),
	("en_US", "LOC_DIPLO_MODIFIER_CVS_JOSE_RIZAL_UNHAPPY",			"Rizal is disappointed that you have been at war on his continent"	),
		
-----------------------------------------------
-- DOM
-----------------------------------------------	
	
	("en_US", "LOC_LOADING_INFO_LEADER_CVS_JOSE_RIZAL",  	
	"Jose Rizal, national hero of the Philippines, the time has come to write your chapter into the pages of history. Remain steadfast in your cultured ideals and your people will flourish on these glistening shores. Make it your life's work to ensure that your legacy forever shapes the course of Filipino history, for while heroes may be remembered, legends will never die."  	),
	
-----------------------------------------------
-- FIRST MEET
-----------------------------------------------	

	-- First AI Line
	("en_US", "LOC_DIPLO_FIRST_MEET_LEADER_CVS_JOSE_RIZAL_ANY",	
	"Welcome to the Philippines, kaibigan. I am Jose Rizal. It is a pleasure to meet you." ),
	
	-- AI invitation to visit nearby City
	("en_US", "LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_CVS_JOSE_RIZAL_ANY",		
	"I would like to extend to you an invitation to visit our nearby city. Come, enjoy the culture and fine works of my people."	),
	
	-- AI accepts human invitation
	("en_US", "LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_CVS_JOSE_RIZAL_ANY",		
	"It would be my pleasure."	),
	
	-- AI invitation to exchange Capital Information
	("en_US", "LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_CVS_JOSE_RIZAL_ANY",		
	"It seems we have both travelled far; let us exchange information about our capitals. Please, tell me of your people and their ideals."	),

-----------------------------------------------
-- GREETINGS
-----------------------------------------------	

	("en_US", "LOC_DIPLO_GREETING_LEADER_CVS_JOSE_RIZAL_ANY",		
	"How may I help you?"	),
	
-----------------------------------------------
-- DELEGATION
-----------------------------------------------

	-- AI Accepts
	("en_US", "LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_CVS_JOSE_RIZAL_ANY",		
	"Why, thank you. We needn't require gifts for a comfortable exchange, but we are truly humbled by your generosity."	),
	
	-- AI Rejects
	("en_US", "LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_CVS_JOSE_RIZAL_ANY",		
	"I'm afraid I cannot accept this."	),
	
	-- AI Requests
	("en_US", "LOC_DIPLO_DELEGATION_FROM_AI_LEADER_CVS_JOSE_RIZAL_ANY",		
	"I have sent a trade delegation with gifts courtesy of the fine people of the Philippines: exquisite coffee beans, first-rate tobacco leaves, and the finest sugar you've ever tasted. I hope you find them to your liking."	),
	
-----------------------------------------------
-- OPEN BORDERS
-----------------------------------------------

	-- AI accepts from human	
	("en_US", "LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_JOSE_RIZAL_ANY",		                                     
	"Very well."	),
	
	-- AI rejects from human	
	("en_US", "LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_JOSE_RIZAL_ANY",  	                                   
	"I'm afraid I cannot allow that at this time, for the safety of my people."	),
	
	-- AI requests from human	
	("en_US", "LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_CVS_JOSE_RIZAL_ANY",      	                                
	"My units must pass through your territory and I humbly request your permission to allow them safe passage."	),
	
-----------------------------------------------
-- DECLARE FRIENDSHIP
-----------------------------------------------

	-- AI accepts from human	
	("en_US", "LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_JOSE_RIZAL_ANY",   	                                   
	"I would be happy to welcome your friendship."	),
	
	-- AI rejects from human	
	("en_US", "LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_JOSE_RIZAL_ANY",   	                                   
	"I cannot, for no sweet fruit comes from a bitter seed."	),
	
	-- AI Requests friendship from human	
	("en_US", "LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_CVS_JOSE_RIZAL_ANY",     	                                 
	"You demonstrate qualities of a great and noble leader. I offer you my hand in friendship."	),
	
	-- Human accepts AI requests, AI responds	
	("en_US", "LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_JOSE_RIZAL_ANY",   	                                   
	"Thank you, friend."	),
	
	-- Human rejects AI requests, AI responds	
	("en_US", "LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_JOSE_RIZAL_ANY",   	                                   
	"It is a useless life that is not consecrated to a great ideal. Like a stone wasted on the field without becoming part of any edifice."	),

-----------------------------------------------
-- ALLIANCE
-----------------------------------------------

	-- AI Requests an alliance from human
	("en_US", "LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_CVS_JOSE_RIZAL_ANY",		
	"To foretell the destiny of a nation, it is necessary to open a book that tells of her past. Let us form an alliance and write a new chapter in our history."	),

-----------------------------------------------
-- KUDOS & WARNINGS
-----------------------------------------------
	
	-- AI Kudos
	("en_US", "LOC_DIPLO_KUDO_EXIT_LEADER_CVS_JOSE_RIZAL_ANY",		
	"Accomplishing great things requires vision, foresight, and noble ideals. I commend your leadership."	),
	
	-- AI Warnings
	("en_US", "LOC_DIPLO_WARNING_EXIT_LEADER_CVS_JOSE_RIZAL_ANY",		
	"Patriotism and sacrificing for the good of one's own country means nothing if one has the intrepidity of a bull."	),
	
	-- AI warns player for border troops
	("en_US", "LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_CVS_JOSE_RIZAL_ANY",		
	"If your troops need passage through our lands, you need only ask. Alas, without invitation, I must ask you to remove them from our borders."	),

-----------------------------------------------
-- TRADE
-----------------------------------------------
	
	-- AI Accepts Deal
	("en_US", "LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_CVS_JOSE_RIZAL_ANY",		
	"This deal serves us both well. I accept."	),

	-- AI Rejects Deal
	("en_US", "LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_CVS_JOSE_RIZAL_ANY",		
	"How disappointing."	),

-----------------------------------------------
-- DENOUNCE
-----------------------------------------------
	
	-- From Human
	("en_US", "LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_CVS_JOSE_RIZAL_ANY",		
	"At long last an enemy makes themselves known. How your mask has fallen; I should have expected as much from you."	),
	
	-- From AI
	("en_US", "LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_CVS_JOSE_RIZAL_ANY",		
	"To be happy does not mean to indulge in foolishness. (Denounces You)"	),
	
-----------------------------------------------
-- DOW
-----------------------------------------------
	
	-- Human Declares War
	("en_US", "LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_CVS_JOSE_RIZAL_ANY",		
	"I've seen revolutions rise from the written word, and enemies fall by the sword. The Philippines will not succumb before the foreigner."	),
	
	-- AI Declares War
	("en_US", "LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_CVS_JOSE_RIZAL_ANY",		
	"The tyranny of some is possible only through the cowardice of others. The world has suffered your insolence long enough and you must be stopped."	),

-----------------------------------------------	
-- MAKE PEACE
-----------------------------------------------
	
	-- AI accepts from human
	("en_US", "LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_CVS_JOSE_RIZAL_ANY",		
	"Those who do not know how to look back at where they came from will never reach their destination. It seems we have an accord, for now."	),
	
	-- AI refuses human
	("en_US", "LOC_DIPLO_MAKE_PEACE_AI_REFUSE_DEAL_LEADER_CVS_JOSE_RIZAL_ANY",		
	"The glory of saving a country is not for those that have contributed to its ruin."	),
	
	-- AI requests from human
	("en_US", "LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_CVS_JOSE_RIZAL_ANY",		
	"Liberty will not be secured at the sword's point. Let there be peace between us, for the sake of our people."	),

-----------------------------------------------
-- DEFEAT
-----------------------------------------------
	
	-- AI is Defeated
	("en_US", "LOC_DIPLO_DEFEAT_FROM_AI_LEADER_CVS_JOSE_RIZAL_ANY",		
	"And so I am to die without seeing dawn's light shining on my country. Rest assured, my people will welcome it for me and they will never forget those who fell during the night."	),

	-- Human is Defeated (will see this in hotseat)
	("en_US", "LOC_DIPLO_DEFEAT_FROM_HUMAN_LEADER_CVS_JOSE_RIZAL_ANY",		
	"And so I am to die without seeing dawn's light shining on my country. Rest assured, my people will welcome it for me and they will never forget those who fell during the night."	),	

--------------------------------------------------------------------
-- Quote and Pedia
--------------------------------------------------------------------

	("en_US", "LOC_PEDIA_LEADERS_PAGE_CVS_JOSE_RIZAL_QUOTE",		
	"One only dies once, and if one does not die well, a good opportunity is lost and will not present itself again."  	),
	
	("en_US", "LOC_PEDIA_LEADERS_PAGE_CVS_JOSE_RIZAL_TITLE",		
	"Jose Rizal"),
	
	("en_US", "LOC_PEDIA_LEADERS_PAGE_CVS_JOSE_RIZAL_SUBTITLE",		
	"National Hero"),
	
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_JOSE_RIZAL_CHAPTER_CAPSULE_BODY",		
	"While the Philippines offers the kind of flexibility to set up for any victory type, under Rizal, a Cultural Victory practically writes itself."),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_JOSE_RIZAL_CHAPTER_DETAILED_BODY",		
	"Taking advantage of fruitful bonuses to resources that comes with the Philippines, Rizal has an opportunity to find powerful locations to build Theater Squares whose buildings provide additional Great Writer, Artist, and Musican points with which to fill his additional Writing, Art, and Musician slots found in Theater district buildings. Nominally a trading powerhouse, the Philippines under Jose Rizal are poised to write their own path toward a Cultural victory."),	
	
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_JOSE_RIZAL_CHAPTER_HISTORY_PARA_1",		
	"Jose Rizal was a Filipino nationalist and polymath active during the tail end of the Spanish colonial period of the Philippines. An ophthalmologist by profession, Rizal became a writer and a key member of the Filipino Propaganda Movement which advocated political reforms for the colony under Spain."),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_JOSE_RIZAL_CHAPTER_HISTORY_PARA_2",		
	"He was executed by the Spanish colonial government for the crime of rebellion after his writings in part inspired the outbreak of the Philippine Revolution. Though he was not actively involved in its planning or conduct, he ultimately approved of the movement's goals, which eventually led to Philippine independence."),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_JOSE_RIZAL_CHAPTER_HISTORY_PARA_3",		
	"He is widely considered one of the greatest heroes of the Philippines and has been recommended to be so honored by an officially empaneled National Heroes Committee. However, no law, executive order, or proclamation has been enacted or issued officially proclaiming any Filipino historical figure as a national hero. He was the author of the novels 'Noli Me Tángere' and 'El filibusterismo,'' and a number of poems and essays.");
	