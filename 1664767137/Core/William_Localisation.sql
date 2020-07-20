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
	
	("en_US", "LOC_LEADER_CVS_WILLIAM_NAME",  "William"	),
	
-----------------------------------------------
-- UA
-----------------------------------------------	

	("en_US", "LOC_TRAIT_LEADER_CVS_WILLIAM_UA_NAME",			"Domesday"	),
	("en_US", "LOC_TRAIT_LEADER_CVS_WILLIAM_UA_DESCRIPTION",	"Cities that have an established [ICON_GOVERNOR] Governor with at least 3 [ICON_PROMOTION] Promotions remain 100% Loyal. Gains access to the Familia Regis unique unit."	),

-----------------------------------------------
-- UU
-----------------------------------------------

	("en_US", "LOC_UNIT_CVS_WILLIAM_UU_NAME",			"Familia Regis"	),
	("en_US", "LOC_UNIT_CVS_WILLIAM_UU_DESCRIPTION",	"A melee unit unique to Normandy. Available at Feudalism. Receives +50% experience from battles, and additional [ICON_STRENGTH] Combat Strength when the city it was trained in is at maximum Loyalty."	),
	("en_US", "LOC_UNIT_CVS_WILLIAM_UU_ST_DESCRIPTION",	"A melee unit unique to Normandy. Replaces Longswordsman. Available at Feudalism. Receives +50% experience from battles, and additional [ICON_STRENGTH] Combat Strength when the city it was trained in is at maximum Loyalty."	),

	("en_US", "LOC_MODIFIER_CVS_WILLIAM_UU_COMBAT_STRENGTH_DESCRIPTION",  "+{1_Amount} Combat Strength from Loyal City"	),

-----------------------------------------------
-- Agenda
-----------------------------------------------	

	("en_US", "LOC_AGENDA_CVS_WILLIAM_NAME",	"The King Is Dead"	),
	("en_US", "LOC_AGENDA_CVS_WILLIAM_DESCRIPTION",	"Respects those with high income and a happy populace, but will seek to conquer those with small armies."	),
	("en_US", "LOC_DIPLO_KUDO_LEADER_CVS_WILLIAM_REASON_ANY",	"(You have a high income and a happy populace.)"	),
	("en_US", "LOC_DIPLO_MODIFIER_CVS_WILLIAM_HAPPY",	"William is in admiration of your governance"	),
	("en_US", "LOC_DIPLO_WARNING_LEADER_CVS_WILLIAM_REASON_ANY",	"(You have a small army.)"	),
	("en_US", "LOC_DIPLO_WARNING_LEADER_CVS_WILLIAM_REASON_ANY",	"(You have a small army.)"	),
	("en_US", "LOC_DIPLO_MODIFIER_CVS_WILLIAM_UNHAPPY",	"William believes you are weak"	),
		
-----------------------------------------------
-- DOM
-----------------------------------------------	

	("en_US", "LOC_LOADING_INFO_LEADER_CVS_WILLIAM_ENGLAND",	"The time has come to weave a legacy into the tapestry of history, William. It is by your valor and deft administration that your people shall conquer foreign shores and thrive under the guidance of your trusted companions. Build a strong war footing and march forth as you draw the lines of Norman conquest, for your people shall find prosperity when you assert your right to the crown."  	),
	("en_US", "LOC_LOADING_INFO_LEADER_CVS_WILLIAM_NORMANDY",	"{LOC_LOADING_INFO_LEADER_CVS_WILLIAM_ENGLAND}"  	),

