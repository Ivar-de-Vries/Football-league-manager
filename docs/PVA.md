# PVA

# Inhoudsopgave
```
1. Inleiding
2. Achtergrond van het project 
3. Doelstelling, opdracht, en op te leveren resultaten voor het bedrijf en school 
4. Projectgrenzen 
5. Randvoorwaarden 
6. Op te leveren producten en kwaliteitseisen 
7. Ontwikkelmethode 
8. Projectorganisatie en communicatie 
9. Planning 
10. Risico’s 
```


# 1. Inleiding
In dit document wordt de manier hoe wij te werk gaan in dit project uitgelegd.

Het bedrijf NUTMEG wil een database hebben voor een football league manager.
Voor het project wordt gevraagd om de volgende punten in de database te hebben:
Het schema van de wedstrijden, opgedeeld in rondes, wordt VOOR de competitie opgesteld en de selectie van de clubs die meedoen worden ook neergezet.
Tijdens de competitie kunnen de datums van de wedstrijden worden aangepast. Ditzelfde geldt voor de selectie van de clubs.

De opstellingen, Scores, wisselspelers, gele en rode kaarten en de spel statistieken (bal bezit, totale aantal schoten, schoten op doel, hoekschop, overtredingen) worden opgeslagen voor elke gespeelde wedstrijd. Ook wordt hierbij de opstelling van beide teams opgeslagen. Uiteindelijk moet met al deze data de huidige stand van de competitie en een top scorers lijst te genereren.

Verder zullen in dit document de volgende punten worden toegelicht:

    Hoofdstuk 2 zal de achtergrond achter dit project uitleggen, denk hierbij aan de opdrachtgever, het belang en waarom ze dit project willen.

    Hoofdstuk 3 zal het doel van dit project uitleggen, denk hierbij aan waarom dit project en wat er allemaal wordt verwacht.

    Hoofdstuk 4 zal over de projectgrenzen gaan, In dit hoofdstuk worden de grenzen aangegeven door aan te geven wat we net niet zullen doen. Waardoor duidelijk wordt wat we wel gaan doen.

    Hoofdstuk 5 zal de randvoorwaarden definiëren, waarin wordt aangegeven wat er moet gebeuren en welke afspraken er zijn gemaakt om het project tot een succes te kunnen brengen.

    Hoofdstuk 6 zal de uiteindelijke opleveringen definiëren, denk hierbij aan wat er aan het einde van de 8 weken wordt ingeleverd bij de verschillende partijen.

    Hoofdstuk 7 zal gaan over de verschillende manieren waarop wij, als projectontwikkelaars, te werk zullen gaan. Denk hierbij aan keuzes en onderbouwing van deze manieren.

    Hoofdstuk 8 zal de afspraken en tijden definiëren waarin staat hoe wij te werk gaan met de verschillende partijen. Denk hierbij aan alle contactpersonen en de afspraken die ermee volgen.

    Hoofdstuk 9 zal over de planning gaan waarin duidelijk wordt wanneer afspraken worden behaald en hoe de planning in elkaar zit.

    Hoofdstuk 10 zal over de risico's gaan, denk hierbij aan alle verwachte problemen die kunnen opdagen waar wij als projectgroep geen controle over hebben.

# 2. Achtergrond van het project
NUTMEG is een bedrijf dat bedacht is door Hogeschool Arnhem en Nijmegen. Het bedrijf wilt zich focussen op het ophalen van voetbaldata. Hiervoor hebben ze de opdracht 'Football League Manager' bedacht. Het idee achter deze opdracht is dat we een database maken waarin alle data binnen een competitie kan worden opgeslagen. Voorbeelden van deze data zijn: speelrondes, wedstrijden, uitslagen etc. Ook de optie voor knock-out competities is een mogelijkheid hierbinnen. Denk hier aan een beker en Europese competities. Uiteindelijk willen ze de data via een API toegankelijk maken in JSON formaat om deze data door te kunnen verkopen. 

