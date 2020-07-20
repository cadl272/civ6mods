/*
	Localisation
	Authors: SeelingCat
*/

INSERT OR REPLACE INTO LocalizedText (Language, Tag, Text)
VALUES

-----------------------------------------------
-- Leader
-----------------------------------------------	
	
	("en_US",	"LOC_LEADER_CVS_DIHYA_NAME",  "Dihya"	),
	
-----------------------------------------------
-- UA
-----------------------------------------------	

	("en_US",	"LOC_TRAIT_LEADER_CVS_DIHYA_UA_NAME",  "Kahina"	),
	("en_US",	"LOC_TRAIT_LEADER_CVS_DIHYA_UA_DESCRIPTION",
	"Cities produce +5% [ICON_PRODUCTION] Production for each owned mountain tile when at war. Units receive +7 [ICON_STRENGTH] Combat Strength when fighting on owned desert tiles. When an enemy unit pillages one of your improvements, all enemy units on that tile and on adjacent tiles with the same owner are [ICON_DAMAGED] Damaged."	),

	("en_US",	"LOC_MODIFIER_CVS_DIHYA_COMBAT_BONUS_FRIENDLY_DESERT",		"+{1_Amount} Combat Strength on owned desert terrain (Kahina)"	),

-----------------------------------------------
-- Agenda
-----------------------------------------------	

	("en_US",	"LOC_AGENDA_CVS_DIHYA_NAME",	"Queen of the Berbers"	),
	("en_US",	"LOC_AGENDA_CVS_DIHYA_DESCRIPTION",	"Likes those who keep their citizens happy and their treasury full. Dislikes those who go to war on her home continent."	),
	
	("en_US",	"LOC_DIPLO_KUDO_LEADER_CVS_DIHYA_REASON_ANY",	"(Your coffers are full and your people are happy.)"	),
	("en_US",	"LOC_DIPLO_MODIFIER_CVS_DIHYA_HAPPY",	"Dihya is impressed by your fair rule and the strength of your economy"	),
	
	("en_US",	"LOC_DIPLO_WARNING_LEADER_CVS_DIHYA_REASON_ANY",	"(You have warred on her home continent.)"	),
	("en_US",	"LOC_DIPLO_MODIFIER_CVS_DIHYA_UNHAPPY",	"Dihya is angered that have you gone to war on her home continent"	),

-----------------------------------------------
-- DOM
-----------------------------------------------	

	("en_US",	"LOC_LOADING_INFO_LEADER_CVS_DIHYA",
	"Greetings, Dihya, Queen of the Berbers and protector of Tamazgha. Your people face danger at every turn and require your guidance. The sturdy shields of your warriors shall be your aegis against all invaders, and the deserts and mountains too shall rise up to aid you in your defense even as you draw up water from beneath the inhospitable sands. Go now and guard against your enemies: deny them any quarter and let the perseverance of the Berbers be known far and wide."  	),

-----------------------------------------------
-- Diplos | First Meet
-----------------------------------------------	

	-- First AI Line (ANY)
	("en_US",	"LOC_DIPLO_FIRST_MEET_LEADER_CVS_DIHYA_ANY",
	"Welcome to Tamazgha, the land of the Imazighen; I am Dihya, queen of these lands and defender of my people." ),
	
	-- AI invitation to visit nearby City (ANY)
	("en_US",	"LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_CVS_DIHYA_ANY",
	"Would you care to visit one of our fine cities? I'll have our finest provisions retrieved from the ghorfa in your honor."	),
	
	-- AI accepts human invitation (ANY)
	("en_US",	"LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_CVS_DIHYA_ANY",
	"A most kind invitation; I accept."	),
	
	-- AI invitation to exchange Capital Information (ANY)
	("en_US",	"LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_CVS_DIHYA_ANY",
	"Come, let us share the location of our capitals. Caravans cannot begin to spread the wealth if they do not know where to go."	),

-----------------------------------------------
-- Diplos | Greetings
-----------------------------------------------	

	-- (HAPPY)
	("en_US",	"LOC_DIPLO_GREETING_LEADER_CVS_DIHYA_HAPPY",
	"What is it you would like to discuss?"	),

	-- (UNHAPPY)
	("en_US",	"LOC_DIPLO_GREETING_LEADER_CVS_DIHYA_UNHAPPY",
	"Go on..."	),
	