-----------------------------------------------
-- Diplos | First Meet
-----------------------------------------------	

	-- First AI Line (ANY)
	("en_US", "LOC_DIPLO_FIRST_MEET_LEADER_CVS_WILLIAM_ENGLAND_ANY",	"You are in the presence of William, Duke of Normandy. I trust that you will pose me no threat - though I cannot promise such a thing mutually." ),
	("en_US", "LOC_DIPLO_FIRST_MEET_LEADER_CVS_WILLIAM_NORMANDY_ANY",	"{LOC_DIPLO_FIRST_MEET_LEADER_CVS_WILLIAM_ENGLAND_ANY}" ),

	-- AI invitation to visit nearby City (ANY)
	("en_US", "LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_CVS_WILLIAM_ENGLAND_ANY",	"A city of mine is nearby. Come, let us discuss matters of governance there. It would be far more convenient."	),
	("en_US", "LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_CVS_WILLIAM_NORMANDY_ANY",	"{LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_CVS_WILLIAM_ENGLAND_ANY}"	),
	
	-- AI accepts human invitation (ANY)
	("en_US", "LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_CVS_WILLIAM_ENGLAND_ANY",	"Good."	),
	("en_US", "LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_CVS_WILLIAM_NORMANDY_ANY",	"{LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_CVS_WILLIAM_ENGLAND_ANY}"	),
	
	-- AI invitation to exchange Capital Information (ANY)
	("en_US", "LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_CVS_WILLIAM_ENGLAND_ANY",		"It's one thing to know of your lands, but knowing where they are is more important. Shall we exchange the locations of our capitals?"	),
	("en_US", "LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_CVS_WILLIAM_NORMANDY_ANY",		"{LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_CVS_WILLIAM_ENGLAND_ANY}"	),

-----------------------------------------------
-- Diplos | Greetings
-----------------------------------------------	

	-- (HAPPY)
	("en_US", "LOC_DIPLO_GREETING_LEADER_CVS_WILLIAM_ENGLAND_HAPPY",	"I'm listening."	),
	("en_US", "LOC_DIPLO_GREETING_LEADER_CVS_WILLIAM_NORMANDY_HAPPY",	"{LOC_DIPLO_GREETING_LEADER_CVS_WILLIAM_ENGLAND_HAPPY}"	),

	-- (UNHAPPY)
	("en_US", "LOC_DIPLO_GREETING_LEADER_CVS_WILLIAM_ENGLAND_UNHAPPY",	"I warn you, my time is precious."	),
	("en_US", "LOC_DIPLO_GREETING_LEADER_CVS_WILLIAM_NORMANDY_UNHAPPY",	"{LOC_DIPLO_GREETING_LEADER_CVS_WILLIAM_ENGLAND_UNHAPPY}"	),
	
-----------------------------------------------
-- Diplos | Delegation
-----------------------------------------------	

	-- AI Accepts (ANY)
	("en_US", "LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_CVS_WILLIAM_ENGLAND_ANY",	"Yes. I shall instruct my governors to welcome your delegation."	),
	("en_US", "LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_CVS_WILLIAM_NORMANDY_ANY",	"{LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_CVS_WILLIAM_ENGLAND_ANY}"	),
	
	-- AI Rejects (ANY)
	("en_US", "LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_CVS_WILLIAM_ENGLAND_ANY",	"No, I think not. The time is not right for such liberties."	),
	("en_US", "LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_CVS_WILLIAM_NORMANDY_ANY",	"{LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_CVS_WILLIAM_ENGLAND_ANY}"	),
	
	-- AI Requests (ANY)
	("en_US", "LOC_DIPLO_DELEGATION_FROM_AI_LEADER_CVS_WILLIAM_ENGLAND_ANY",	"A delegation from Normandy has been dispatched to your lands. They bring small tokens if goodwill. I assume you will take them, and not waste their - or my - time?"	),
	("en_US", "LOC_DIPLO_DELEGATION_FROM_AI_LEADER_CVS_WILLIAM_NORMANDY_ANY",	"{LOC_DIPLO_DELEGATION_FROM_AI_LEADER_CVS_WILLIAM_ENGLAND_ANY}"	),
	
-----------------------------------------------
-- Diplos | Open Borders
-----------------------------------------------	

	-- AI accepts from human (ANY)	
	("en_US", "LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_WILLIAM_ENGLAND_ANY",	"This will be greatly beneficial to us both."	),
	("en_US", "LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_WILLIAM_NORMANDY_ANY",	"{LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_WILLIAM_ENGLAND_ANY}"	),
	
	-- AI rejects from human (ANY)	
	("en_US", "LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_WILLIAM_ENGLAND_ANY",	"I think not. The mere notion is preposterous."	),
	("en_US", "LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_WILLIAM_NORMANDY_ANY",	"{LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_WILLIAM_ENGLAND_ANY}"	),
	
	-- AI requests from human (ANY)	
	("en_US", "LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_CVS_WILLIAM_ENGLAND_ANY",	"My armies need passage through your lands. Let's sign an open borders treaty and be done with this matter."	),
	("en_US", "LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_CVS_WILLIAM_NORMANDY_ANY",	"{LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_CVS_WILLIAM_ENGLAND_ANY}"	),
	