Een andere stakeholder van dit project zijn voetbalclubs en andere organisaties waar de gegevens aan worden verkocht. Die mogen verder zelf bepalen wat ze verder met de gegevens doen. Een voetbalclub zou de data kunnen gebruiken om een betere transfer te kunnen kiezen. Een overzicht van hoe vaak een spits een goal maakt of een goeie assist geeft ten opzichte van een andere spits, of juist hoe vaak iemand een rode of gele kaart krijgt kan een team een betere keuze laten maken. Bedrijven zouden kunnen opvragen welke wedstrijden het meest worden bezocht. Dit Is bijvoorbeeld handig als je shirts en dergelijke gaat verkopen. Ook kunnen bijvoorbeeld sponsoren kijken welke wedstrijden de meeste kijkers trekken om zo hun winst te maximaliseren met de minste uitgaven en moeite.


# 3. Doelstelling, opdracht, en op te leveren resultaten voor het bedrijf en school
## Probleem:
Voetbal is een zeer populaire sport, vandaar dat gegevens van voetbal competities zeer handig zijn voor bepaalde bedrijven. Via deze gegevens zouden ze onderzoeken kunnen doen om hun winsten te verbeteren. Het probleem is dat de opdrachtgever geen plek heeft om deze data op te slaan.
## Doelstelling:
Vanwege deze bovenstaande reden wil NUTMEG een database opstellen waarin gegevens van competities worden opgeslagen. Deze gegevens moeten veel detail bevatten en over meerdere competities vallen. Uiteindelijk is het de bedoeling om deze gegevens te kunnen doorverkopen aan geïnteresseerde bedrijven.
## Opdracht:
Onze opdracht is het opstellen van een SQL Database waarin al deze gegevens in een overzichtelijke manier worden opgeslagen. Verder moeten we rekening houden met verschillende competities en verschillende landen. Het is mogelijk om meer data in de database in te voeren, mits dit eerst wordt overlegd met de opdrachtgever.
## Resultaat:
Het bedrijf NUTMEG wil uiteindelijk een uitgebreide database gevuld met voorbeelddata. Het is de bedoeling om dit in MSSQL te maken. Verder zal MongoDB worden gebruikt om een API in te stellen tussen de Database en de Gebruiker.

In hoofdstuk 6 van het Plan van Aanpak staan alle deel producten waar de opdrachtgever belang bij heeft verder toegelicht.

# 4. Projectgrenzen
In dit hoofdstuk worden alle grenzen met betrekking tot het project beschreven.

## Tijdsgrenzen
Het project duurt 8 weken: van 11 april tot 10 juni. Per week wordt er 60% van de tijd gewerkt aan de taken van het Jira bord. De overige 40% wordt gebruikt aan het eigen verslag, overleg/vergaderingen en pauze. Hierbij gaan we uit van een werkweek van 40 uur.

## Inhoudelijke grenzen.
- We maken de scripts voor MS SQL, We kunnen dus niet garanderen dat deze werken op bijvoorbeeld MySQL.
- We houden geen rekening met competities van landen (WK,EK).
- We slaan alleen competities op van voetbal dus niet van bijvoorbeeld hockey.
- We zullen binnen dit project ons focussen op de eerste twee competities van elk land. Dus in Nederland alleen de eredivisie en Keukenkampioenschap.
- De testdata zou data bevatten van de eerste twee competities van een land, met voorkeur nederlandse data.
- Er zal geen front-end en back-end zijn voor bij de Database. 
- Na het opleveren van het project wordt de database verder niet onderhouden.