-----------------------------------------------
-- Diplos | Delegation
-----------------------------------------------	

	-- AI Accepts (ANY)
	("en_US",	"LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_CVS_DIHYA_ANY",
	"We shall welcome them with open arms."	),
	
	-- AI Rejects (ANY)
	("en_US",	"LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_CVS_DIHYA_ANY",
	"I would advise against it. The deserts of Tamazgha do not take kindly to outsiders."	),
	
	-- AI Requests (ANY)
	("en_US",	"LOC_DIPLO_DELEGATION_FROM_AI_LEADER_CVS_DIHYA_ANY",
	"Please accept these gifts I have sent to you. My delegates have crossed the desert to bring you hand-made couscous, fine earthenware for cooking tajine, and the finest harissa. Be careuful with that last one - it packs quite a punch!"	),
	
-----------------------------------------------
-- Diplos | Open Borders
-----------------------------------------------	

	-- AI accepts from human (ANY)	
	("en_US",	"LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_DIHYA_ANY",
	"The doors of every kasbah and the markets of every souq are open to you and your people."	),
	
	-- AI rejects from human (ANY)	
	("en_US",	"LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_DIHYA_ANY",
	"Only a fool invites trouble willingly into their own home."	),
	
	-- AI requests from human (ANY)	
	("en_US",	"LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_CVS_DIHYA_ANY",
	"Please allow my people entry into your land; we are excited to see what trade opportunities await within."	),
	
-----------------------------------------------
-- Diplos | Declare Friendship
-----------------------------------------------	

	-- AI accepts from human (ANY)
	("en_US",	"LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_DIHYA_ANY",
	"A close friend is as good as a thousand soldiers; together, no harm shall befall our peoples."	),
	
	-- AI rejects from human (ANY)	
	("en_US",	"LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_DIHYA_ANY",
	"Unfortunately, it seems you have mistaken my politeness for friendship."	),
	
	-- AI Requests friendship from human (ANY)	
	("en_US",	"LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_CVS_DIHYA_ANY",
	"You have proven yourself to a friend to the Imazighen and, as such, to me as well. Let us formalize our most kind association."	),
	
	-- Human accepts AI requests, AI responds (ANY)	
	("en_US",	"LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_DIHYA_ANY",
	"Outstanding!"	),
	
	-- Human rejects AI requests, AI responds (ANY)	
	("en_US",	"LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_DIHYA_ANY",
	"Ah, I understand. A nation must always be on guard."	),

-----------------------------------------------
-- Diplos | Alliance
-----------------------------------------------	

	-- AI Requests an alliance from human (ANY)
	("en_US",	"LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_CVS_DIHYA_ANY",
	"In this cruel world, we can only depend on a trusted few to have our best interests at heart. I consider you to be one of those few; let us forge an alliance that will protect us from harm like the shield deflects the iron spear."	),

-----------------------------------------------
-- Diplos | Kudos & Warnings
-----------------------------------------------	
	
	-- AI Kudos (ANY)
	("en_US",	"LOC_DIPLO_KUDO_EXIT_LEADER_CVS_DIHYA_ANY",
	"A contented populace and a full treasury are the two keys to prosperity. You guide your people well because you strive for these things."	),
	
	-- AI Warnings (ANY)
	("en_US",	"LOC_DIPLO_WARNING_EXIT_LEADER_CVS_DIHYA_ANY",
	"You bring bloodshed to these lands, and I know in time you will cast your bloodthirsty gaze upon Tamazgha. I warn you: Look elsewhere, or face your ruin."	),

-----------------------------------------------
-- Diplos | Troops Near Border
-----------------------------------------------	
	
	-- AI warns player for border troops (ANY)
	("en_US",	"LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_CVS_DIHYA_ANY",
	"Your forces tread close to the boundaries of Tamazgha. Make clear your intentions - my people do not take kindly to uninvited guests."	),

-----------------------------------------------
-- Diplos | Trade
-----------------------------------------------	

	-- AI Accepts Deal (ANY)
	("en_US",	"LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_CVS_DIHYA_ANY",
	"A fair trade enriches both buyer and seller - I accept."	),

	-- AI Rejects Deal (ANY)
	("en_US",	"LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_CVS_DIHYA_ANY",
	"Only a fool would think this trade fair."	),