-----------------------------------------------
-- Diplos | Declare Friendship
-----------------------------------------------	

	-- AI accepts from human (ANY)
	("en_US", "LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_WILLIAM_ENGLAND_ANY",	"Normandy will gladly accept your friendship. I shall commission a commemorative tapestry at once."	),
	("en_US", "LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_WILLIAM_NORMANDY_ANY",	"{LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_WILLIAM_ENGLAND_ANY}"	),
	
	-- AI rejects from human (ANY)	
	("en_US", "LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_WILLIAM_ENGLAND_ANY",		"No, this is not appropriate right now."	),
	("en_US", "LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_WILLIAM_NORMANDY_ANY",		"{LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_WILLIAM_ENGLAND_ANY}"	),
	
	-- AI Requests friendship from human (ANY)	
	("en_US", "LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_CVS_WILLIAM_ENGLAND_ANY",	"You have proven yourself to be of trustworthy character. I offer Normandy's hand in friendship. Accept it, and solidify the bonds between our people."	),
	("en_US", "LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_CVS_WILLIAM_NORMANDY_ANY",	"{LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_CVS_WILLIAM_ENGLAND_ANY}"	),
	
	-- Human accepts AI requests, AI responds (ANY)	
	("en_US", "LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_WILLIAM_ENGLAND_ANY",		"Perfect. Let us go hunting together in celebration."	),
	("en_US", "LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_WILLIAM_NORMANDY_ANY",	"{LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_WILLIAM_ENGLAND_ANY}"	),
	
	-- Human rejects AI requests, AI responds (ANY)	
	("en_US", "LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_WILLIAM_ENGLAND_ANY",		"Rejecting the friendship of Normandy? Preposterous..."	),
	("en_US", "LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_WILLIAM_NORMANDY_ANY",	"{LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_WILLIAM_ENGLAND_ANY}"	),

-----------------------------------------------
-- Diplos | Alliance
-----------------------------------------------	

	-- AI Requests an alliance from human (ANY)
	("en_US", "LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_CVS_WILLIAM_ENGLAND_ANY",		"It is in the interests of both our nations that we sign an Alliance. I have prepared the treaty, I need only you to sign it."	),
	("en_US", "LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_CVS_WILLIAM_NORMANDY_ANY",	"{LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_CVS_WILLIAM_ENGLAND_ANY}"	),

-----------------------------------------------
-- Diplos | Kudos & Warnings
-----------------------------------------------	
	
	-- AI Kudos (ANY)
	("en_US", "LOC_DIPLO_KUDO_EXIT_LEADER_CVS_WILLIAM_ENGLAND_ANY",		"You show deference to the concept of careful governance of your people. That is wisdom I can respect."	),
	("en_US", "LOC_DIPLO_KUDO_EXIT_LEADER_CVS_WILLIAM_NORMANDY_ANY",	"{LOC_DIPLO_KUDO_EXIT_LEADER_CVS_WILLIAM_ENGLAND_ANY}"	),
	
	-- AI Warnings (ANY)
	("en_US", "LOC_DIPLO_WARNING_EXIT_LEADER_CVS_WILLIAM_ENGLAND_ANY",	"Your people lack faith in your rule, and you do little to see what you own. I advise you rectify this immediately."	),
	("en_US", "LOC_DIPLO_WARNING_EXIT_LEADER_CVS_WILLIAM_NORMANDY_ANY",	"{LOC_DIPLO_WARNING_EXIT_LEADER_CVS_WILLIAM_ENGLAND_ANY}"	),