# 5. Randvoorwaarden
Binnen dit hoofdstuk wordt beschreven welke dingen nodig zijn om dit project succesvol uit te voeren.  
- De lijsttrekker van ISE biedt ons een beschikbare werkruimte met minimaal 6 zitplaatsen.
- De lijsttrekker van ISE biedt ons een stabiele internetverbinding die tenminste in staat is verschillende branches van Bitbucket op te halen.
- De lijsttrekker van ISE biedt ons de benodigde tooling aan voor dit project, in dit geval Jira en Bitbucket.
- De opdrachtgever reageert binnen 24 uur op mails gestuurd vanuit het team (Exclusief weekenden en vakanties).
- De opdrachtgever is minimaal 1 uur per week beschikbaar voor overleg met het team.
- De Project begeleider is minimaal 1 uur per week beschikbaar voor overleg met het team.
- De Project begeleider reageert binnen 24 uur op mails gestuurd vanuit het team (Exclusief weekenden en vakanties).
- De Professional Skills docent is te bereiken via mail binnen 2 werkdagen (Exclusief woensdagen, weekenden en vakanties).
- De Professional Skills docent is minimaal 1 uur per week beschikbaar voor overleg met het team.

# 6. Op te leveren producten en kwaliteitseisen
In dit hoofdstuk gaan we in op alle deel producten die horen bij het project en de criteria die wij aanhouden om de kwaliteit van deze deel producten te garanderen.
## Op te leveren producten en proceskwaliteitseisen

| Product | Productkwaliteitseisen (SMART) | Benodigde activiteiten om te komen tot het product | Proceskwaliteitseisen (5xW 1xH) |
| :--- | :--- | :--- | :--- |
| Plan van Aanpak | Zie Definition of Done PvA | Lezen "Toelichting PvA V3.1", PvA hoofstukken schrijven met toelichting, interview met de opdrachtgever over onderwerpen PvA houden | Iedere taak met betrekking tot het Plan van Aanpak wordt na uitvoering gereviewd door minimaal 2 leden van team B2. De taken zijn te vinden op het JIRA bord van team B2. Het reviewen vindt plaats op Bitbucket en er wordt gecontroleerd op inhoud, spelling, taal en grammatica volgens de Definition of Done. Fouten in inhoud worden verbeterd in overleg, fouten in spelling, taal en grammatica worden direct verbeterd |
| Functioneel Ontwerp | Zie Definition of Done Functioneel ontwerp | Lezen "PP5_FO_TO_HappyTravel_NL_v1", Schrijven hoofdstukken Casus beschrijving, Concrete voorbeelden, CDM, Domeinen toelichten, omschrijving domein concepten, onderbouwing van cursus en constraints | Iedere taak met betrekking tot het Functioneel ontwerp wordt na uitvoering gereviewd door minimaal 2 leden van team B2. De taken zijn te vinden op het JIRA bord van team B2. Het reviewen vindt plaats op Bitbucket en er wordt gecontroleerd op inhoud, spelling, taal en grammatica volgens de Definition of Done. Fouten in inhoud worden verbeterd in overleg, fouten in spelling, taal en grammatica worden direct verbeterd |
| Technisch Ontwerp | Zie Definition of Done Technisch Ontwerp | Lezen "PP5_FO_TO_HappyTravel_NL_v1" schrijven hoofdstukken PDM, beschrijving tabellen en kolomen en intergrity rules | Iedere taak met betrekking tot het Technisch Ontwerp wordt na uitvoering gereviewd door minimaal 2 leden van team B2. De taken zijn te vinden op het JIRA bord van team B2. Het reviewen vindt plaats op Bitbucket en er wordt gecontroleerd op inhoud, spelling, taal en grammatica volgens de Definition of Done. Fouten in inhoud worden verbeterd in overleg, fouten in spelling, taal en grammatica worden direct verbeterd. |
| SQL Query's | Zie Definition of Done SQL query's | Lezen Templates van de query's op Bitbucket, sql query's schrijven | Iedere taak met betrekking tot SQL query's wordt na uitvoering gereviewd door minimaal 2 leden van team B2. De taken zijn te vinden op het JIRA bord van team B2. Het reviewen vindt plaats op Bitbucket en er wordt gecontroleerd op inhoud, spelling, taal en grammatica volgens de Definition of Done. Fouten in inhoud worden verbeterd in overleg, fouten in spelling, taal en grammatica worden direct verbeterd. |
| Overdracht document | Zie Definition of Done Overdracht document | Analyseren overdracht document van het OOSE Project om tot de correcte inhoud te komen, overdracht document schrijven | Iedere taak met betrekking tot het overdracht document wordt na uitvoering gereviewd door minimaal 2 leden van team B2. De taken zijn te vinden op het JIRA bord van team B2. Het reviewen vindt plaats op Bitbucket en er wordt gecontroleerd op inhoud, spelling, taal en grammatica volgens de Definition of Done. Fouten in inhoud worden verbeterd in overleg, fouten in spelling, taal en grammatica worden direct verbeterd. |
| Onderzoeksverslag | Zie Definition of Done Onderzoeksverslag | Er worden hoofd en deelvragen opgesteld, Er wordt antwoord gegeven op de hoofdvraag in de conclusie. Lezen template_onderzoeksverslag in Bitbucket| Iedere taak met betrekking tot het onderzoeksverslag wordt na uitvoering gereviewd door minimaal 2 leden van team B2. De taken zijn te vinden op het JIRA bord van team B2. Het reviewen vindt plaats op Bitbucket en er wordt gecontroleerd op inhoud, spelling, taal en grammatica volgens de Definition of Done. Fouten in inhoud worden verbeterd in overleg, fouten in spelling, taal en grammatica worden direct verbeterd. |
| Database | Zie Definition of Done Database | Lezen "PP0_1 Normaalvormen123 NL_v1.pdf" en "PP1_1 Datakwaliteit NL_v1.pdf", schrijven tabellen, constraints en triggers volgens het TO | Iedere taak met betrekking tot de database wordt na uitvoering gereviewd door minimaal 2 leden van team B2. De taken zijn te vinden op het JIRA bord van team B2. Het reviewen vindt plaats op Bitbucket en er wordt gecontroleerd op functionaliteit, inhoud, spelling, taal en grammatica volgens de Definition of Done. Fouten in functionaliteit en inhoud worden verbeterd in overleg, fouten in spelling, taal en grammatica worden direct verbeterd. |



