/*
	Localisation
	Credits: Digihuman, ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT OR REPLACE INTO LocalizedText (Language, Tag, Text)
VALUES

-----------------------------------------------
-- Leader
-----------------------------------------------	
	
	("en_US", "LOC_LEADER_CVS_ESCHER_NAME",  	"Alfred Escher"	),
	
-----------------------------------------------
-- UA
-----------------------------------------------	

	("en_US", "LOC_TRAIT_LEADER_CVS_ESCHER_UA_NAME",  	"Pioneer on the Gotthard"	),
	("en_US", "LOC_TRAIT_LEADER_CVS_ESCHER_UA_DESCRIPTION",		
	"Industrial Zones receive a standard adjacency bonus from mountains, and buildings within them provide an additional regional yield of +2 [ICON_Production] Production and +4 [ICON_Gold] Gold to Cities within 6 tiles."	),

	("en_US", "LOC_MODIFIER_CVS_ESCHER_UA_INDUSTRIAL_ADJ_MOUNTAIN",	"+{1_num} [ICON_Production] Production from the adjacent {1_Num : plural 1?Mountain; other?Mountains;}."	),

-----------------------------------------------
-- Agenda
-----------------------------------------------	

	("en_US", "LOC_AGENDA_CVS_ESCHER_NAME",		"Princeps Suisse"	),
	("en_US", "LOC_AGENDA_CVS_ESCHER_DESCRIPTION", 	"Tries to avoid wars and likes industrious Civilizations with a strong economy. Dislikes those with little production output."	),
	("en_US", "LOC_DIPLO_KUDO_LEADER_CVS_ESCHER_REASON_ANY",			  
	"(You are wealthy and productive.)"	),
	("en_US", "LOC_DIPLO_MODIFIER_CVS_ESCHER_HAPPY",		
	"Escher appreciates your economy and commends your productivity."	),
	("en_US", "LOC_DIPLO_WARNING_LEADER_CVS_ESCHER_REASON_ANY",		  
	"(Your production output is weak.)"	),
	("en_US", "LOC_DIPLO_MODIFIER_CVS_ESCHER_UNHAPPY",			 
	"Escher is displeased by your lack of productivity."	),
		
-----------------------------------------------
-- Diplos
-----------------------------------------------	

-- DOM
	("en_US", "LOC_LOADING_INFO_LEADER_CVS_ESCHER",  	
	"Trust in your ambition, Alfred Escher, great pioneer of railways, for the cantons of Switzerland call upon your leadership. Within your humble nation, you will plan wisely, using the mountainous landscape to transform industry. Remain true to your council, show kindness to smaller nations, and in turn your cantons shall find reward."  	),

-- FIRST MEET
	-- First AI Line
	("en_US", "LOC_DIPLO_FIRST_MEET_LEADER_CVS_ESCHER_ANY",		
	"Ah, a traveller? Welcome, my friend, to this most beautiful nation we call Switzerland. I am Johan Heinrich Alfred Escher vom Glas - but please, just call me Alfred." ),
	
	-- AI invitation to visit nearby City
	("en_US", "LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_CVS_ESCHER_ANY",		
	"We are close to one of my cities, as it happens. Would you care to join me? Perhaps we can discuss new business ventures."	),
	
	-- AI accepts human invitation
	("en_US", "LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_CVS_ESCHER_ANY",		
	"Excellent!"	),
	
	-- AI invitation to exchange Capital Information
	("en_US", "LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_CVS_ESCHER_ANY",		
	"I would like to propose that we share information on our nation's Capitals. It would certainly improve relations between our people, after all."	),

-- GREETINGS	
	("en_US", "LOC_DIPLO_GREETING_LEADER_CVS_ESCHER_ANY",		
	"Please, go on."	),
	
-- DELEGATION
	-- AI Accepts
	("en_US", "LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_CVS_ESCHER_ANY",		
	"Your delegation has been welcomed by the Cantons with open arms!"	),
	
	-- AI Rejects
	("en_US", "LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_CVS_ESCHER_ANY",		
	"Ah, I'm afraid I cannot agree to this for now."	),
	
	-- AI Requests
	("en_US", "LOC_DIPLO_DELEGATION_FROM_AI_LEADER_CVS_ESCHER_ANY",		
	"The Swiss government has dispatched to you a delegation bringing gifts of cheese, chocolate, and some gold for your treasury. Please accept our hospitality."	),
	
-- OPEN BORDERS
	-- AI accepts from human	
	("en_US", "LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_ESCHER_ANY",	
	"By all means, an open borders arrangement would be most beneficial."	),
	
	-- AI rejects from human	
	("en_US", "LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_ESCHER_ANY",  
	"I apologise, but I lack the inclination to accept this deal at present."	),
	
	-- AI requests from human	
	("en_US", "LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_CVS_ESCHER_ANY",      
	"Opening our borders is a great show of trust and friendship, and today I must request such a commitment from you; would you care to grant me this?"	),
	
-- DECLARE FRIENDSHIP

	-- AI accepts from human	
	("en_US", "LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_ESCHER_ANY",   
	"It pleases me greatly that out people can make this declaration!"	),
	
	-- AI rejects from human	
	("en_US", "LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_ESCHER_ANY",   
	"It is with a heavy heart that I must reject your offer at this time, but please feel free to ask again at a later date."	),
	
	-- AI Requests friendship from human	
	("en_US", "LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_CVS_ESCHER_ANY",     
	"Your nation and its people are a great inspiration and example to us, and in gratitude, I offer Switzerland's friendship to you."	),
	
	-- Human accepts AI requests, AI responds	
	("en_US", "LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_ESCHER_ANY",           
	"Wonderful, I must send the good news to the Cantons at once!"	),
	
	-- Human rejects AI requests, AI responds	
	("en_US", "LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_ESCHER_ANY",   	
	"How unfortunate, but I understand."	),

-- ALLIANCE

	-- AI Requests an alliance from human
	("en_US", "LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_CVS_ESCHER_ANY",		
	"I am rarely in a position to call those around me 'allies', but you truly stand out as someone worthy of that title."	),

-- KUDOS & WARNINGS
	
	-- AI Kudos
	("en_US", "LOC_DIPLO_KUDO_EXIT_LEADER_CVS_ESCHER_ANY",		
	"A nation is nothing if it lacks productivity - and productivity cannot be accomplished without capital to build it. You understand this well."	),
	
	-- AI Warnings
	("en_US", "LOC_DIPLO_WARNING_EXIT_LEADER_CVS_ESCHER_ANY",		
	"For all you can or have done, your people do little and your treasury is nearly empty. You set a poor example for those around you."	),
	
	-- AI warns player for border troops
	("en_US", "LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_CVS_ESCHER_ANY",		
	"I certainly hope that you are not planning on invading my nation. Please, move your troops from my borders before you make a terrible mistake."	),

-- TRADE
	
	-- AI Accepts Deal
	("en_US", "LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_CVS_ESCHER_ANY",		
	"This will do nicely, thank you."	),

	-- AI Rejects Deal
	("en_US", "LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_CVS_ESCHER_ANY",		
	"A pity that we could not come to an arrangement."	),

-- DENOUNCE
	
	-- From Human
	("en_US", "LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_CVS_ESCHER_ANY",		
	"Your words are empty and vapid. They shall not be forgotten, nor forgiven, by my people."	),
	
	-- From AI
	("en_US", "LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_CVS_ESCHER_ANY",		
	"You are unworthy of my respect, or the respect of those around you, and I have ensured the world knows as much. (Denounces You)"	),
	
-- DOW
	
	-- Human Declares War
	("en_US", "LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_CVS_ESCHER_ANY",		
	"You fool. We are not a warlike people, but the fact that our small nation stands tall should have indicated to you that we are far from helpless. That ignorance shall be your downfall."	),
	
	-- AI Declares War
	("en_US", "LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_CVS_ESCHER_ANY",		
	"Let it be known, I did not want this war. However, you have forced my hand and rendered it the only option."	), 

-- MAKE PEACE
	
	-- AI accepts from human
	("en_US", "LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_CVS_ESCHER_ANY",		
	"I agree to this. Peace is much more profitable for both of us in the long term."	),
	
	-- AI refuses human
	("en_US", "LOC_DIPLO_MAKE_PEACE_AI_REFUSE_DEAL_LEADER_CVS_ESCHER_ANY",		
	"With lives on the line, even a man without business sense could see this deal for what it is. Such a deal is unacceptable. "	),
	
	-- AI requests from human
	("en_US", "LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_CVS_ESCHER_ANY",		
	"I come to request that we lay down arms. I am sure we can both come to an agreement which would benefit us both."	),

-- DEFEAT
	
	-- AI is Defeated
	("en_US", "LOC_DIPLO_DEFEAT_FROM_AI_LEADER_CVS_ESCHER_ANY",		
	"I may fall, but Switzerland has been occupied and freed in the past. Make no mistake, we will return and prosper once again."	),

	-- Human is Defeated (will see this in hotseat)
	("en_US", "LOC_DIPLO_DEFEAT_FROM_HUMAN_LEADER_CVS_ESCHER_ANY",		
	"I may fall, but Switzerland has been occupied and freed in the past. Make no mistake, we will return and prosper once again."	),

--------------------------------------------------------------------
-- Quote and Pedia
--------------------------------------------------------------------

	("en_US", "LOC_PEDIA_LEADERS_PAGE_CVS_ESCHER_QUOTE",		
	"Fortune may favor the brave, but success favors the consistent."  	),
	
	("en_US", "LOC_PEDIA_LEADERS_PAGE_CVS_ESCHER_TITLE",		
	"Alfred Escher"),
	
	("en_US", "LOC_PEDIA_LEADERS_PAGE_CVS_ESCHER_SUBTITLE",		
	"Swiss Politician, Business Leader and Railway Pioneer"	),
	
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_ESCHER_CHAPTER_CAPSULE_BODY",		
	"With forward-planning, Escher excels in making a highly productive, and highly profitable nation."),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_ESCHER_CHAPTER_DETAILED_BODY",		
	"Swiss cities can outmanoeuvre most with the aid of allied city-states, but under Escher, it is production that will pave the way to victory. With Switzerland's ability to find reward in governance, Escher will be sure to deploy the Kantonsparlament unique building with which to support his economy and gain favor with minor civilizations. With such reliance on the fortunes of City-State diplomacy, protection will come in the form of the Reisläufer unique unit and its special promotion tree. However, it is in the shrewd placement of Industrial Zones alongside mountain ranges that Escher's empire will truly benefit. With additional regional yields of production and gold, a new city within regional range can hit the ground running and leave Escher well-positioned to compete in any victory type he so chooses."	),

	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_ESCHER_CHAPTER_HISTORY_PARA_1",		
	"Alfred Escher was a dominant figure in 19th-century Zürich politics and legislator of national prominence who, as a railway magnate, became a leading opponent of railway nationalization."),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_ESCHER_CHAPTER_HISTORY_PARA_2",		
	"Quickly rising in cantonal political affairs, Escher had by 1848 become president of the Zürich government. Elected the same year to the Nationalrat (national assembly), he was four times its president, notably during the Neuchâtel crisis with Prussia. Often a voice for moderation against the advocacy of radical measures by Jakob Stämpfli, he tempered passions in the Neuchâtel affair and urged peaceful accommodation in the controversy arising from the cession of Savoy to France in 1860."),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_ESCHER_CHAPTER_HISTORY_PARA_3",		
	"The head of a railway company, he championed private construction of railroads and opposed the nationalization program of Stämpfli. The driving force behind the construction of the Gotthard line, he helped secure the necessary German and Italian cooperation for the project and left behind a legacy as one of the most influential of all Swiss legislators.");
	
	