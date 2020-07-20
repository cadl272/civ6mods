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
	
	("en_US", "LOC_LEADER_CVS_ROLLO_NAME",  "Rollo"	),
	
-----------------------------------------------
-- UA
-----------------------------------------------	

	("en_US", "LOC_TRAIT_LEADER_CVS_ROLLO_UA_NAME",  "Siege of Paris"	),
	("en_US", "LOC_TRAIT_LEADER_CVS_ROLLO_UA_DESCRIPTION",
	"Steal [ICON_GREATPERSON] Great Person Points from other Civilizations when pillaging their Specialty Districts and Buildings. Naval Units transfer their [ICON_MOVEMENT] Movement to those in [ICON_FORMATION] Formation."	),

-----------------------------------------------
-- Agenda
-----------------------------------------------	

	("en_US", "LOC_AGENDA_CVS_ROLLO_NAME",	"In Freehold And Good Money"	),
	("en_US", "LOC_AGENDA_CVS_ROLLO_DESCRIPTION",	"Respects those who share his home continent that have also settled continents he has not. Pities those that share his home continent but have not expanded to new continents."	),
	("en_US", "LOC_DIPLO_KUDO_LEADER_CVS_ROLLO_REASON_ANY",	"(You have settled on a foreign continent.)"	),
	("en_US", "LOC_DIPLO_MODIFIER_CVS_ROLLO_HAPPY",	"Rollo takes delight in your expansionist nature"	),
	("en_US", "LOC_DIPLO_WARNING_LEADER_CVS_ROLLO_REASON_ANY",	"(You have failed to expand to continents foreign to him.)"	),
	("en_US", "LOC_DIPLO_MODIFIER_CVS_ROLLO_UNHAPPY",	"Rollo pities your lack of colonization"	),
		
-----------------------------------------------
-- DOM
-----------------------------------------------	

	("en_US", "LOC_LOADING_INFO_LEADER_CVS_ROLLO",
	"By land and sea, set sail and conquer, Rollo, First Duke of Normandy, for only the strong have the right to rule. May your ships carry armies on an icy wind to freeze the blood of foes on distant shores. Take from others what you seek the most, and tales of your notoriety will surely echo across the waves for centuries."  	),

-----------------------------------------------
-- Diplos | First Meet
-----------------------------------------------	

	-- First AI Line (ANY)
	("en_US", "LOC_DIPLO_FIRST_MEET_LEADER_CVS_ROLLO_ANY",
	"Who dares to enter the court of Rollo, undisputed ruler of Rouen? Peasant or King, I don't care. Just watch your tongue." ),
	
	-- AI invitation to visit nearby City (ANY)
	("en_US", "LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_CVS_ROLLO_ANY",
	"I was on my way to smash some Frankish skulls nearby, but I'd settle for a brief chat if you're inclined."	),
	
	-- AI accepts human invitation (ANY)
	("en_US", "LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_CVS_ROLLO_ANY",
	"Ha! You will not regret this."	),
	
	-- AI invitation to exchange Capital Information (ANY)
	("en_US", "LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_CVS_ROLLO_ANY",
	"I want to know where your capital is. I'll show you the location of mine as well, of course."	),

-----------------------------------------------
-- Diplos | Greetings
-----------------------------------------------	

	-- (HAPPY)
	("en_US", "LOC_DIPLO_GREETING_LEADER_CVS_ROLLO_HAPPY",
	"Glad to see you again. Do you come bearing good news?"	),

	-- (UNHAPPY)
	("en_US", "LOC_DIPLO_GREETING_LEADER_CVS_ROLLO_UNHAPPY",
	"Keep your distance, or I'll kill you on the spot."	),
	
-----------------------------------------------
-- Diplos | Delegation
-----------------------------------------------	

	-- AI Accepts (ANY)
	("en_US", "LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_CVS_ROLLO_ANY",
	"Of course! I'll have them shown all the best taverns and hunting spots."	),
	
	-- AI Rejects (ANY)
	("en_US", "LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_CVS_ROLLO_ANY",
	"Sorry, I can't allow just anyone into my lands."	),
	
	-- AI Requests (ANY)
	("en_US", "LOC_DIPLO_DELEGATION_FROM_AI_LEADER_CVS_ROLLO_ANY",
	"I sent some men your way to share some small gifts with you. Just make sure to wipe off any Frankish blood you might find."	),
	
-----------------------------------------------
-- Diplos | Open Borders
-----------------------------------------------	

	-- AI accepts from human (ANY)	
	("en_US", "LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_ROLLO_ANY",
	"I like this agreement. Sure."	),
	
	-- AI rejects from human (ANY)	
	("en_US", "LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_ROLLO_ANY",
	"Do you think I'm daft? I won't agree to this!"	),
	
	-- AI requests from human (ANY)	
	("en_US", "LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_CVS_ROLLO_ANY",
	"I want to send some men through your lands. Give me an open borders agreement, so I don't have to kill you to do so."	),
	