## Definition of Done

### Plan van Aanpak
- Het document voldoet aan de AIM controlekaart.
- Het gehele document is in het Nederlands.
- Het document heeft de goedkeuring van de opdrachtgever, de projectbegeleider en de Professional Skills docent.

### Functioneel Ontwerp
- Het document voldoet aan de AIM controlekaart.
- Het gehele document is in het Nederlands.
- Het document heeft de goedkeuring van de opdrachtgever en de projectbegeleider.

### Technisch Ontwerp
- Het document voldoet aan de AIM controlekaart.
- Het gehele document is in het Nederlands.
- Het document heeft de goedkeuring van de opdrachtgever en de projectbegeleider.

### SQL query's
- De SQL query komt overeen met de bijbehorende template op Bitbucket.
- De SQL query is in het Engels.
- Stored procedures en triggers hebben bijbehorende unit tests.
 
###  Overdracht document
- Het document is in het Nederlands.
- Het document voldoet aan de AIM controlekaart.

### Onderzoeksverslag
- Het document is in het Nederlands.
- Het document voldoet aan de AIM controlekaart.
- Het document heeft de goedkeuring van de projectbegeleider.

### Database
- De database voldoet aan de 3de normaalvorm.
- De database is in het Engels.
- De database komt overeen met het Technisch Ontwerp.


# 7. Ontwikkelmethode
Voor dit project zal er met RUP worden gewerkt. RUP, Rational Unified Process, is een agile software ontwikkelmethode waarin de levenscyclus van een project in fasen is verdeeld. De vier fasen zijn Begin of startfase, uitwerkingsfase, bouw of constructiefase en overgangsfase. RUP is iteratief, dit komt omdat alle kernactiviteiten gedurende het hele project terugkeren. 

