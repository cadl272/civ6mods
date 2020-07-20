/*
	Localisation
	Credits: ChimpanG, Seacatlad
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
	
	("LOC_LEADER_CVS_ENHEDUANNA_NAME",  "en_US",	"Enheduanna"	),
	
-----------------------------------------------
-- UA
-----------------------------------------------	

	("LOC_TRAIT_LEADER_CVS_ENHEDUANNA_UA_NAME",  "en_US",	"Guided by Ishtar"	),
	("LOC_TRAIT_LEADER_CVS_ENHEDUANNA_UA_DESCRIPTION",	"en_US",	
	"[ICON_GreatProphet] Great Prophet Points from District Projects also contribute towards [ICON_GreatWriter] Great Writers, and [ICON_GreatWork_Writing] Great Works of Writing produce +2 [ICON_Faith] Faith. Holy Sites Buildings receive a Slot for a [ICON_GreatWork_Writing] Great Work of Writing, and your Holy Sites provide an [ICON_Amenities] Amenity in their City."),

-----------------------------------------------
-- Agenda
-----------------------------------------------	

	("LOC_AGENDA_CVS_ENHEDUANNA_NAME",	"en_US",	"En Priestess"	),
	("LOC_AGENDA_CVS_ENHEDUANNA_DESCRIPTION", "en_US",	"Likes Civilizations who follow the same Religion as she does, and those who have a high [ICON_Faith] Faith output. Dislikes Civilizations that try to spread their religion to her empire, as well as Civilizations who have more [ICON_GreatPerson] Great People than her."	),
	("LOC_DIPLO_KUDO_LEADER_CVS_ENHEDUANNA_REASON_ANY",	"en_US",		  
	"(You follow the same Religion or have a high Faith output.)"	),
	("LOC_DIPLO_MODIFIER_CVS_ENHEDUANNA_HAPPY",	"en_US",	
	"Ishtar is pleased with your devout piety"	),
	("LOC_DIPLO_WARNING_LEADER_CVS_ENHEDUANNA_REASON_ANY",	"en_US",	  
	"(You have converted her city or have more Great People than her.)"	),
	("LOC_DIPLO_MODIFIER_CVS_ENHEDUANNA_UNHAPPY",		"en_US",	 
	"How dare you insult the name of Ishtar and lead the world's heroes away from her!"	),
		
-----------------------------------------------
-- Diplos
-----------------------------------------------	

-- DOM
	("LOC_LOADING_INFO_LEADER_CVS_ENHEDUANNA",  "en_US",	
	"Perform your rites, devout Enheduanna. To distant horizons, through billows of smoke and storms of war, in the heart of every campaign blazes the will of the goddess Ishtar. As high priestess, it is your worldly duty to make known her splendour, so that one and all submit to the eight-pointed star."),
	
-- FIRST MEET
	-- First AI Line
	("LOC_DIPLO_FIRST_MEET_LEADER_CVS_ENHEDUANNA_ANY",	"en_US",	
	"Shalamu, salutations. With Ishtar as my lion, by the silvery glow of the moon, I am High Priestess Enheduanna. " ),
	
	-- AI invitation to visit nearby City
	("LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_CVS_ENHEDUANNA_ANY",	"en_US",	
	"Let us retreat to the shade of my nearest city, so that you may more comfortably drink from the discipline of the goddess."	),
	
	-- AI accepts human invitation
	("LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_CVS_ENHEDUANNA_ANY",	"en_US",	
	"Onward, then."	),
	
	-- AI invitation to exchange Capital Information
	("LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_CVS_ENHEDUANNA_ANY",	"en_US",	
	"I believe we should show each other our capitals, so that we may both know their protectors better."	),

-- GREETINGS	
	("LOC_DIPLO_GREETING_LEADER_CVS_ENHEDUANNA_ANY",	"en_US",	
	"How may I guide you?"	),
	
-- DELEGATION
	-- AI Accepts
	("LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_CVS_ENHEDUANNA_ANY",	"en_US",	
	"Your libations please me. Proceed with your envoy."	),
	
	-- AI Rejects
	("LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_CVS_ENHEDUANNA_ANY",	"en_US",	
	"Your libations are unfit for a latrine. Turn back before I find reason to be insulted."	),
	
	-- AI Requests
	("LOC_DIPLO_DELEGATION_FROM_AI_LEADER_CVS_ENHEDUANNA_ANY",	"en_US",	
	"Composed by yours truly and inspired by the Queen of Heaven, you will find delight in Nin-me-shara and In-nin sha-gur-ra. That is, if you welcome my delegation."),
	
-- OPEN BORDERS
	-- AI accepts from human	
	("LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_ENHEDUANNA_ANY",	"en_US",	                                     
	"You are free to travel, though I must ask that you show your respects when passing a shrine or temple."	),
	
	-- AI rejects from human	
	("LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_ENHEDUANNA_ANY",  "en_US",	                                   
	"I fear Ishtar's faithful would be unsafe with you traipsing around unchecked."	),
	
	-- AI requests from human	
	("LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_CVS_ENHEDUANNA_ANY",      "en_US",	                                
	"Borders are as fluid as the wars that demarcate them. When closed, it is only a matter of time before they are challenged."	),
	
-- DECLARE FRIENDSHIP

	-- AI accepts from human	
	("LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_ENHEDUANNA_ANY",   "en_US",	                                   
	"May our partnership be as blessed as the reed that knows no drought."	),
	
	-- AI rejects from human	
	("LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_ENHEDUANNA_ANY",   "en_US",	                                   
	"I know better than to throw in with heathens."	),
	
	-- AI Requests friendship from human	
	("LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_CVS_ENHEDUANNA_ANY",     "en_US",	                                 
	"Let us declare to all who will listen that, like lust and war, we share a bond both inseparable and insuperable."	),
	
	-- Human accepts AI requests, AI responds	
	("LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_ENHEDUANNA_ANY",   "en_US",	                                   
	"May our partnership be as blessed as the reed that knows no drought."	),
	
	-- Human rejects AI requests, AI responds	
	("LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_ENHEDUANNA_ANY",   "en_US",	                                   
	"A more fair-weather friend I've never seen."	),

-- ALLIANCE

	-- AI Requests an alliance from human
	("LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_CVS_ENHEDUANNA_ANY",	"en_US",	
	"Join me, and the great storm bird shall cast a long shadow on our foes. Where she dives, we strike; where she alights, we conquer."	),

-- KUDOS & WARNINGS
	
	-- AI Kudos
	("LOC_DIPLO_KUDO_EXIT_LEADER_CVS_ENHEDUANNA_ANY",	"en_US",	
	"That you show due obeisance to the exaltation of Ishtar, whose rage cannot be cooled, speaks to your wisdom and gladdens my heart."),
	
	-- AI Warnings
	("LOC_DIPLO_WARNING_EXIT_LEADER_CVS_ENHEDUANNA_ANY",	"en_US",	
	"Refuse to observe the sovereignty of Ishtar, and your land will thunder with the ichor of the great Queen of Queens. Repent, else she deliver upon you endless lamentations."	),
	
	-- AI warns player for border troops
	("LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_CVS_ENHEDUANNA_ANY",	"en_US",	
	"I can see your mange-infested hounds gnashing at my borders, and would rather they didn't."	),

-- TRADE
	
	-- AI Accepts Deal
	("LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_CVS_ENHEDUANNA_ANY",	"en_US",	
	"Bless you."	),

	-- AI Rejects Deal
	("LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_CVS_ENHEDUANNA_ANY",	"en_US",	
	"Curse you."),

-- DENOUNCE
	
	-- From Human
	("LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_CVS_ENHEDUANNA_ANY",	"en_US",	
	"I should have known your honeyed words would turn venomous. May your deep-seated evil fester and consume you from within."	),
	
	-- From AI
	("LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_CVS_ENHEDUANNA_ANY",	"en_US",	
	"When at last you look up from your evil machinations to see, indefatigable and merciless, divine retribution bearing down on you, know that you have earned your lot. (Denounces You)"	),
	
-- DOW
	
	-- Human Declares War
	("LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_CVS_ENHEDUANNA_ANY",	"en_US",	
	"Remember your battle cry. For when it quietens, when the theatre has been made sanguinolent, you will look back upon it and weep at the call that ended your empire."	),
	
	-- AI Declares War
	("LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_CVS_ENHEDUANNA_ANY",	"en_US",	
	"Be it known that the terrible, devouring gaze of Ishtar has fallen upon you. Make peace with your sins, for you will soon scatter like so much wind."	),
	
-- MAKE PEACE
	
	-- AI accepts from human
	("LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_CVS_ENHEDUANNA_ANY",	"en_US",	
	"I agree to honor your armistice."),
	
	-- AI refuses human
	("LOC_DIPLO_MAKE_PEACE_AI_REFUSE_DEAL_LEADER_CVS_ENHEDUANNA_ANY",	"en_US",	
	"My Lady's malevolent anger is too great to cool."	),
	
	-- AI requests from human
	("LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_CVS_ENHEDUANNA_ANY",	"en_US",	
	"If we do not make peace, these rivers swollen with blood will drown us both."),

-- DEFEAT
	
	-- AI is Defeated
	("LOC_DIPLO_DEFEAT_FROM_AI_LEADER_CVS_ENHEDUANNA_ANY",	"en_US",	
	"Is this... Ishtar's will? Driven out of the temple like a swallow from the window? Must I die because of my holy songs?"),

	-- Human is Defeated (will see this in hotseat)
	("LOC_DIPLO_DEFEAT_FROM_HUMAN_LEADER_CVS_ENHEDUANNA_ANY",	"en_US",	
	"Is this... Ishtar's will? Driven out of the temple like a swallow from the window? Must I die because of my holy songs?"	),	

--------------------------------------------------------------------
-- Quote and Pedia
--------------------------------------------------------------------

	("LOC_PEDIA_LEADERS_PAGE_CVS_ENHEDUANNA_QUOTE",	"en_US",	
	"I have entered before You in my holy gipar, I the En, Enheduanna, carrying the masab-basket, I uttered a joyous chant"  	),
	
	("LOC_PEDIA_LEADERS_PAGE_CVS_ENHEDUANNA_TITLE",	"en_US",	
	"Enheduanna"),
	
	("LOC_PEDIA_LEADERS_PAGE_CVS_ENHEDUANNA_SUBTITLE",	"en_US",	
	"High Priestess of Ur."),
	
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_ENHEDUANNA_CHAPTER_CAPSULE_BODY",	"en_US",	
	"As the High Priestess of Ur, Enheduanna held a large amount of influence as Ishtar's priestess. She was also famous for her poetry, dedicated to Ishtar herself. Conquering Cities will grant Enheduanna access to more Great Work of Writing slots and places to work Holy Site Prayers; building Holy Sites also helps hold the Empire together, allowing Enheduanna to focus on a sword-led Culture victory."),
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_ENHEDUANNA_CHAPTER_DETAILED_BODY",	"en_US",	
	"Enheduanna is primarily geared towards Cultural and Religious victories, with the paths to both benefitting each other: Completing Holy Site Prayers contributes towards Great Writers, and producing Great Works of Writing increases your Faith output. In addition, Holy Sites provide extra Great Work of Writing slots, encouraging you to build them to further both victories. Akkad's militaristic focus is also interwoven here: Holy Sites help maintain your Empire, and conquering new Cities brings more Great Work of Writing slots and places to produce Holy Site Prayers. Finally of course, militaristic capabilities are always handy for dealing with opponents who refuse to accept the true faith or kneel to your culture..."),

	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_ENHEDUANNA_CHAPTER_HISTORY_PARA_1",	"en_US",	
	"Enheduanna was the daughter of Sargon the Great, and is renowned for being the author of the first known piece of poetry. Sargon made her the High Priestess of Ur, a servant of Ur's tuletary deity Nanna, in a move likely designed to increase stability through having a religious legitemacy. Not a huge amount is known about Enheduanna's tenure, although we do know from her poem that she was at some point forced from the priestesshood and subsequently apologised to Ishtar for any trespasses. Idk it's been ages since I read about her and it's not like anyone's reading this anyway if you wanna know more about her just google her or smth.");