-----------------------------------------------
-- Diplos | Declare Friendship
-----------------------------------------------	

	-- AI accepts from human (ANY)
	("en_US", "LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_ROLLO_ANY",
	"Sure, I'll agree to this. Just don't betray me."	),
	
	-- AI rejects from human (ANY)	
	("en_US", "LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_ROLLO_ANY",
	"I see no friend in you."	),
	
	-- AI Requests friendship from human (ANY)	
	("en_US", "LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_CVS_ROLLO_ANY",
	"You're no idiot, which makes a change from some leaders I know. Let's declare friendship between our nations. How's that sound?"	),
	
	-- Human accepts AI requests, AI responds (ANY)	
	("en_US", "LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_ROLLO_ANY",
	"Great, then let's find fine drinks to celebrate."	),
	
	-- Human rejects AI requests, AI responds (ANY)	
	("en_US", "LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_ROLLO_ANY",
	"You may come to regret this decision."	),

-----------------------------------------------
-- Diplos | Alliance
-----------------------------------------------	

	-- AI Requests an alliance from human (ANY)
	("en_US", "LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_CVS_ROLLO_ANY",
	"I like your spirit. What do you say we team up as allies against a common enemy?"	),

-----------------------------------------------
-- Diplos | Kudos & Warnings
-----------------------------------------------	
	
	-- AI Kudos (ANY)
	("en_US", "LOC_DIPLO_KUDO_EXIT_LEADER_CVS_ROLLO_ANY",
	"You take advantage of your opportunities and expand to new lands. I applaud your bravery in doing that."	),
	
	-- AI Warnings (ANY)
	("en_US", "LOC_DIPLO_WARNING_EXIT_LEADER_CVS_ROLLO_ANY",
	"Are you so weak-minded that you can't think to travel beyond your horizon? It's rare, but I pity you."	),

-----------------------------------------------
-- Diplos | Troops Near Border
-----------------------------------------------	
	
	-- AI warns player for border troops (HAPPY)
	("en_US", "LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_CVS_ROLLO_HAPPY",
	"A powerful army is good to see, but I don't like them on my borders. Move them now, before things turn ugly."	),

	-- AI warns player for border troops (UNHAPPY)
	("en_US", "LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_CVS_ROLLO_UNHAPPY",
	"I've seen better attempts at invasion than this pathetic display. Get those troops away from my border, unless you want your rivers to flow red?"	),
	
	-- AI accepts player's warning for border troops warning (HAPPY)
	("en_US", "LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_ROLLO_HAPPY",
	"I suppose I can move them for the time being."	),
	
	-- AI accepts player's warning for border troops warning (UNHAPPY)
	("en_US", "LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_ROLLO_UNHAPPY",
	"They will move of their own accord, not yours. You have no right to order me about."	),
	
	-- AI rejects player's warning for border troops warning (ANY) ~ DECLARES WAR
	("en_US", "LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_CVS_ROLLO_ANY",
	"Ha! You think you can scare me with such puny threats? I might just raid you for the fun of it, if you are so scared of me."	),

-----------------------------------------------
-- Diplos | Settling Too Close
-----------------------------------------------	
	
	-- AI warns player for settling too close (HAPPY)
	("en_US", "LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_LEADER_CVS_ROLLO_HAPPY",
	"A word of warning - if you claim lands too close to me, you will lose those lands quickly. I will tolerate this for now, but don't do it again unless you enjoy the sensation of a sword through your back."	),
	
	-- AI warns player for settling too close (UNHAPPY)
	("en_US", "LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_LEADER_CVS_ROLLO_UNHAPPY",
	"If you want a fight, there are smarter ways than to leave vulnerable settlements on my doorstep."	),
	
	-- Positive AI response to human request (HAPPY)
	("en_US", "LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_ROLLO_HAPPY",
	"I didn't know you had an interest in this place. Alright, I won't encroach further."	),
	
	-- Positive AI response to human request (UNHAPPY)
	("en_US", "LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_ROLLO_UNHAPPY",
	"I don't really want more lands around here, anyway. Stop acting so weak."	),
	
	-- Negative AI response to human request (HAPPY)
	("en_US", "LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_CVS_ROLLO_HAPPY",
	"I can see your point, but the land is ripe for the taking. He who dares, wins."	),
	
	-- Negative AI response to human request (UNHAPPY)
	("en_US", "LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_CVS_ROLLO_UNHAPPY",
	"Oh, please. If you're too lazy to settle this land, then someone else will. That's the way of the world and don't you forget it!"	),
	
-----------------------------------------------
-- Diplos | Trade
-----------------------------------------------	

	-- AI Accepts Deal (HAPPY)
	("en_US", "LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_CVS_ROLLO_HAPPY",
	"I can agree to this, I suppose."	),
	
	-- AI Accepts Deal (Unhappy)
	("en_US", "LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_CVS_ROLLO_UNHAPPY",
	"This will do."	),

	-- AI Rejects Deal (HAPPY)
	("en_US", "LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_CVS_ROLLO_HAPPY",
	"I'd appreciate a better deal than this."	),
	
	-- AI Rejects Deal (Unhappy)
	("en_US", "LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_CVS_ROLLO_UNHAPPY",
	"This is no deal; it's an insult."	),