Elke fase wordt afgesloten met een mijlpaal. Dit is een punt waar kritische beslissingen gemaakt moeten worden. Om deze beslissingen te kunnen maken moeten de doelstellingen gehaald zijn.

In de methode RUP zijn ook een aantal rollen gedefinieerd. Wij hebben de volgende rollen voor ons project team. Verder in het document, bij hoofdstuk 8 staat verder uitgewerkt wie welke rol aanneemt tijdens het project.

### Tester 
De rol van Tester is verantwoordelijk voor het specificeren van test cases en het vastleggen daarvan in een Testontwerp. Daarnaast draagt hij zorg voor het uitvoeren ervan.

### Informatieanalist 
De rol van Informatieanalist is verantwoordelijk voor het helder krijgen van requirements en het modelleren van Use Cases, waardoor hij de functionaliteit en grenzen van het te bouwen systeem bepaalt en bewaakt.

### Use Case Ontwerper 
De rol van Use Case Ontwerper is verantwoordelijk voor het specificeren van Use Cases, inclusief schermontwerpen en schermverloop.
Softwarearchitect

### Softwarearchitect
De rol van Softwarearchitect is verantwoordelijk voor het maken, beargumenteren en documenteren van de technische keuzes in het project, die de architectuur en dus de technische grenzen en mogelijkheden voor de te bouwen applicatie bepalen. Tevens draagt de Softwarearchitect de verantwoordelijkheid voor het communiceren van de architectuur en ziet hij erop toe dat deze ook wordt geïmplementeerd.

### Programmeur
De rol van Programmeur is verantwoordelijk voor het technisch ontwerpen, ontwikkelen, documenteren en (het automatiseren van) testen van software.


### Fase 1: Start
Tijdens de eerst fase wordt de structuur en het basisidee van het project vastgesteld. het team vergadert over de noodzaak van het project maar ook over de levensvatbaarheid en geschiktheid. Onder de levensvatbaarheid en geschiktheid vallen ook de verwachte kosten en middelen die nodig zijn om het project te voltooien. Een aantal voorbeelden van resultaten na de eerste fase kunnen zijn:
- Een visieverklaring
- Eerste usecase (20% voltooid)
- Marktonderzoekresultaten
- Financiële prognose
- Risicobeoordeling
- Projectplan
- Bedrijfs- of verdienmodel
- Prototypen

### Fase 2: Uitwerking
Tijdens de uitwerkingsfase van het RUP worden de vereiste van het systeem beoordeeld en geanalyseerd. Op dit punt begint het project vorm te krijgen. Op dit punt analyseer je de problemen en leg je een fundering voor de toekomstige architectuur. Resultaten van de tweede fase zouden kunnen zijn:
- Usecase (80% voltooid)
- Beschrijving uitvoerbare architectuur
- Ontwikkelingsplan project
- Prototypen om risico’s aan te pakken
- Gebruikershandleiding

### Fase 3: Constructie
In de constructiefase wordt de software volledig gebouwd. De nadruk ligt op het bouwen van alle componenten en andere onderdelen van het systeem. Het grootste deel van de codering vindt plaats tijdens deze fase. Resultaten van de derde fase kunnen bestaan uit:
- Volledig voltooid softwaresysteem
- Handleidingen voor de gebruiker

### Fase 4: Overgang
In de overgangsfase is om het product over te dragen aan de nieuwe gebruiker. Op het moment dat de gebruiker het systeem in gebruik neemt komen er altijd nieuwe problemen naar boven. Dit vereist dat er veranderingen moeten worden aangebracht in het systeem. Het doel is echter wel om de overgang zo soepel te laten verlopen. Resultaten in de laatste fase kunnen bestaan uit: 
- Beta tests
- Conversie van bestaande databases gebruiker
- Training nieuwe gebruikers
- Uitrol product naar marketing en distributie

