
import requests
from bs4 import BeautifulSoup
from requests.api import get  


def getHTMLdocument(url):
    response = requests.get(url)
    return response.text


# Hier plaats je de link die gescraped moet worden

url_to_scrape = "https://eredivisie.nl/competitie/stand/"

# Hier wordt de site opgehaald

html_document = getHTMLdocument(url_to_scrape)
beautifulSoupText = BeautifulSoup(html_document, 'html.parser')

# Hier worden alle teams opgehaald
allTeams = beautifulSoupText.find_all("tr",{"data-clubs":True})

# Hier wordt alle benodigde informatie opgehaald
for team in allTeams:

 teamnaam = team.find("span").text.strip()
 punten = team.find("td",{"class":"table__td table__td--points"}).text.strip()
 doelsaldo = team.find_all("td",{"class":"table__td"})[5].text.strip()

 # Hier wordt de opgehaalde informatie geprint

 print("----------------")
 print("team: "+teamnaam)
 print("punten: "+punten)
 print("doelsaldo: "+doelsaldo)