-----------------------------------------------
-- Diplos | Denounce
-----------------------------------------------	

	-- Human denounce, AI responds
	("en_US",	"LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_CVS_DIHYA_ANY",
	"Such big talk from such a lowly creature; you do not frighten me."	),
	
	-- From AI
	("en_US",	"LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_CVS_DIHYA_ANY",
	"You are but a lowly lizard scampering across the hot sands. You should learn your proper place before you are squashed underfoot. (Denounces You)"	),
	
-----------------------------------------------
-- Diplos | Declarations of War
-----------------------------------------------	

	-- Human Declares War, AI responds
	("en_US",	"LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_CVS_DIHYA_ANY",
	"Tell me, by going to war do you imagine yourself to be like the magnificent eagle, soaring and striking at your enemies? Ignorant fool, you are no more than a little grebe!"	),
	
	-- AI Declares War
	("en_US",	"LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_CVS_DIHYA_ANY",
	"Like the great winds that blow across the desert, we shall scour you from these lands. Prepare yourselves, for a mighty storm is upon you!"	), 

-----------------------------------------------
-- Diplos | Make Peace
-----------------------------------------------	
	
	-- AI accepts from human
	("en_US",	"LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_CVS_DIHYA_ANY",
	"I accept. With this, peace returns to Tamazgha, and the land itself seems to breathe a sigh of relief."	),
	
	-- AI refuses human
	("en_US",	"LOC_DIPLO_MAKE_PEACE_AI_REFUSE_DEAL_LEADER_CVS_DIHYA_ANY",
	"You may pillage these lands and murder my fellow Imazighen, but I will never submit to the likes of you!"	),
	
	-- AI requests from human
	("en_US",	"LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_CVS_DIHYA_ANY",
	"Enough blood has been spilt here. Let us end this strife - for both of our countries' sakes."	),

-----------------------------------------------
-- Diplos | Defeat
-----------------------------------------------	
	
	-- AI is Defeated
	("en_US",	"LOC_DIPLO_DEFEAT_FROM_AI_LEADER_CVS_DIHYA_ANY",
	"And so you see the rumors that I can see the future were false, for surely I would have prophesied this. Yet I have never been surer than when I say that your control of these lands will not last. My people will rise up against you; maybe not tomorrow, maybe not in a hundred years, but eventually... my people will be free once more."	),

	-- Human is Defeated (will see this in hotseat)
	("en_US",	"LOC_DIPLO_DEFEAT_FROM_HUMAN_LEADER_CVS_DIHYA_ANY",
	"{LOC_DIPLO_DEFEAT_FROM_AI_LEADER_CVS_DIHYA_ANY}"	),

