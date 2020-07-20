/*
	Localisation
	Credits: WeeklyMeat
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT OR REPLACE INTO LocalizedText (Tag, Language, Text)
VALUES

-----------------------------------------------
-- Leader
-----------------------------------------------	
	
	("LOC_LEADER_CVS_ESCHER_NAME",	"de_DE",	"Alfred Escher"	),
	
-----------------------------------------------
-- UA
-----------------------------------------------	

	("LOC_TRAIT_LEADER_CVS_ESCHER_UA_NAME",	"de_DE",	"Pionier des Gotthards"	),
	("LOC_TRAIT_LEADER_CVS_ESCHER_UA_DESCRIPTION",	"de_DE",	
	"Industrielle Gebiete erhalten einen Nachbarschafts-Bonus von Bergen, ausserdem geben dessen Gebäude einen Bonus von +2 [ICON_Production] Produktion und +4 [ICON_Gold] Gold für Städte innerhalb von 6 Geländefeldern"	),

	("LOC_MODIFIER_CVS_ESCHER_UA_INDUSTRIAL_ADJ_MOUNTAIN",	"de_DE",	"+{1_num} [ICON_Production] Produktion von benachbarten {1_Num : plural 1?Mountain; other?Mountains;}."	),

-----------------------------------------------
-- Agenda
-----------------------------------------------	

	("LOC_AGENDA_CVS_ESCHER_NAME",	"de_DE",	"Schweizer Prinzipien"	),
	("LOC_AGENDA_CVS_ESCHER_DESCRIPTION",	"de_DE",	"Versucht Kriege zu vermeiden und mag Zivilisationen mit starker Wirtschaft. Mag Zivilisationen mit kleiner Produktion nicht."	),
	("LOC_DIPLO_KUDO_LEADER_CVS_ESCHER_REASON_ANY",	"de_DE",	
	"(Du bist wohlhabend und Produktiv.)"	),
	("LOC_DIPLO_MODIFIER_CVS_ESCHER_HAPPY",	"de_DE",	
	"Escher gefällt deine Wirtschaft und lobt deine Produktivität."	),
	("LOC_DIPLO_WARNING_LEADER_CVS_ESCHER_REASON_ANY",	"de_DE",	
	"(Deine Produktion ist schlecht.)"	),
	("LOC_DIPLO_MODIFIER_CVS_ESCHER_UNHAPPY",	"de_DE",	
	"Escher ist unzufrieden mit deiner Produktivität."	),
		
-----------------------------------------------
-- Diplos
-----------------------------------------------	

-- DOM
	("LOC_LOADING_INFO_LEADER_CVS_ESCHER",	"de_DE",	
	"Glaub an deinen Ehrgeiz, Alfred Escher, grosser Pionier der Eisenbahnen, die Kantone der Schweiz glauben an deine Führungsstärke. In deiner bescheidenen Nation wirst du weise planen und die bergige Landschaft nutzen, um die Industrie der Schweiz massgäblich zu prägen. Bleibe deinem Rat treu, sei Gnädig mit kleineren Nationen, und im gegenzug werden deine Kantone Entlohnung finden."  	),

-- FIRST MEET
	-- First AI Line
	("LOC_DIPLO_FIRST_MEET_LEADER_CVS_ESCHER_ANY",	"de_DE",	
	"Ah, ein Reisender? Willkommen, mein Freund, zu der schönsten Nation diser Erde, die wir Schweiz nennen. Ich bin Johan Heinrich Alfred Escher vom Glas - aber bitte, nenn mich Alfred." ),
	
	-- AI invitation to visit nearby City
	("LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_CVS_ESCHER_ANY",	"de_DE",	
	"Ihr seid in der Nähe einer meiner Städte, wie mir scheint. Würdet Ihr mir einen Besuch abstatten? Vielleicht könnten wir ein paar Unternehmenseigenschaften besprechen."	),
	
	-- AI accepts human invitation
	("LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_CVS_ESCHER_ANY",	"de_DE",	
	"Fantastisch!"	),
	
	-- AI invitation to exchange Capital Information
	("LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_CVS_ESCHER_ANY",	"de_DE",	
	"Ich würde vorschlagen, dass wir ein paar Informationen über unsere Hauptstädte austauschen. Es würde immerhin die Beziehung unserer Bevölkerung beträchtlich heben."	),

-- GREETINGS	
	("LOC_DIPLO_GREETING_LEADER_CVS_ESCHER_ANY",	"de_DE",	
	"Bitte, fahrt fort."	),
	
-- DELEGATION
	-- AI Accepts
	("LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_CVS_ESCHER_ANY",	"de_DE",	
	"Eure Delegation wurde von unseren Kantonen herzlichst begrüsst!"	),
	
	-- AI Rejects
	("LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_CVS_ESCHER_ANY",	"de_DE",	
	"Ah, Ich bedauere, dass Ich das für den Moment nicht annehmen kann."	),
	
	-- AI Requests
	("LOC_DIPLO_DELEGATION_FROM_AI_LEADER_CVS_ESCHER_ANY",	"de_DE",	
	"Die Schweizer Regierung eine Delegation bereit gestellt, die Schweizer Delikatessen wie Käse und Schokolade mit sich bringt! Natürlich ist auch etwas Gold dabei. Bitte, nehmt dieses Geschenk an."	),
	
-- OPEN BORDERS
	-- AI accepts from human	
	("LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_ESCHER_ANY",	"de_DE",	
	"Auf jeden Fall, ein offene Grenzen wären für uns beide vorteilhaft."	),
	
	-- AI rejects from human	
	("LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_ESCHER_ANY",	"de_DE",	
	"Ich muss mich entschuldigen, aber im Moment habe Ich nicht die Möglichkeit, diese Vereinbarung anzunehmen."	),
	
	-- AI requests from human	
	("LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_CVS_ESCHER_ANY",	"de_DE",	
	"Das Öffnen unserer Grenzen ist eine tolle Möglichkeit unsere Freundschaft und Vertrauen zu zeigen, und Heute muss ich dich um eine solche Vereinbarung bitten; würdest du mir dies gewähren?"	),
	
-- DECLARE FRIENDSHIP

	-- AI accepts from human	
	("LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_ESCHER_ANY",	"de_DE",	
	"Es erfreut mich sehr, dass unsere Nationen diese Vereinbarung treffen können!"	),
	
	-- AI rejects from human	
	("LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_ESCHER_ANY",	"de_DE",	
	"Mit schwerem Herzen muss Ich für diesesmal ablehnen, aber fühlt euch frei zu einem spöteren Zeitpunkt nochmal zu fragen."	),
	
	-- AI Requests friendship from human	
	("LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_CVS_ESCHER_ANY",	"de_DE",	
	"Eure Nation und euer Volk ist eine grosse Inspiration für uns. Als Dankbarkeit dessen, möchte Ich euch die Freundschaft der Schweiz anbieten"	),
	
	-- Human accepts AI requests, AI responds	
	("LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_ESCHER_ANY",	"de_DE",	
	"Wundervoll, Ich werde diese tollen Neuigkeiten sofort in unseren Kantonen verkünden!"	),
	
	-- Human rejects AI requests, AI responds	
	("LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_ESCHER_ANY",	"de_DE",	
	"Wie bedauerlich... aber Ich kann es verstehen."	),

-- ALLIANCE

	-- AI Requests an alliance from human
	("LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_CVS_ESCHER_ANY",	"de_DE",	
	"Ich bin selten in einer Position, in der Ich die um mich herum 'Verbündete' nennen kann, aber ihr stecht wirklich als jemand heraus, der diesen Titel verdient hat."	),

-- KUDOS & WARNINGS
	
	-- AI Kudos
	("LOC_DIPLO_KUDO_EXIT_LEADER_CVS_ESCHER_ANY",	"de_DE",	
	"Eine Nation ist nichts, wenn ihr es an Produktivität fehlt - und Produktivität kann nicht ohne Kapital erreicht werden. Ihr versteht das sehr gut."	),
	
	-- AI Warnings
	("LOC_DIPLO_WARNING_EXIT_LEADER_CVS_ESCHER_ANY",	"de_DE",	
	"Abgesehen davon was ihr zu tun vermagt oder getan habt, eure Bevölkerung macht wenig und eure Schatzkammern sind fast leer. Ihr seid ein schlechtes Vorbild für die um euch herum."	),
	
	-- AI warns player for border troops
	("LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_CVS_ESCHER_ANY",	"de_DE",	
	"Ich hoffe sehr, dass Ihr nicht vorhabt, unserer Nation den Krieg zu erklären. Bitte, entfernt eure Truppen von der Schweizer Grenze, bevor Ihr einen grossen Fehler macht."	),

-- TRADE
	
	-- AI Accepts Deal
	("LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_CVS_ESCHER_ANY",	"de_DE",	
	"Das wird sich gut tun, Ich danke Euch."	),

	-- AI Rejects Deal
	("LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_CVS_ESCHER_ANY",	"de_DE",	
	"Eine Schande, dass wir uns nicht einigen konnten."	),

-- DENOUNCE
	
	-- From Human
	("LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_CVS_ESCHER_ANY",	"de_DE",	
	"Eure Worte sind fade und leer. Sie werden weder vergessen, noch vergeben werden von unserer Nation."	),
	
	-- From AI
	("LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_CVS_ESCHER_ANY",	"de_DE",	
	"Ihr seid meinen Respekts zu unwürdig, oder den derer die euch umgeben, und Ich werde sicherstellen, dass das die ganze Welt erfährt. (Ihr wurdet Denunziert)"	),
	
-- DOW
	
	-- Human Declares War
	("LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_CVS_ESCHER_ANY",	"de_DE",	
	"Ihr Narr. Wir sind keine kriegslustige Nation, doch der Fakt, dass unser Land gerade steht sollte Euch klar gemacht haben, dass wir weit davon entfernt sind, hilflos zu sein. Diese Ignoranz wird euer Untergang sein."	),
	
	-- AI Declares War
	("LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_CVS_ESCHER_ANY",	"de_DE",	
	"Damit Ihr es wisst, Ich wollte diesen Krieg nicht.  Jedoch habt ihr mich zu dieser Tat gezwungen und mir keine andere Möglichkeit offen gelassen."	), 

-- MAKE PEACE
	
	-- AI accepts from human
	("LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_CVS_ESCHER_ANY",	"de_DE",	
	"Damit bin Ich einverstanden. Auf lange Zeit gesehen ist Frieden viel profitabler, für beide von uns."	),
	
	-- AI refuses human
	("LOC_DIPLO_MAKE_PEACE_AI_REFUSE_DEAL_LEADER_CVS_ESCHER_ANY",	"de_DE",	
	"Mit Leben auf der Kippe, sogar ein Mann ohne Sinn für gute Geschäfte würde diesen Handel für das sehen, was es ist. Ein solches Geschäft ist unakzeptabel."	),
	
	-- AI requests from human
	("LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_CVS_ESCHER_ANY",	"de_DE",	
	"Ich komme, um einen Waffenstillstand zu vereinbaren. Ich bin sicher, dass Wir eine Vereinbarung finden können, von der beide Profitieren."	),

-- DEFEAT
	
	-- AI is Defeated
	("LOC_DIPLO_DEFEAT_FROM_AI_LEADER_CVS_ESCHER_ANY",	"de_DE",	
	"Ich gehe vielleicht unter, aber die Schweiz hat sich schon in der Vergangenheit bewiesen und sich befreien können. Macht keinen Fehler, unsere Nation wird zurückkehren und gedeihen."	),

	-- Human is Defeated (will see this in hotseat)
	("LOC_DIPLO_DEFEAT_FROM_HUMAN_LEADER_CVS_ESCHER_ANY",	"de_DE",	
	"Ich gehe vielleicht unter, aber die Schweiz hat sich schon in der Vergangenheit bewiesen und sich befreien können. Macht keinen Fehler, wir werden zurückkehren und gedeihen."	),

--------------------------------------------------------------------
-- Quote and Pedia
--------------------------------------------------------------------

	("LOC_PEDIA_LEADERS_PAGE_CVS_ESCHER_QUOTE",	"de_DE",	
	"Glück bevorzugt vielleicht die Mutigen, aber Beständigkeit wird mit Erfolg belohnt."  	),
	
	("LOC_PEDIA_LEADERS_PAGE_CVS_ESCHER_TITLE",	"de_DE",	
	"Alfred Escher"),
	
	("LOC_PEDIA_LEADERS_PAGE_CVS_ESCHER_SUBTITLE",	"de_DE",	
	"Schweizer Politiker, Geschäftsführer und Pionier der Eisenbahn"	),
	
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_ESCHER_CHAPTER_CAPSULE_BODY",	"de_DE",	
	"Mit seiner Exzellenten Planung für die Zukunft sticht Escher mit hoher Produktivität und einer hoch profitablen Nation heraus."),
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_ESCHER_CHAPTER_DETAILED_BODY",	"de_DE",	
	"Schweizer Städte können die meisten anderen Städte mit der Hilfe von Stadtstaaten ausmanövrieren, doch unter Escher wird es Ihre Produktion sein, die sie zum Sieg geleitet. Mit der Schweizer Fähigkeit durch Gouverneure Erfolg zu finden wird Escher durch den einzigartigen Bezirk der Schweiz, das Kantonsparlament, andere Spezialbezirke Unterstützen und durch das hierdurch freigeschaltete Projekt Stadtstaaten für sich gewinnen. Mit solch einem Vertrauen in sein Geschick mit Beziehungen zu Stadtstaaten gepaart mit dem Reisläufer wird Schutz geboten. Dies ist eine einzigartige Einheit der Schweiz, welche über einen besonderen Beförderungsbaum verfügt. Jedoch wird es die scharfsinnige Platzierung des Produktionsviertels in Reichweite der Berge sein, von der Eschers Imperium wirklich profitieren wird. Mit zusätzlichen Bonussen für Produktion und Gold wird eine neue Stadt in Reichweite dieser Bonusse spriessen und Escher in einer so guten Position hinterlassen, dass er in jeder Siegesvariante Konkurrieren kann."	),

	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_ESCHER_CHAPTER_HISTORY_PARA_1",	"de_DE",	
	"Alfred Escher war eine dominante Figur in der Zürcher Politik im 19. Jahrhundert und ein lands bekannter Gesetzgeber, der als Grossindustrieller der Eisenbahnbranche eine Leitende Komponente der Nationalen vernetzung wurde."),
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_ESCHER_CHAPTER_HISTORY_PARA_2",	"de_DE",	
	"Schnell aufsteigend durch Kantonale politische Angelegenheiten, wurde Escher schon 1848 President der Zürcher Regierung. Im selben Jahr noch wurde er auch in den Nationalrat gewählt, in dem er auch vier mal President war, besonders wärend der Preussisch-Neuchatelischen Krise. Oft eine Dämpfende stimme  gegen die Befürworter der radikalen Massnahmen von Jakob Stämpfli, zeigte er feurige Leidenschaft in der neuchâteler Afäre und drängte die Bereitstellung friedlicher Unterkünfte während der Diskussionen die durch das Abtreten von Savoy an Frankreich 1860 entstand."),
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_ESCHER_CHAPTER_HISTORY_PARA_3",	"de_DE",	
	"Als Kopf einer Eisenbahngesellschaft setzte er sich für die private Konstruktion der Eisenbahnen ein und hat dem Nationalisierungs-Programm entgegen gewirkt. Als treibende Kraft hinter dem Bau der Gotthard Linie half er die nötige Kooperation Deutschlands und Italiens für das Projekt zu sichern und hinter lies sein Vermächtniss als eine der einflussreichsten Schweizer Gesetzgeber.");
	
	