# 8. Projectorganisatie en communicatie
Buiten het ontwikkelteam zijn er een aantal andere mensen betrokken in dit project;
De Projectbegeleider van dit project is Frank Tempelman (Frank.Tempelman@han.nl). Hellen Visser is de professional skills coach (Helen.Visser@han.nl) en de opdrachtgever wordt gespeeld door Michel Koolwaaij (Michel.Koolwaaij@han.nl), met als personage de vertegenwoordiger van NUTMEG.

Met de projectbegeleider is geen vast contactmoment afgesproken. Deze heeft hij aangegeven later in te plannen. 
Met de opdrachtgever is afgesproken om in de constructie fase iedere iteratie de voortgang te laten zien. Dit is een licht overblijfsel van SCRUM die we behouden in dit project.
Met de professional skills coach is afgesproken om iedere Dinsdag van 13:00 tot 14:00 contact te hebben.


Het ontwikkelteam bestaat uit de volgende leden:
| Naam | Studentnummer | Student e-mail | Rup rol |
|------|---------------|----------------|---------|
| Ivar de Vries     | 635093 | i.devries@student.han.nl | Informatie Analyst |
| Wouter Verhoeven  | 518693 | w.verhoeven2@student.han.nl | Softwarearchitect |
| Timo Wagener      | 657282 | t.wagener@student.han.nl | Programmeur |
| Wijnand van Zyl   | 655269 | w.vanzyl@student.han.nl | Use case ontwerper |
| Bram Bakker       | 599907 | bmh.bakker@student.han.nl | Programmeur |
| Sietse Noordbruis | 581905 | s.noordbruis@student.han.nl | Tester |

# 9. Planning
(T) = Groepsproduct <br>
(I) = Individueel product <br>
| Week | Fase | Producten | cursus |
| :--- | :--- | :---  | :--- |
| Week 1 (11-4-2022 - 15-4-2022) | Inception-Iteratie | (T)PvA, (I)2 leerdoelen
| Week 2 (18-4-2022 - 22-4-2022) | Elaboration-Iteratie  |
| Week 3 (25-4-2022 - 29-4-2022) | Elaboration-Iteratie  | | NS lezing (25-4-2022 13:00)
| Week 4 (09-5-2022 - 13-5-2022) | Elaboration-Iteratie einde  10-5 & begin Constructie-Iteratie 1 | Eerste versie FO, Eerste versie TO, Architectueel Prototype en Eerste versie projectverslag
| Week 5 (16-5-2022 - 20-5-2022) | Constructie-Iteratie 1 einde 20-5 | Verbeterde versie FO, Verbeterde versie TO en Deel 1 van het systeem
| Week 6 (23-5-2022 - 27-5-2022) | Constructie-Iteratie 2 | Derde versie van FO, Volledige versie van TO
| Week 7 (30-5-2022 - 03-6-2022) | Constructie-Iteratie 2 einde 31-5 & begin Constructie-Iteratie 3 | FO, TO en Deel 2 van het systeem
| Week 8 (06-6-2022 - 10-6-2022) | Constructie-Iteratie 3 einde 10-6 | FO, TO, Deel 3 van het systeem en je project verslag in
| Week 9 (13-6-2022 - 17-6-2022) | Transitie-Iteratie | Volledige project
| Week 10 (20-6-2022 - 24-6-2022) | Transitie-Iteratie | Volledige project

Alle fases die in de planning staan beschreven staan gedetailleerd uitgelegd in het hoofdstuk ontwikkelmethode.

## Standaard contactmomenten <br>
| Weekdag | Tijd | Uitgenodigde |
|:--- |:---  | :---
|Dinsdag | 13:00-14:00 | Helen Visser

