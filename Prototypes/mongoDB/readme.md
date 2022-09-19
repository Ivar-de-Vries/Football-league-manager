# Football League Manager
---
Dit is de GIT Repo voor het ISE project `Football League Manager` van groep B2 (Arnhem 2022)
## Gebruik php scripts voor MongoDB
Voor het gebruik van de scripts moet er eerst een connectie op worden gezet met de sqlserver server. Dit kan, lokaal, door het script in "conn.php". Door de servername, uid (userId of username), pwd (password) en databaseName aan te passen zal een andere database worden gebruikt.

In de index.php wordt eerst alle data opgehaald vanuit de sqlserver database. Van deze data wordt vervolgens een csv bestand gemaakt (per tabel 1 csv bestand) en deze worden opgeslagen. Door het gebruik van mongoimport, een functie van mongodb die uitgevoerd kan worden in een commandprompt (mongoimport.exe), wordt dit document geupload naar de juist MongoDB server. Hierna wordt het csv bestand verwijderd.

Als laatst wordt nog gekeken of er een responsecode van 200 uit komt. Als dit zo is houdt dit in ieder geval in dat het script succesvol is uitgevoerd.

LET OP: Voor het uitvoeren van php scripts wordt XAMPP gebruikt.

**Deze readme wordt later uitgebreid.**