-----------------------------------------------
-- Diplos | Troops Near Border
-----------------------------------------------	
	
	-- AI warns player for border troops (HAPPY)
	("en_US", "LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_CVS_WILLIAM_ENGLAND_HAPPY",		"I appreciate the protection your forces offer from barbarians, but I am not averse to the concept of betrayal. I ask that you remove those forces immediately and allow me to maintain the protection of my own people."	),
	("en_US", "LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_CVS_WILLIAM_NORMANDY_HAPPY",	"{LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_CVS_WILLIAM_ENGLAND_HAPPY}"	),

	-- AI warns player for border troops (UNHAPPY)
	("en_US", "LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_CVS_WILLIAM_ENGLAND_UNHAPPY",	"If you are planning a surprise attack, you have lost your only advantage. Move your forces now, else I will show no mercy in retaliation."	),
	("en_US", "LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_CVS_WILLIAM_NORMANDY_UNHAPPY",	"{LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_CVS_WILLIAM_ENGLAND_UNHAPPY}"	),
	
	-- AI accepts player's warning for border troops warning (HAPPY)
	("en_US", "LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_WILLIAM_ENGLAND_HAPPY",	"Hmph. My troops regularly hunt for game in those lands, but I shall move them if it worries you so."	),
	("en_US", "LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_WILLIAM_NORMANDY_HAPPY",	"{LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_WILLIAM_ENGLAND_HAPPY}"	),
	
	-- AI accepts player's warning for border troops warning (UNHAPPY)
	("en_US", "LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_WILLIAM_ENGLAND_UNHAPPY",		"I shall move them - for now. But do not mistake this compliance for weakness. If I need them there once more, they will return."	),
	("en_US", "LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_WILLIAM_NORMANDY_UNHAPPY",		"{LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_WILLIAM_ENGLAND_UNHAPPY}"	),
	
	-- AI rejects player's warning for border troops warning (ANY) ~ DECLARES WAR
	("en_US", "LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_CVS_WILLIAM_ENGLAND_ANY",	"I praise your courage, but courage alone will not spare you from my men if this continues."	),
	("en_US", "LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_CVS_WILLIAM_NORMANDY_ANY",	"{LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_CVS_WILLIAM_ENGLAND_ANY}"	),

-----------------------------------------------
-- Diplos | Settling Too Close
-----------------------------------------------	
	
	-- AI warns player for settling too close (HAPPY)
	("en_US", "LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_LEADER_CVS_WILLIAM_ENGLAND_HAPPY",	"I believe you ought to know better than to settle so close to my land. Ensure this does not happen again, or I may have to become more serious."	),
	("en_US", "LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_LEADER_CVS_WILLIAM_NORMANDY_HAPPY",	"{LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_LEADER_CVS_WILLIAM_ENGLAND_HAPPY}"	),
	
	-- AI warns player for settling too close (UNHAPPY)
	("en_US", "LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_LEADER_CVS_WILLIAM_ENGLAND_UNHAPPY",	"If you claimed that land as an attempt to provoke me, then you have failed. Do it again, however, and you shall not be so fortunate."	),
	("en_US", "LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_LEADER_CVS_WILLIAM_NORMANDY_UNHAPPY",	"{LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_LEADER_CVS_WILLIAM_ENGLAND_UNHAPPY}"	),
	
	-- Positive AI response to human request (HAPPY)
	("en_US", "LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_WILLIAM_ENGLAND_HAPPY",	"I had no intention to upset you when I claimed that land, for it was neutral ground. I shall be more careful in where I settle from now on."	),
	("en_US", "LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_WILLIAM_NORMANDY_HAPPY",	"{LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_WILLIAM_ENGLAND_HAPPY}"	),
	
	-- Positive AI response to human request (UNHAPPY)
	("en_US", "LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_WILLIAM_ENGLAND_UNHAPPY",		"I see little reason to care for such a request, but I will comply - for now."	),
	("en_US", "LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_WILLIAM_NORMANDY_UNHAPPY",		"{LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_WILLIAM_ENGLAND_UNHAPPY}"	),
	
	-- Negative AI response to human request (HAPPY)
	("en_US", "LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_CVS_WILLIAM_ENGLAND_HAPPY",	"Not that I do not sympathise with your perspective, but I cannot commit to that request."	),
	("en_US", "LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_CVS_WILLIAM_NORMANDY_HAPPY",	"{LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_CVS_WILLIAM_ENGLAND_HAPPY}"	),
	
	-- Negative AI response to human request (UNHAPPY)
	("en_US", "LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_CVS_WILLIAM_ENGLAND_UNHAPPY",		"Ha! What right have you to tell me where I can and cannot settle? You are asking for trouble, make no mistake."	),
	("en_US", "LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_CVS_WILLIAM_NORMANDY_UNHAPPY",		"{LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_CVS_WILLIAM_ENGLAND_UNHAPPY}"	),
	