## Inlever momenten
| Datum | Tijd | product|
|:--- |:---  | :--- |
|15-04-2022 | 16:00 | Individuele projectvoorbereiding |
|15-05-2022 | 16:00 | Groepsbeoordeling tussentijds|
|15-05-2022 | 16:00 | Verantwoording projectbijdrage |
|09-06-2022 | 16:00 | Groepsbeoordeling aan het eind |
|09-06-2022 | 16:00 | Verantwoording projectbijdrage aan het eind | 

## Overige vrije dagen
| Datum | Dag |
|:--- |:---  |
|15-4-2022 | Goede vrijdag |
|18-4-2022 | 2e paasdag |
|27-4-2022 | Koningsdag |
|02-5-2022 - 06-5-2022 | Mei vakantie |
|26-5-2022 | Hemelvaartsdag |
|27-5-2022 | Dag na Hemelvaart |

# 10. Risico’s
Dit hoofdstuk is een soort 'final check''. Een risico is iets wat buiten onze macht/invloed op kan treden, en als het optreedt dan wordt de doelstelling van het project niet voldoende behaald. Deze risico's worden in het tabel hieronder weergegeven. Hierdoor lopen we niet zomaar vast en zal het probleem niet zoveel tijd kosten omdat we van te voren al bedacht hebben hoe we het probleem gaan oplossen.
| Risico | Kans | Impact| Tegenmaatregel| uitwijkstrategie|
|------|---------------|----------------| -------------| ---------|
| Crashen van IDE | Klein   | Middel | Goed gebruik maken van git technieken om de schade te beperken | Andere IDE vinden|  
| Langdurige Absentie van teamlid| Klein  | Groot |  Taken opnieuw inplannen |  Contact zoeken met teamlid en afspreken wat er gaat gebeuren|
| Trein rijdt niet | Klein| Middel | Thuis werken| ander vervoer regelen|
|Wifi op de HAN werkt niet|Klein| Middel |Werken op 4G of offline verder werken| Thuis werken|
|Geen contact krijgen met opdrachtgever| Klein| Groot|-|Naar de project begeleider gaan|
|School gaat dicht en terug online|Klein|Middel|-|Met de projectbegeleider hoe we verder gaan
|Voorbeeldgegevens voor de database zijn niet automatisch of geautomatiseerd te bemachtigen| Middel | Middel | - | Gegevens handmatig overschrijven |
| Dataverlies. | Klein | Groot | Dagelijks Back-ups maken van de gemaakte content.| Planning aanpassen en de verloren data zo snel mogelijk herstellen |
| Groepslid kan door omstandigheden tijdelijk niet aan project werken. | Middel | Middel | De projectgroep zorgt er voor dat kennis over een specifiek onderwerp gedeeld wordt met het team. Zo ontstaan er geen specialisten die onmisbaar zijn voor het projectteam. | Taken van de des betreffende teamlid opvangen en verdelen onder de resterende teamleden.
Taken komen door tijd te kort niet af. | Groot | Middel | Tijden altijd iets ruimer schatten dan verwachting | Planning aanpassen en prioriteiten stellen voor de komende taken.
Groepslid stop per direct met de opleiding. | Klein | Groot | Groepslid gemotiveerd houden en ernaar laten streven om te blijven werken. | Taken schrappen en prioriteiten stellen voor de overige taken.
Groepsleden hebben een wisselende kennis van de gebruikte technieken | Middel | Middel | Groepsleden met gebrek aan kennis tijdens het project bijleren. | Groepsleden hoeven niet te werken aan irrelevante onderdelen waarvan zij geen kennis hebben.
De eindgebruikers ervaren de applicatie anders dan voorzien | Klein | Groot | De eindgebruikers betrekken tijdens de ontwikkeling | De eindgebruikers voorzien van applicatiehandleiding.
De product owner ziet zelf risico’s (bijv. financiële problemen of fusering) | Klein | Groot | Tijdens het ontwikkelproces de product owner blijven vragen naar mogelijke risico’s