--========================================================================================================================
-- LocalizedText
--========================================================================================================================
WITH CTE(LeaderTag) AS
	(SELECT CASE
		WHEN EXISTS (SELECT * FROM LocalizedText WHERE Tag = 'LOC_CIVILIZATION_ETHIOPIA_NAME')
		THEN 'SUK_ZARAYAQOB_DLC'
		ELSE 'SUK_ZARAYAQOB'
		END LeaderTag
	)
INSERT OR REPLACE INTO BaseGameText
		(Tag,					Text)
SELECT * FROM (VALUES
--========================================================================================================================
-- Zara Yaqob
--========================================================================================================================
		("LOC_LEADER_"||(SELECT LeaderTag FROM CTE)||"_NAME",
		"Zara Yaqob"),
--------------------------------------------------------------------------------------------------------------------------
-- Loading Screen
--------------------------------------------------------------------------------------------------------------------------
		("LOC_LOADING_INFO_LEADER_"||(SELECT LeaderTag FROM CTE)||"",
		"It is the Lord's will that guides your hand, pious Emperor Zara Yaqob. Make your empire a bastion for the faithful, building great churches across the land, and watch as your people's faith brings them to glory. Rule wisely, and let Ethiopia be a Mount of Light, shining as a beacon for all the world."  	),
--------------------------------------------------------------------------------------------------------------------------
-- Diplo
--------------------------------------------------------------------------------------------------------------------------
-- First Meet
-------------------------------------
		("LOC_DIPLO_FIRST_MEET_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
		"I am the Emperor Constantine I of Ethiopia, though perhaps you know me as Zara Yaqob. I welcome you to my most holy empire."),
		("LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
		"People are always astounded by our churches. The city nearby has a few, I invite you to visit."),
		("LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
		"I gladly accept."),
		("LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
		"I founded Debre Berhan at the Lord's behest. What of your capital?"),
-------------------------------------
-- Agenda Diplo
-------------------------------------
		("LOC_DIPLO_KUDO_EXIT_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
		"Truly, it is gratifying to see our faith spread so far!"),
		("LOC_DIPLO_WARNING_EXIT_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
		"I cannot feel comfortable with heathens so close. I pray you will find the light."),
-------------------------------------
-- War and Peace
-------------------------------------
	-- Human Declares War
		("LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
		"We are blessed by the saints! Ethiopia shall not fail!"),
	-- AI Declares War
		("LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
		"Your blasphemous words leave me no choice. I hereby declare war."),
	-- Making Peace
		("LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
		"Well fought. We have both earned this peace."),
		("LOC_DIPLO_MAKE_PEACE_AI_REFUSE_DEAL_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
		"No. I cannot accept."),
		("LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
		"For the sake of our peoples, I beg you to end this war."),
	-- Defeat
		("LOC_DIPLO_DEFEAT_FROM_AI_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
		"If Ethiopia falls, then it is no doubt God's will. I pray you be merciful."),
-------------------------------------
-- DoF
-------------------------------------
		("LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
		"Ethiopia is a stronghold of the faith, and perhaps you are too. Will you join me in friendship?"),
	-- AI requested friendship
		("LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_AI_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
		"Wonderful. May our friendship be blessed by all the Saints."),
		("LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_AI_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
		"A shame. But if it is not part of God's plan, it will not come to pass."),
	-- On human requests friendship
		("LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
		"I accept. The Lord wills it."),
		("LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
		"I will not be inclined to agree until I am convinced of your devotion to God. No."),
-------------------------------------
-- Delegation
-------------------------------------
		("LOC_DIPLO_DELEGATION_FROM_AI_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
		"I have sent a delegation with dabo kolo and coffee. Please, enjoy."),
		("LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
		"Your delegation has arrived. I thank you sincerely for the gifts."),
		("LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
		"The Lord has given us many gifts. We have no need for your trinkets."),
-------------------------------------
-- Denounce
-------------------------------------
		("LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
		"Why would I care for the words of a heretic? Your words are naught but wind."),
		("LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
		"Blasphemers like you are a stain upon the earth."),
-------------------------------------
-- Alliance
-------------------------------------
		("LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
		"Our successes make it clear that our partnership has been blessed by God. Let us cement and declare our friendship to the world with an alliance!"),
-------------------------------------
-- Misc Standard Lines
-------------------------------------
		("LOC_DIPLO_GREETING_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
		"Welcome."),
		("LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
		"As a servant of God, I cannot agree."),
		("LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
		"Praise the Lord! This is excellent."),
		("LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
		"I beg you permit my people, servants of the Lord, to pass through your lands."),
		("LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
		"You may pass through Ethiopia, with my blessing. Godspeed."),
		("LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
		"I cannot allow heathens and heretics enter Ethiopia. I am sorry."),
		("LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_"||(SELECT LeaderTag FROM CTE)||"_ANY",
		"If you are trying to intimidate us with your army, it’s not working. Move them, or face the consequences."),
--------------------------------------------------------------------
-- Quote and Pedia
--------------------------------------------------------------------
		("LOC_PEDIA_LEADERS_PAGE_"||(SELECT LeaderTag FROM CTE)||"_QUOTE",
		"Do not weep O’ Christian people, and do not feel afflicted because the monastery of Mitmaq in Egypt has been destroyed. We will build here a church to Our Holy Virgin Mary and will call it Debre Mitmaq."  	),
		("LOC_PEDIA_LEADERS_PAGE_"||(SELECT LeaderTag FROM CTE)||"_TITLE",
		"Zara Yaqob"),
		("LOC_PEDIA_LEADERS_PAGE_"||(SELECT LeaderTag FROM CTE)||"_SUBTITLE",
		"Negusa Nagast of Ethiopia"),
		("LOC_PEDIA_LEADERS_PAGE_LEADER_"||(SELECT LeaderTag FROM CTE)||"_CHAPTER_CAPSULE_BODY",
		"Ethiopia is a paragon of religious and architectural prowess. Zara Yaqob provides in invaluable administrative touch once the ball starts rolling."),
		("LOC_PEDIA_LEADERS_PAGE_LEADER_"||(SELECT LeaderTag FROM CTE)||"_CHAPTER_DETAILED_BODY",
		"Ethiopia has multiple incentives to prioritise [ICON_Faith] Faith generation, most prominently the ability to utilise your surplus [ICON_Faith] Faith to expand and grow. Good Holy Site district placement also will provide a nice production bonus with the Rock-Hewn Church, so place them well. You will want to place many of them in fact, because with enough Holy Site districts, you will earn additional Wildcard policy slots from Zara Yaqob's ability."),
		("LOC_PEDIA_LEADERS_PAGE_LEADER_"||(SELECT LeaderTag FROM CTE)||"_CHAPTER_HISTORY_PARA_1",
		"Zara Yaqob was Emperor of Ethiopia from 1434 until 1468. A member of the Solomonic Dynasty, which traced its heritage back to the Biblical King Solomon, Zara Yaqob was an extremely devout, if occasionally draconian, ruler. Confined to the Amba Geshen prison for the early years of his life due to being a potential threat to his brother Tewodros's grip on the throne, Zara Yaqob only gained monarchal power in 1434 after his brother's death."),
		("LOC_PEDIA_LEADERS_PAGE_LEADER_"||(SELECT LeaderTag FROM CTE)||"_CHAPTER_HISTORY_PARA_2",
		"At the time Zara Yaqob assumed the throne, the Ethiopian church had been divided over the issue of Biblical Sabbath observance for roughly a century. One group, loyal to the Coptic bishops, believed that the day of rest should be observed only on Sunday, or Great Sabbath; another group, the followers of Ewostatewos, believed with their founder that both the original seventh-day Sabbath (i.e., Saturday, or Lesser Sabbath) and Sunday should be observed."),
		("LOC_PEDIA_LEADERS_PAGE_LEADER_"||(SELECT LeaderTag FROM CTE)||"_CHAPTER_HISTORY_PARA_3",
		"He was successful in persuading two recently arrived Egyptian bishops, Mikael and Gabriel, into accepting a compromise aimed at restoring harmony with the House of Ewostatewos, as the followers of Ewostatewos were known. At the same time, he made efforts to pacify the House of Ewostatewos. While the Ewostathians were won over to the compromise by 1442, the two bishops only agreed to the compromise at the Council of Debre Mitmaq in Tegulet ."),
		("LOC_PEDIA_LEADERS_PAGE_LEADER_"||(SELECT LeaderTag FROM CTE)||"_CHAPTER_HISTORY_PARA_4",
		"Emperor Zara Yaqob also continued as the defender of the Patriarch of Alexandria. When he heard in 1441 of the destruction of the Egyptian monastery of Debre Mitmaq by Sultan Az-Zahir Sayf-ad-Din Jaqmaq, he called for a period of mourning, then sent a letter of strong protest to the Sultan. He reminded Jaqmaq that he had Muslim subjects whom he treated fairly, and warned that he had the power to divert the Nile, but refrained from doing so for the human suffering it would cause. Jaqmaq responded with gifts to appease Zara Yaqob's anger, but refused to rebuild the Coptic Churches he had destroyed."),
		("LOC_PEDIA_LEADERS_PAGE_LEADER_"||(SELECT LeaderTag FROM CTE)||"_CHAPTER_HISTORY_PARA_5",
		"Zara Yaqob sent delegates to the Council of Florence in 1441, and established ties with the papacy and Western Christianity. They were confused when council prelates insisted on calling their monarch Prester John. They tried to explain that nowhere in Zara Yaqob's list of regnal names did that title occur. However, the delegates' admonitions did little to stop Europeans from referring to the monarch as their mythical Christian king, Prester John."),
		("LOC_PEDIA_LEADERS_PAGE_LEADER_"||(SELECT LeaderTag FROM CTE)||"_CHAPTER_HISTORY_PARA_6",
		"Zara Yaqob was strict in his religious beliefs. Citizens who did not rigidly follow the prescripts of the Christian Church and adorn themselves with religious markings were put to death. If a person admitted to, or was accused of, worshipping the devil (or another non-Christian god), they were put to death. Even Zara Yaqob's own family was not sheltered from these punishments. Several were beaten and put to death, including his own wife, in an effort to give credibility to his harsh punishments, which were widely criticized."),
		("LOC_PEDIA_LEADERS_PAGE_LEADER_"||(SELECT LeaderTag FROM CTE)||"_CHAPTER_HISTORY_PARA_7",
		"After a conspiracy organized by one of his subordinates came to light early in his reign, Zara Yaqob started exhibiting signs of paranoia. He began replacing all of his higher officials with female family members whom he felt he could trust. The emperor eventually attempted to appoint his own sisters, daughters and nieces to various governorships. Due to this paranoia, Zara Yaqob's reign is distinguished as being uniquely female dominated in a time when men traditionally held the majority of social power."),
		("LOC_PEDIA_LEADERS_PAGE_LEADER_"||(SELECT LeaderTag FROM CTE)||"_CHAPTER_HISTORY_PARA_8",
		"Known mostly for his draconian religious laws, Zara Yaqob nonetheless was a practical leader and managed to protect Ethiopian interests from outside influence for the duration of his reign. Several of his progressive writings on religion, including the Mashafa Berha (The Book of Light) and the Mashafa Milad (The Book of Nativity), are still available today.")
);
--========================================================================================================================
--========================================================================================================================
