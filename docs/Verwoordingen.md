Verwoordingen
```

Eredivisie		is een competitie uit 	Nederland
Bundesliga		“” “” “” “” 			Duitsland
Premier League	“” “” “” “” 			Engeland
-----------------------					-------------
<Att Naam>						        <Att Land>
----------------------------------------------------------------------------
<ET Competitie>
<ID: Att Naam + Att Land>

Eredivisie		is een competitie uit 	Nederland 	op niveau 	1
Bundesliga		“” “” “” “” 			Duitsland	“” “”		2
Premier League	“” “” “” “” 			Engeland	“” “”		1
-----------------------					-------------			--
<Att Naam>						        <Att Land>		<Att Niveau>
----------------------------------------------------------------------------
<ET Competitie>
<MATCH>

In de 	Eredivisie 		kunnen maximaal 	18 teams 	meedoen
“” “”	Bundesliga		“” “”			    8 “”		“”
“” “”	Premier League	“” “”			    12 “”		“”
	----------------------				-----------------
	<ET Competitie>				        <Att MaxTeams>
	<MATCH>
 
NEC 		is een voetbalteam
Vitesse 	“” “” “”
AJAX 		“” “” “”
---------------
<ET Voetbalteam>
<ID: Att Naam>

Persoon 20 heeft als voornaam 	Henk en als achternaam 	de Tank
Persoon 30	“” “” “” 			Jan “” “” “” 			Klaasen 
Persoon 45	“” “” “” 			Sjoerd “” “” “” 		Jansen 
------------						------					-------
<ET Persoon>						<Att Voornaam>			<Att Achternaam>
<ID: PersoonID>

NEC 		heeft als coach 	Bert Visser
Vitesse 	“” “” “”			Jan Smith
AJAX 		“” “” “”			George Clooney
---------------				-----------------------
<ET Voetbalteam>			<ET Coach>
<MATCH>						<ID: ET Persoon>


Vitesse	speelt in de	Eredivisie
Bayern Munchen “” “” “”	Bundesliga
Liverpool	   “” “” “”	Premier League
------------			----------------------
<ET VoetbalTeam>		<ET Competitie>
-----------------------------------------------------------
<ET CompetitieIndeling>
<ID: ET VoetbalTeam + ET Competitie>
<MATCH>			<MATCH>


De wedstrijd Vitesse 	speelt tegen	NEC 		op 	25-12-2022 14:00 CET heeft als ID 1
			NEC		    “” “”			AJAX		“”	05-03-2023 16:00 GMT “” “” “”     2
			AJAX		“” “”			Vitesse	    “”	18-07-2023 07:00 CET “” “” “”     3
		----------				-----------			-----								------
		<ET Voetbalteam> 		<ET Voetbalteam>	 <Att Datum>						<Att WedstrijdID>
		<MATCH>			<MATCH>	
	--------------------------------------------------------
	<ET Wedstrijd>
	<ID: Att WedstrijdID>

Wedstrijd 	1 heeft als scheidsrechter 	Sean Bean
“” 			2 “” “”	“”					Jake Gyllenhal
“” 			3 “” “” “” 					Daniel Radcliff
			---							------------------
	<ET Wedstrijd> 						<ET Scheidsrechter>
	<MATCH>								<ID: ET Persoon>


Wedstrijd 	1 speelt in speelronde 	5
“”		    2 “” “” “”				30
“”		    3 “” “” “”				3
			--						--
			<ET Wedstrijd>			<Att Speelronde>
			<MATCH>
	

Goffertstadion 	is de naam van een locatie.
Grolsch veste 	“” “” “” “” “” “” “” “”
Gelredome 		“” “” “” “” “” “” “” “”
----------
<ET Locatie>
<ID: Att Naam>

 

Het Goffertstadion	heeft een maximale capaciteit van	12.500 mensen
De Grolsch veste	“” “” “” “”							30.000 mensen
“”	 Gelredome	“” “” “” “”								34.000 mensen
	---------------								---------------------
	<ET Locatie>					    			<Att Capaciteit>
	<MATCH>

Het Goffertstadion 	heeft als adres  Stadionplein 1 en als postcode 6532 AJ	
De Grolsch veste	“”	“”	“”	“”	 Colosseum 65	“”	“”	“”		7521 PP
Het Gelredome 		“”	“”	“”	“”	 Batavierenweg 25 “” 	“”	“”	6841 HN	
-------------------            		-----------						-------
<ET Locatie>		            	 <Att Adress>					<Att Postcode>
<MATCH>

NEC		speelt in het	Goffertstadion
AJAX		“” “” de	Grolsch veste
Vitesse		“” “” het	Gelredome
----------			----------------
<ET Voetbalteam>		<ET Locatie>
<MATCH>					<MATCH>

Wedstrijd 	1 speelt 	in 		het Gelredome
“”		 	2	“”	“” 			het Goffertstadion
“” 			3	“”	“”			de Johan Cruijf Arena
--------------         			--------
<ET Wedstrijd>				  	<ET Locatie>
<MATCH>					   		<MATCH>

Persoon 1	Heeft rugnummer		6
Persoon 2	“” “”				9
Persoon 3	“” “”				1
-------------------				----
<ET Speler>						<Att Rugnummer>
<ID: ET Persoon>	
<MATCH>


Persoon	 1	speelt bij 	NEC	
“”	 	2	“” “”		Vitesse	
“”	 	3	“” “”		AJAX 
	------------		-----------				
	<ET Speler>			<ET Voetbalteam>
	<MATCH>				<MATCH>



Persoon 1	heeft het geslacht 	vrouw
“”	 	2	“” “” “” 			man
“”	 	3	“” “” “” 			man
	----------					-------
	<ET Persoon>				<Att Geslacht>
	<MATCH>				


Speler 	1	is geboren op 		19-05-1996
“”	 	2	“” “” “” 			22-08-1992
“”	 	3	“” “” “” 			12-12-1983
	-----------				---------------
	<ET Persoon>				<Att GeboorteDatum>
	<MATCH>			



Tijdens wedstrijd 2 is speler 	10 gewisseld met speler 20 op de 	30ste minuut
“” 		wedstrijd 3 “” “” 		17 “” “” “” 			38	“” “” 	69ste minuut
“” 		wedstrijd 5 “” “” 		48 “” “” “” 			1	“” “” 	11de minuut 
		--------------			--	          			--			------------
		<ET Wedstrijd>			<ET Speler>	         <ET Speler>     <Att Minuut>
		<MATCH>					<MATCH>		        <MATCH>
		-------------------------------------------------------------------------
		<ET Wisselen>
		<ID: ET Wedstrijd + ET Speler + Att Minuut>


Tijdens wedstrijd 4 speelt speler 	18 als 		Keeper
“”		wedstrijd 22 “” “”			66 “” 		Spits
“”		wedstrijd 56 “” “”			66 “” 		Links-back
			---------				----		------------
			<ET Wedstrijd>			<ET Speler>	<Att Positie>
			<MATCH>					<MATCH>
			-------------------------------------------------
			<ET Opstelling>
			<ID: ET Wedstrijd + ET Speler + Att Positie>

Tijdens wedstrijd 4 zit speler 	40 op de bank
“”		wedstrijd 22 “” “”		66	 “” “”
“”		wedstrijd 56 “” “”		21	 “” “”
		---------				----	
		<ET Wedstrijd>			<ET Speler>
		<MATCH>					<MATCH>
			

Tijdens wedstrijd 8 heeft speler 203 	gescoord in de 		85ste minuut.
“”		wedstrijd 33 “” “”		 107	gele kaart “” “”	43ste minuut.
“”		wedstrijd 27 “” “”		 56		penalty	“” “”		1ste minuut.
		--------			--------	----------			--------
		<ET Wedstrijd>		<ET Speler> <Att Gebeurtenis>	<Att Minuut>
		<MATCH>				<Match>
		----------------------------------------------------------------------------------------
		<ET Gebeurtenis>
		<ID: Et Wedstrijd + ET Speler + Att Gebeurtenis + Att Minuut>



Tijdens wedstrijd 55 had de thuisteam	56% ball bezit
“”		wedstrijd 12 “” “” “”			12% ball bezit
“”		wedstrijd 33 “” “” “”			99% ball bezit
		------------					-----------
		<ET Wedstrijd>					<Att Thuisteam Balbezit>
		<MATCH>		


```