--------------------------------------------------------------------
-- Quote and Pedia
--------------------------------------------------------------------

	("en_US",	"LOC_PEDIA_LEADERS_PAGE_CVS_DIHYA_QUOTE",
	"The land where the stones know you is worth more than the land where the people know you."  ),
	
	("en_US",	"LOC_PEDIA_LEADERS_PAGE_CVS_DIHYA_TITLE",
	"Dihya"),
	
	("en_US",	"LOC_PEDIA_LEADERS_PAGE_CVS_DIHYA_SUBTITLE",
	"Queen of the Berbers"	),
	
	("en_US",	"LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_DIHYA_CHAPTER_CAPSULE_BODY",
	"Dihya has many tricks up her sleeves to defend her homeland, which will flourish in the otherwise barren desert."),
	
	("en_US",	"LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_DIHYA_CHAPTER_DETAILED_BODY",
	"Dihya is all about maximizing defensive capabilities. Scorched earth tactics mean that pillagers in her lands will find no quarter, and her units receive a considerable boost to their strength when fightin in Berber lands. The Berber Arer Warriors complement this playstyle as well, but can also go on the offensive. If Dihya settles in a heavily mountainous area, she will be able to leverage her production bonus both for infrastructural and military purposes. Get on her good side by maintaining a healthy economy and a happy populace."	),

	("en_US",	"LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_DIHYA_CHAPTER_HISTORY_PARA_1",
	"Dihya was a Berber warrior-queen known for resisting the Arab invasions of the 7th century. She was a member of the Jarawa tribe, which was part of the Zenata confederacy, located in eastern Algeria. Her Arab opponents knew her as al-Kahina, the soothsayer. They thought she had the power of prophecy and believed her to be a powerful sorceress. According to some historians, Dihya may have had partly Byzantine heritage as well. Little is known of Dihya’s personal life, however. Her faith is a particularly complicated sticking point. The Arabs wrote in their histories that she was Jewish, and indeed the Jarawa tribe is believed to have converted to Judaism at some point, although it is unknown if they later adopted Christianity. Additionally, one historian, al-Maliki, notes that she was accompanied in her travels by an idol, perhaps referring to an icon of the Virgin Mary or a Christian saint. It could also have been an idol of an indigenous Berber deity. Unrelatedly, Dihya may also have had an interest in studying desert birds."),
	("en_US",	"LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_DIHYA_CHAPTER_HISTORY_PARA_2",
	"Dihya ruled over her kingdom, which stretched from the Aures mountains in the north to the oasis of Ghadames in the south, for 13 years. She came to power in the aftermath of the defeat of another great Berber resistance figure named Kusaila, who had died in 688, and quickly took up the mantle of the fight against the Umayyad invaders. After Hassan ibn Numan conquered the Byzantine Exarchate of Africa, and its capital of Carthage, he moved onto Numidia, where was told that the most powerful monarch in Ifriqiya was the Dihya, the Queen of the Berbers."),
	("en_US",	"LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_DIHYA_CHAPTER_HISTORY_PARA_3",
	"The Berber and Arab armies met near a river in the northern Aures mountains near modern-day Meskiana, Algeria. Diya concealed her armies in the mountains and, at night, moved her army to surround ibn Numan’s troops. She also dispersed her archers among her camel cavalry to hide their true numbers. When the Arabs attacked, they were surprised by showers of arrows that arose from among the Dihya’s camelry. The Berber cavalry then entered the fray, decimating the Arab army. Thus concluded the Battle of Wadi Nini, also known as the Battle of the Camels in memory of Dihya’s successful tactics. The Berbers chased the retreating Arab army all the way to Gabes, expelling them from Ifriqiya. The Berbers took many prisoners, but Dihya freed all of them save a nephew of Hassan ibn Numan, named Khalid ibn Yazid. The battle was so devastating to the Arabs that they named the wadi where the battle took place Nahr al-Bala, or River of Hardship."),
	("en_US",	"LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_DIHYA_CHAPTER_HISTORY_PARA_4",
	"For the next 4 to 5 years, the Arabs were unable to launch another attack on Ifriqiya and were forced to retreat to Cyrenaica to recover their forces. When they did return, however, their forces were overwhelming. Dihya recognized this and resorted to scorched earth tactics in an attempt to deny the invaders the benefit of their captured lands. This alienated some of her people, however, particularly those who lived amongst the oases. Nevertheless, the invasion continued, and the Arabs captured many cities in modern-day Tunisia, including Gafsa and Gabes. Dihya attempted to block the Arab advance at Tabarka, on the northern Tunisian coast, but after a bitter fight was repulsed. So, Dihya’s forces were pushed back into the Aures mountains."),
	("en_US",	"LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_DIHYA_CHAPTER_HISTORY_PARA_5",
	"Dihya died not too long after; the exact circumstances surrounding her death are unknown, however. She may have died fighting the Arabs, sword in hand, or may have swallowed poison to avoid capture by the enemy. Ibn Khaldun states that she was captured and decapitated, with her head sent to the Caliph in Damascus, but this is most likely an Arab invention. Whatever her fate, it is believed that Dihya’s sons died alongside her. She was buried in the city of Khenchela and the site of her final defeat was immortalized with the name Bir el Kahina, the Well of Kahina."),
	("en_US",	"LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_DIHYA_CHAPTER_HISTORY_PARA_6",
	"Dihya remains a prominent figure in Berber cultural consciousness, representing the fighting spirit of the Berber people and their fierce independence. The memory of this great queen, perhaps the only woman to lead the resistance against growing power of the Arab Muslim caliphates, endures even to this very day as a powerful symbol of hope and strength over a millennium after her death.");

