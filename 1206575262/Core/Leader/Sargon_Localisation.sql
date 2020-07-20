/*
	Localisation
	Credits: Chrisy15, ChimpanG, SailorCat
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
	
	("LOC_LEADER_CVS_SARGON_NAME",  "en_US",	"Sargon"		),
	
-----------------------------------------------
-- UA
-----------------------------------------------	

	("LOC_TRAIT_LEADER_CVS_SARGON_UA_NAME",  "en_US",	"Four Corners"	),
	("LOC_TRAIT_LEADER_CVS_SARGON_UA_DESCRIPTION",	"en_US",	
	"Cities with a Garrison construct the Sapitu unique district 50% faster. Cities on your home continent with a Sapitu receive +25% [ICON_Production] Production, while those on foreign continents receive +1 [ICON_Amenities] Amenity."),

-----------------------------------------------
-- Agenda
-----------------------------------------------	

	("LOC_AGENDA_CVS_SARGON_NAME",	"en_US",	"Neither Rival nor Equal"	),
	("LOC_AGENDA_CVS_SARGON_DESCRIPTION", "en_US",	"Respects civilizations that focus on military infrastructure and will endeavour to do the same. Thinks civilizations that do not have a powerful army are weak."	),
	("LOC_DIPLO_KUDO_LEADER_CVS_SARGON_REASON_ANY",	"en_US",		  
	"Take heart, for in fortifying your land you have followed my example. A good portent if I have ever seen one."	),
	("LOC_DIPLO_MODIFIER_CVS_SARGON_HAPPY",	"en_US",	
	"You have focused on military infrastructure."),
	("LOC_DIPLO_WARNING_LEADER_CVS_SARGON_REASON_ANY",	"en_US",	  
	"You are a fool to leave your land vulnerable to invasion. Do not be surprised when the horizon becomes a cloud of dust and death."	),
	("LOC_DIPLO_MODIFIER_CVS_SARGON_UNHAPPY",		"en_US",	 
	"You are weak."	),
		
-----------------------------------------------
-- Diplos
-----------------------------------------------	

-- DOM
	("LOC_LOADING_INFO_LEADER_CVS_SARGON",  "en_US",	
	"Indomitable Sargon of Akkad! From humble beginnings, by the sweat of your brow and the blood of your foes, it is your destiny to forge an empire that will become the golden standard. An empire the likes of which future empires will strive to model for millennia to come.  Where lesser kings would divide and conquer, you will unite and rule."),
	
-- FIRST MEET
	-- First AI Line
	("LOC_DIPLO_FIRST_MEET_LEADER_CVS_SARGON_ANY",	"en_US",	
	"Who are you to stand before Sargon the Great, Ishtar's favored, and a stranger to defeat? You would do well to kneel." ),
	
	-- AI invitation to visit nearby City
	("LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_CVS_SARGON_ANY",	"en_US",	
	"Come, my nearest staging ground is but a horizon away. Only a coincidence, I assure you."	),
	
	-- AI accepts human invitation
	("LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_CVS_SARGON_ANY",	"en_US",	
	"Let's get on with it then."	),
	
	-- AI invitation to exchange Capital Information
	("LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_CVS_SARGON_ANY",	"en_US",	
	"Allow me and my soldiers to escort you to Akkad, the core of all I have achieved, and the bastion from which my vision spreads."	),

-- GREETINGS	
	("LOC_DIPLO_GREETING_LEADER_CVS_SARGON_ANY",	"en_US",	
	"Out with it."	),
	
-- DELEGATION
	-- AI Accepts
	("LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_CVS_SARGON_ANY",	"en_US",	
	"Your tribute only delays the inevitable, but it may proceed all the same."	),
	
	-- AI Rejects
	("LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_CVS_SARGON_ANY",	"en_US",	
	"I do not have time for the pittance you call a delegation."	),
	
	-- AI Requests
	("LOC_DIPLO_DELEGATION_FROM_AI_LEADER_CVS_SARGON_ANY",	"en_US",	
	"I've dispatched an envoy bearing the latest advances in astronomy and writing. If you know what is good for you, you will accept."),
	
-- OPEN BORDERS
	-- AI accepts from human	
	("LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_SARGON_ANY",	"en_US",	                                     
	"Very well. Tread lightly as you venture into the illustrious Akkadian empire. It is mine to protect, and I have no patience for disrespect."	),
	
	-- AI rejects from human	
	("LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_SARGON_ANY",  "en_US",	                                   
	"Your kind is unwelcome in all of Akkad, Kish, and Sumer. Begone!"	),
	
	-- AI requests from human	
	("LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_CVS_SARGON_ANY",      "en_US",	                                
	"That I ask to pass through your borders is a courtesy few enjoy. Do not force my hand."	),
	
-- DECLARE FRIENDSHIP

	-- AI accepts from human	
	("LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_SARGON_ANY",   "en_US",	                                   
	"Let us strive for a legacy worth recounting--namely, an empire to inspire awe long after we are gone."	),
	
	-- AI rejects from human	
	("LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_SARGON_ANY",   "en_US",	                                   
	"I do not befriend livestock on its way to slaughter."	),
	
	-- AI Requests friendship from human	
	("LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_CVS_SARGON_ANY",     "en_US",	                                 
	"As friends, we can better realize the image of an empire united under my beneficent rule."	),
	
	-- Human accepts AI requests, AI responds	
	("LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_SARGON_ANY",   "en_US",	                                   
	"Wise decision. We shall achieve great things."	),
	
	-- Human rejects AI requests, AI responds	
	("LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_SARGON_ANY",   "en_US",	                                   
	"A regrettable mistake. Pray it is not your last."	),

-- ALLIANCE

	-- AI Requests an alliance from human
	("LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_CVS_SARGON_ANY",	"en_US",	
	"You are better off by my side than in my path."	),

-- KUDOS & WARNINGS
	
	-- AI Kudos
	("LOC_DIPLO_KUDO_EXIT_LEADER_CVS_SARGON_ANY",	"en_US",	
	"Ambition, grit, determination: traits of a strong leader. Traits you exemplify. You have done well in imitating my character."),
	
	-- AI Warnings
	("LOC_DIPLO_WARNING_EXIT_LEADER_CVS_SARGON_ANY",	"en_US",	
	"You walk the path of the craven--one with doom and obscurity on the horizon. Turn back before it is too late."	),
	
	-- AI warns player for border troops
	("LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_CVS_SARGON_ANY",	"en_US",	
	"I cannot tell whether or not the pitiful crowd on my borders is an army, but you should remove it all the same."	),

-- TRADE
	
	-- AI Accepts Deal
	("LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_CVS_SARGON_ANY",	"en_US",	
	"Sufficient."	),

	-- AI Rejects Deal
	("LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_CVS_SARGON_ANY",	"en_US",	
	"A bigger miser I have never seen."),

-- DENOUNCE
	
	-- From Human
	("LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_CVS_SARGON_ANY",	"en_US",	
	"Ishtar damn you and your blighted nation. I would sooner raze it to the ground--spoils and all--than introduce something so vile into my empire."	),
	
	-- From AI
	("LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_CVS_SARGON_ANY",	"en_US",	
	"Would that your cup-bearer poured tainted wine. The world would be all the better for it. (Denounces You)"	),
	
-- DOW
	
	-- Human Declares War
	("LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_CVS_SARGON_ANY",	"en_US",	
	"Are your people so eager for a true king they have convinced you to dash yourself against the might of my host?"	),
	
	-- AI Declares War
	("LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_CVS_SARGON_ANY",	"en_US",	
	"You shall be as Ur-Zababa and Lugal-zage-si were before you: mere footnotes in my legend."	),
	
-- MAKE PEACE
	
	-- AI accepts from human
	("LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_CVS_SARGON_ANY",	"en_US",	
	"I will relent... for a time."),
	
	-- AI refuses human
	("LOC_DIPLO_MAKE_PEACE_AI_REFUSE_DEAL_LEADER_CVS_SARGON_ANY",	"en_US",	
	"Peace? Why, when I am on the brink of adding yet another territory to my empire?"	),
	
	-- AI requests from human
	("LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_CVS_SARGON_ANY",	"en_US",	
	"I offer a brief respite. You are no doubt in dire straits."),

-- DEFEAT
	
	-- AI is Defeated
	("LOC_DIPLO_DEFEAT_FROM_AI_LEADER_CVS_SARGON_ANY",	"en_US",	
	"Though I perish, the memory of what I have achieved will live on. Long after you have been forgotten, empires will find inspiration in the legacy of Sargon."),

	-- Human is Defeated (will see this in hotseat)
	("LOC_DIPLO_DEFEAT_FROM_HUMAN_LEADER_CVS_SARGON_ANY",	"en_US",	
	"Though I perish, the memory of what I have achieved will live on. Long after you have been forgotten, empires will find inspiration in the legacy of Sargon."	),	

--------------------------------------------------------------------
-- Quote and Pedia
--------------------------------------------------------------------

	("LOC_PEDIA_LEADERS_PAGE_CVS_SARGON_QUOTE",	"en_US",	
	"The black-headed peoples I ruled, I governed; mighty mountains with axes of bronze I destroyed."  	),
	
	("LOC_PEDIA_LEADERS_PAGE_CVS_SARGON_TITLE",	"en_US",	
	"Sargon the Great"),
	
	("LOC_PEDIA_LEADERS_PAGE_CVS_SARGON_SUBTITLE",	"en_US",	
	"King of Akkad, Kish and Sumer"),
	
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_SARGON_CHAPTER_CAPSULE_BODY",	"en_US",	
	"It said that bravery may take one to the most dangerous of places, but if that place is Sargon's Akkad, only overwhelming firepower may see you through. With Sargon's ability to out-produce even the most productive of enemies, it would be a mistake to push a man to war if war is not only something he has perfected, but pioneered."),
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_SARGON_CHAPTER_DETAILED_BODY",	"en_US",	
	"Akkadian cities can quickly become productive with a military focus, and may expand their empire rapidly, if not by capacity for production, then certainly by conquest. Akkad may take an early advantage on the battlefield with the Nas Qasti, a unique unit designed to wrought havoc on enemy armies with their bonuses to adjacent Melee units. Furthermore, with the Amenity bonuses they receive from both the Civilization's unique Sapitu district as well as Sargon's unique ability, the Akkadians are in a strong position for an early push toward domination that will set them up as one of the strongest military forces all the way to the later eras of the game, providing there is anybody left to conquer."),

	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_SARGON_CHAPTER_HISTORY_PARA_1",	"en_US",	
	"Sargon of Akkad (Sharru-kin = 'legitimate king', possibly a title he took on gaining power) defeated and captured Lugal-zage-si in the Battle of Uruk and conquered his empire. The earliest records in the Akkadian language date to the time of Sargon. Sargon was claimed to be the son of La'ibum or Itti-Bel, a humble gardener, and possibly a hierodule, or priestess to Ishtar or Inanna."),
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_SARGON_CHAPTER_HISTORY_PARA_2",	"en_US",	
	"Originally a cupbearer (Rabshakeh) to a king of Kish with a Semitic name, Ur-Zababa, Sargon thus became a gardener, responsible for the task of clearing out irrigation canals. This gave him access to a disciplined corps of workers, who also may have served as his first soldiers. Displacing Ur-Zababa, Sargon was crowned king, and he entered upon a career of foreign conquest. Four times he invaded Syria and Canaan, and he spent three years thoroughly subduing the countries of 'the west' to unite them with Mesopotamia into a single empire."),
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_SARGON_CHAPTER_HISTORY_PARA_3",	"en_US",	
	"However, Sargon took this process further, conquering many of the surrounding regions to create an empire that reached westward as far as the Mediterranean Sea and perhaps Cyprus (Kaptara); northward as far as the mountains (a later Hittite text asserts he fought the Hattian king Nurdaggal of Burushanda, well into Anatolia); eastward over Elam; and as far south as Magan (Oman) -- a region over which he reigned for purportedly 56 years, though only four 'year-names' survive. He consolidated his dominion over his territories by replacing the earlier opposing rulers with noble citizens of Akkad, his native city where loyalty would thus be ensured."),
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_SARGON_CHAPTER_HISTORY_PARA_4",	"en_US",	
	"Trade extended from the silver mines of Anatolia to the lapis lazuli mines in modern Afghanistan, the cedars of Lebanon and the copper of Magan. This consolidation of the city-states of Sumer and Akkad reflected the growing economic and political power of Mesopotamia. The empire's breadbasket was the rain-fed agricultural system of Assyria and a chain of fortresses was built to control the imperial wheat production."),
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_SARGON_CHAPTER_HISTORY_PARA_5",	"en_US",	
	"Images of Sargon were erected on the shores of the Mediterranean, in token of his victories, and cities and palaces were built at home with the spoils of the conquered lands. Elam and the northern part of Mesopotamia (Assyria/Subartu) were also subjugated, and rebellions in Sumer were put down. Contract tablets have been found dated in the years of the campaigns against Canaan and against Sarlak, king of Gutium. He also boasted of having subjugated the 'four quarters' -- the lands surrounding Akkad to the north (Assyria), the south (Sumer), the east (Elam), and the west (Martu). Some of the earliest historiographic texts suggest he rebuilt the city of Babylon (Bab-ilu) in its new location near Akkad."),
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_SARGON_CHAPTER_HISTORY_PARA_6",	"en_US",	
	"Sargon, throughout his long life, showed special deference to the Sumerian deities, particularly Inanna (Ishtar), his patroness, and Zababa, the warrior god of Kish. He called himself 'The anointed priest of Anu' and 'the great ensi of Enlil' and his daughter, Enheduanna, was installed as priestess to Nanna at the temple in Ur. Troubles multiplied toward the end of his reign.");