-----------------------------------------------
-- Diplos | Trade
-----------------------------------------------	

	-- AI Accepts Deal (HAPPY)
	("en_US", "LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_CVS_WILLIAM_ENGLAND_HAPPY",	"This is an agreeable contract."	),
	("en_US", "LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_CVS_WILLIAM_NORMANDY_HAPPY",	"{LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_CVS_WILLIAM_ENGLAND_HAPPY}"	),
	
	-- AI Accepts Deal (Unhappy)
	("en_US", "LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_CVS_WILLIAM_ENGLAND_UNHAPPY",	"Barely acceptable."	),
	("en_US", "LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_CVS_WILLIAM_NORMANDY_UNHAPPY",	"{LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_CVS_WILLIAM_ENGLAND_UNHAPPY}"	),

	-- AI Rejects Deal (HAPPY)
	("en_US", "LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_CVS_WILLIAM_ENGLAND_HAPPY",	"You know I am no fool. A better deal would be preferred."	),
	("en_US", "LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_CVS_WILLIAM_NORMANDY_HAPPY",	"{LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_CVS_WILLIAM_ENGLAND_HAPPY}"	),
	
	-- AI Rejects Deal (Unhappy)
	("en_US", "LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_CVS_WILLIAM_ENGLAND_UNHAPPY",	"If you cannot make basic agreements, you have failed as a leader."	),
	("en_US", "LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_CVS_WILLIAM_NORMANDY_UNHAPPY",	"{LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_CVS_WILLIAM_ENGLAND_UNHAPPY}"	),

-----------------------------------------------
-- Diplos | Denounce
-----------------------------------------------	

	-- From Human
	("en_US", "LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_CVS_WILLIAM_ENGLAND_ANY",	"You are in no position to denounce the likes of me."	),
	("en_US", "LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_CVS_WILLIAM_NORMANDY_ANY",	"{LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_CVS_WILLIAM_ENGLAND_ANY}"	),
	
	-- From AI
	("en_US", "LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_CVS_WILLIAM_ENGLAND_ANY",	"Fools such as yourself deserve no position in charge of nations. No doubt, others will agree with me on this. (Denounces You)"	),
	("en_US", "LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_CVS_WILLIAM_NORMANDY_ANY",	"{LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_CVS_WILLIAM_ENGLAND_ANY}"	),
	
-----------------------------------------------
-- Diplos | Declarations of War
-----------------------------------------------	

	-- Human Declares War
	("en_US", "LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_CVS_WILLIAM_ENGLAND_ANY",	"Do you honestly believe that Normandy is so weak as to fall by your hand? I will show you the folly of your arrogance by spilling the blood of your soldiers."	),
	("en_US", "LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_CVS_WILLIAM_NORMANDY_ANY",	"{LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_CVS_WILLIAM_ENGLAND_ANY}"	),
	
	-- AI Declares War
	("en_US", "LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_CVS_WILLIAM_ENGLAND_ANY",	"I suggest you do not attempt to resist my forces. Believe me, your people would be much happier under my rule than yours."	), 
	("en_US", "LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_CVS_WILLIAM_NORMANDY_ANY",	"{LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_CVS_WILLIAM_ENGLAND_ANY}"	), 

-----------------------------------------------
-- Diplos | Make Peace
-----------------------------------------------	
	
	-- AI accepts from human
	("en_US", "LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_CVS_WILLIAM_ENGLAND_ANY",		"It is time to put down our swords. Sign the treaty and put an end to this war."	),
	("en_US", "LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_CVS_WILLIAM_NORMANDY_ANY",	"{LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_CVS_WILLIAM_ENGLAND_ANY}"	),
	
	-- AI refuses human
	("en_US", "LOC_DIPLO_MAKE_PEACE_AI_REFUSE_DEAL_LEADER_CVS_WILLIAM_ENGLAND_ANY",		"Unacceptable. You are weak and I will take you for everything you are worth."	),
	("en_US", "LOC_DIPLO_MAKE_PEACE_AI_REFUSE_DEAL_LEADER_CVS_WILLIAM_NORMANDY_ANY",	"{LOC_DIPLO_MAKE_PEACE_AI_REFUSE_DEAL_LEADER_CVS_WILLIAM_ENGLAND_ANY}"	),
	
	-- AI requests from human
	("en_US", "LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_CVS_WILLIAM_ENGLAND_ANY",	"I see no reason to prolong the bloodshed. Bring this war to a close, and we can maintain a semblance of peace."	),
	("en_US", "LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_CVS_WILLIAM_NORMANDY_ANY",	"{LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_CVS_WILLIAM_ENGLAND_ANY}"	),