-----------------------------------------------
-- Diplos | Denounce
-----------------------------------------------	

	-- From Human
	("en_US", "LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_CVS_ROLLO_ANY",
	"Words are the most pitiful and weakest weapon you can use. I'll be sure to repay you with an axe."	),
	
	-- From AI
	("en_US", "LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_CVS_ROLLO_ANY",
	"I can't sit by and ignore your blatant weakness. I will tell the whole world of how vulnerable your lands are! (Denounces You)"	),
	
-----------------------------------------------
-- Diplos | Declarations of War
-----------------------------------------------	

	-- Human Declares War
	("en_US", "LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_CVS_ROLLO_ANY",
	"A challenge to my own claim to Rouen? Excellent! I shall prove my worthiness to the gods with your head!"	),
	
	-- AI Declares War
	("en_US", "LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_CVS_ROLLO_ANY",
	"Don't consider how best to end this war or defeat me - that's fruitless. Instead, just focus on giving me the satisfaction I crave from your demise."	), 

-----------------------------------------------
-- Diplos | Make Peace
-----------------------------------------------	
	
	-- AI accepts from human
	("en_US", "LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_CVS_ROLLO_ANY",
	"Fine, fine. I'll give you some relief for the time being."	),
	
	-- AI refuses human
	("en_US", "LOC_DIPLO_MAKE_PEACE_AI_REFUSE_DEAL_LEADER_CVS_ROLLO_ANY",
	"Not likely. I am enjoying your losses too much to stop now."	),
	
	-- AI requests from human
	("en_US", "LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_CVS_ROLLO_ANY",
	"I've had my fun fighting you, but now it's become boring. What do you say we bring it to a close?"	),

-----------------------------------------------
-- Diplos | Defeat
-----------------------------------------------	
	
	-- AI is Defeated
	("en_US", "LOC_DIPLO_DEFEAT_FROM_AI_LEADER_CVS_ROLLO_ANY",
	"So, I have lost, and Rouen is yours. I regret nothing - regardless of what you do from here, the saga of my accomplishments will be remembered for centuries!"	),

	-- Human is Defeated (will see this in hotseat)
	("en_US", "LOC_DIPLO_DEFEAT_FROM_HUMAN_LEADER_CVS_ROLLO_ANY",
	"So, I have lost, and Rouen is yours. I regret nothing - regardless of what you do from here, the saga of my accomplishments will be remembered for centuries!"	),

--------------------------------------------------------------------
-- Quote and Pedia
--------------------------------------------------------------------

	("en_US", "LOC_PEDIA_LEADERS_PAGE_CVS_ROLLO_QUOTE",
	"I came out of the mist on an icy wind and froze the blood of weaker men."  ),
	
	("en_US", "LOC_PEDIA_LEADERS_PAGE_CVS_ROLLO_TITLE",
	"Rollo"),
	
	("en_US", "LOC_PEDIA_LEADERS_PAGE_CVS_ROLLO_SUBTITLE",
	"Gaange Rolf, First Duke of Normandy"	),
	
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_ROLLO_CHAPTER_CAPSULE_BODY",
	"By land and sea, set sail and conquer under the flag of Rollo."),
	
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_ROLLO_CHAPTER_DETAILED_BODY",
	"Rollo can make quick work of carving out new territory and building powerful cities at the expense of his enemies. With his ability to steal the Great Person Points of those he is at war with, pillaging specialty districts and the buildings within them will help him with any victory he has his eyes on. What makes him particularly dangerous, however, are his naval units that can escort an army across the waves to make landfall on short notice, making him a versatile opponent that can conquer by both land and sea in equal measure."	),

	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_ROLLO_CHAPTER_HISTORY_PARA_1",
	"Rollo, otherwise known as Gaange Rolf, was a Viking who became the first ruler of Normandy, a region of France. He is sometimes called the 1st Duke of Normandy. His Scandinavian name Rolf was extended to Gaange Rolf because he became too heavy as an adult for a horse to carry, therefore he had to walk. Rollo emerged as the outstanding personality among the Norsemen who had secured a permanent foothold on Frankish soil in the valley of the lower Seine. Charles the Simple, the king of West Francia, ceded them lands between the mouth of the Seine and what is now the city of Rouen in exchange for Rollo agreeing to end his brigandage, and provide the Franks with protection against future Viking raids."),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_ROLLO_CHAPTER_HISTORY_PARA_2",
	"Rollo is first recorded as the leader of these Viking settlers in a charter of 918, and he continued to reign over the region of Normandy until at least 928. He was succeeded by his son, William Longsword in the Duchy of Normandy that he had founded. The offspring of Rollo and his followers became known as the Normans. After the Norman conquest of England and their conquest of southern Italy and Sicily over the following two centuries, their descendants came to rule Norman England (the House of Normandy), the Kingdom of Sicily (the Kings of Sicily) as well as the Principality of Antioch from the 10th to 12th century, leaving behind an enduring legacy in the historical developments of Europe and the Near East.");
	
	
	