-----------------------------------------------
-- Diplos | Defeat
-----------------------------------------------	
	
	-- AI is Defeated
	("en_US", "LOC_DIPLO_DEFEAT_FROM_AI_LEADER_CVS_WILLIAM_ENGLAND_ANY",	"Normandy has fallen to the likes of you? Do not rejoice in your victory - Normandy will not be forgotten, and its people will never acknowledge your inferior leadership."	),
	("en_US", "LOC_DIPLO_DEFEAT_FROM_AI_LEADER_CVS_WILLIAM_NORMANDY_ANY",	"{LOC_DIPLO_DEFEAT_FROM_AI_LEADER_CVS_WILLIAM_ENGLAND_ANY}"	),

	-- Human is Defeated (will see this in hotseat)
	("en_US", "LOC_DIPLO_DEFEAT_FROM_HUMAN_LEADER_CVS_WILLIAM_ENGLAND_ANY",		"Normandy has fallen to the likes of you? Do not rejoice in your victory - Normandy will not be forgotten, and its people will never acknowledge your inferior leadership."	),
	("en_US", "LOC_DIPLO_DEFEAT_FROM_HUMAN_LEADER_CVS_WILLIAM_NORMANDY_ANY",	"{LOC_DIPLO_DEFEAT_FROM_HUMAN_LEADER_CVS_WILLIAM_ENGLAND_ANY}"	),

--------------------------------------------------------------------
-- Quote and Pedia
--------------------------------------------------------------------

	("en_US", "LOC_PEDIA_LEADERS_PAGE_CVS_WILLIAM_ENGLAND_QUOTE",	"Alas! I became the murderer of many thousands of that fine race."  	),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_CVS_WILLIAM_NORMANDY_QUOTE",	"{LOC_PEDIA_LEADERS_PAGE_CVS_WILLIAM_ENGLAND_QUOTE}"  	),
	
	("en_US", "LOC_PEDIA_LEADERS_PAGE_CVS_WILLIAM_ENGLAND_TITLE",	"William"),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_CVS_WILLIAM_NORMANDY_TITLE",	"William"),
	
	("en_US", "LOC_PEDIA_LEADERS_PAGE_CVS_WILLIAM_ENGLAND_SUBTITLE",	"William the Conqueror, Duke of Normandy, King of England"	),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_CVS_WILLIAM_NORMANDY_SUBTITLE",	"William the Conqueror, Duke of Normandy, King of England"	),
	
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_WILLIAM_ENGLAND_CHAPTER_CAPSULE_BODY",		"It is wealth, production, and a strong war footing that will weave William's legacy into the tapestry of history."),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_WILLIAM_NORMANDY_CHAPTER_CAPSULE_BODY",	"{LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_WILLIAM_ENGLAND_CHAPTER_CAPSULE_BODY}"),
	
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_WILLIAM_ENGLAND_CHAPTER_DETAILED_BODY",	"Under William, cities can thrive in places that would otherwise prove difficult to retain Loyalty. He will look to strike a delicate balance between knowing when to build foundations to serve his people, and when to push forward in a bid for conquest. Seeking to gain strong war footing, he will use his Loyalty bonuses from established Governors in cities to ensure that they do not rebel, and keep them protected from invasion with his unique unit, the Familia Regis."	),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_WILLIAM_NORMANDY_CHAPTER_DETAILED_BODY",	"{LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_WILLIAM_NORMANDY_CHAPTER_DETAILED_BODY}"	),

	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_WILLIAM_ENGLAND_CHAPTER_HISTORY_PARA_1",	"William the Conqueror, the future William I of England, was born between 1027 and 1028 at Falaise in Normandy. As the product of a brief relationship between his father, Robert, the 2nd Duke of Normandy and his mother, Herleva, the daughter of a local tanner, William came to be known as the Bastard by his contemporaries. After the death of his father in 1035, the boy William inherited the Duchy of Normandy with his great uncle acting as regent. Due to his illegitimacy, there were several Norman magnates who refused to accept the young William as the rightful heir and in 1040 they hatched a plan to murder him. The plot failed but William’s guardians were killed."),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_WILLIAM_ENGLAND_CHAPTER_HISTORY_PARA_2",	"By 1045 William was old enough to take control of the Duchy and successfully crushed the first threat to his power in 1047 at Val-es-Dunes. It was after a visit to his distant cousin, King Edward the Confessor, in 1051 that William alleged he had been promised the throne of England. This was later confirmed with Harold’s Godwinson’s visit in 1064. After King Edward’s death and the coronation of Harold as Harold II in January 1066, William prepared to invade the country. The Norman army arrived at Pevensey on September 28th and defeated the English at the Battle of Hastings on October 14th. After his coronation on Christmas Day 1066, William spent the early years of his reign stamping out English resistance and strengthening the borders, including the building of defensive “marcher” counties along the border of Wales in 1081."),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_WILLIAM_ENGLAND_CHAPTER_HISTORY_PARA_3",	"William transformed the English landscape with his ambitious castle-building programme and replaced much of the English aristocracy and Church with his fellow Normans and other Frenchmen. From 1072, William spent most of his time attending to business in Normandy and leaving the kingdom in the hands of governing regents. While away in 1075, his men put down the Revolt of the Earls, the last serious threat to William’s power. On hearing of the rebellion, William returned to England and ordered the execution of one of the ring-leaders, Waltheof. This was the only time that William resorted to using capital punishment on a member of the English aristocracy during his reign."),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_WILLIAM_ENGLAND_CHAPTER_HISTORY_PARA_4",	"In his lands in France, William dealt with two major rebellions; his son, Robert Curthose, attempted to seize power in Normandy 1077 and another in Maine in 1083. Problems arose also with his half-brother, Odo of Bayeux. Accused of oppression and misgovernment in William’s absence, Odo was arrested and imprisoned for five years."),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_WILLIAM_ENGLAND_CHAPTER_HISTORY_PARA_5",	"In 1086, faced with the threat of foreign invasion, William commissioned Domesday, the most famous land survey in England’s history. The reason for the survey remains a mystery but it gave him detailed information on England’s land and resources. On its completion in August 1086, William summoned his noblemen and had them swear an oath of fealty."),	
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_WILLIAM_ENGLAND_CHAPTER_HISTORY_PARA_6",	"In the following year, involved in fighting against the French king, William was injured after falling from his horse. He was taken to St Gervase and ordered that his son, Robert, should succeed him in Normandy and, William Rufus, in England. William the Conqueror died on September 9th 1087 and was buried at the abbey church of St Etienne in Caen, Normandy."),		
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_WILLIAM_ENGLAND_CHAPTER_HISTORY_PARA_7",	"William left a profound mark on both Normandy and England and is one of the most important figures of medieval English history. His personal resolve and good fortune allowed him to survive the anarchy of Normandy in his youth, and he gradually transformed the duchy into the leading political and military power of northern France. His support for monastic reform and improved episcopal organization earned him respect from church leaders and further strengthened his hand in the duchy."),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_WILLIAM_ENGLAND_CHAPTER_HISTORY_PARA_8",	"His conquest of England in 1066 altered the course of English history, even though he adopted a number of Anglo-Saxon institutions and continued various social and economic trends that had begun before 1066. The English church was Normanized by William and brought more fully into line with developments on the Continent. William also imposed a new aristocracy on England that was French in language and culture; English language and literature and art and architecture were transformed because of William’s conquest. The new king and his nobility were also very much involved with affairs in Normandy and France, and, therefore, the orientation of English royal policy shifted toward Continental affairs. New forms of land tenure and military service were established after the conquest, and castles dotted the landscape as a symbol of the new regime. As conqueror and king, William significantly shaped the history of England."),
	
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_WILLIAM_NORMANDY_CHAPTER_HISTORY_PARA_1",	"{LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_WILLIAM_ENGLAND_CHAPTER_HISTORY_PARA_1}"),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_WILLIAM_NORMANDY_CHAPTER_HISTORY_PARA_2",	"{LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_WILLIAM_ENGLAND_CHAPTER_HISTORY_PARA_2}"),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_WILLIAM_NORMANDY_CHAPTER_HISTORY_PARA_3",	"{LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_WILLIAM_ENGLAND_CHAPTER_HISTORY_PARA_3}"),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_WILLIAM_NORMANDY_CHAPTER_HISTORY_PARA_4",	"{LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_WILLIAM_ENGLAND_CHAPTER_HISTORY_PARA_4}"),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_WILLIAM_NORMANDY_CHAPTER_HISTORY_PARA_5",	"{LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_WILLIAM_ENGLAND_CHAPTER_HISTORY_PARA_5}"),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_WILLIAM_NORMANDY_CHAPTER_HISTORY_PARA_6",	"{LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_WILLIAM_ENGLAND_CHAPTER_HISTORY_PARA_6}"),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_WILLIAM_NORMANDY_CHAPTER_HISTORY_PARA_7",	"{LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_WILLIAM_ENGLAND_CHAPTER_HISTORY_PARA_7}"),
	("en_US", "LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_WILLIAM_NORMANDY_CHAPTER_HISTORY_PARA_8",	"{LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_WILLIAM_ENGLAND_CHAPTER_HISTORY_PARA_8}"),

	("en_US", "LOC_PEDIA_UNITS_PAGE_UNIT_CVS_WILLIAM_UU_CHAPTER_HISTORY_PARA_1",			"The true core of the Norman army was the familia regis, or kings military household. The troops of the familia were professional mercenary troops who were paid for full-time military service. It must be understood that, during the 11th century, the term ‘mercenary’ did not carry the negative baggage it does today. The modern image of the mercenary is that of an untrustworthy and unscrupulous killer for hire. In contrast the paid members of the familia often showed intense loyalty towards their lord and their lord to them. The loyalty displayed by the familia was often far stronger than that shown to a lord by his feudal subjects. Even when mercenary troops were not officially part of a lord’s familia they often displayed a sense of professionalism and loyalty far greater than their feudal counterparts."	),
	("en_US", "LOC_PEDIA_UNITS_PAGE_UNIT_CVS_WILLIAM_UU_CHAPTER_HISTORY_PARA_2",			"During the siege of Bridgnorth in 1102 Robert of Belleme’s garrison was made up of a combination of mercenary and feudal troops. Unknown to either Robert or his mercenaries, the feudal members of the garrison cut a deal with the besieging army and surrendered the castle, much to the dismay of the mercenaries and surely to Robert himself. William FitzOzbern, one of the closest confidants of William I, was well known for bestowing lavish gifts upon the members of his familia, in spite of incurring the king’s displeasure over what he saw as excess. Upon his deathbed Henry I, the Conqueror’s son, professed concern about the welfare and care of his familia troops. Such was the bond of loyalty that one of Henry’s last thoughts concerned these comrades in arms. The combination of money and shared loyalty created a strong bond between a Norman lord and his personal troops."	),
	("en_US", "LOC_PEDIA_UNITS_PAGE_UNIT_CVS_WILLIAM_UU_CHAPTER_HISTORY_PARA_3",			"A lord’s feudal subjects often expressed contempt for these paid soldiers, since they saw them as inferior and of base station. Apparently the familia often showed equal contempt for the lord’s ‘noble’ subjects, who they saw as dishonest and without honor. This could undoubtedly lead to friction within an army and it would take a leader as strong as many of these Norman lords to maintain control.  To place the familia in a modern context we may view them as the professional active-duty arm of the Norman army, with the feudal host as a form of reserve that would be called into service in time of greater need. The presence of familia troops in post-conquest England doesn’t seem to have been as great as in continental Normandy. The size of a Norman army was limited due to issues of transport and supply, as such the Saxon fyrd continued to supplement Norman troops in England after 1066. A soldier of the Norman familia shared much in common with the Saxon housecarl. The principals of service and loyalty were much the same. Perhaps this similarity is due to their common roots in the Nordic and Germanic areas of northern Europe. As such, the professional soldiers of the familia formed the truly effective arm of Norman military might."	);
	
	