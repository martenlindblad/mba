# mba
Market Basket Analysis med Apache Spark och Docker

Först och främst måste man ha en programmiljö som kan köra Docker.
I detta exempel använder vi Microsofts färdiga server i Azure: https://portal.azure.com/#create/CanonicalandMSOpenTech.DockerOnUbuntuServer1404LTS

För ~100K transaktioner räcker en A3 Standard för 10 minuters körtid. Glöm inte att stänga av maskinen när ni är klara!

Logga in på er maskin med hjälp av Putty (http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html).
Starta administratörsläget ("sudo su -").
För att starta demot, kör "bash <(curl -s https://raw.githubusercontent.com/martenlindblad/mba/master/startit.sh)" i kommandotolken.
När skriptet är klart, högerklicka på fönsterramen för Putty, gå till Change Settings -> Connection -> SSH -> Tunnels och skriv 8888 i Source Port och localhost:8888 i Destination. Tryck på Add och sen Apply. 
Ni kan nu gå in på http://localhost:8888/

Starta AssociativeAnalysis.ipynb och antingen stega igenom skriptet eller kör allihopa.
När det är klart och inga felmeddelanden genererats, kör "bash <(curl -s https://raw.githubusercontent.com/martenlindblad/mba/master/fixit.sh)".
Kvar finns nu två .csv-filer ni kan importera till Qlik Sense med hjälp av WinSCP.

Kopiera .qvf-filen till Documents\Qlik\Sense\Apps och peka om erat library till där ni sparat era .csv:er.

Ladda data och berika efter behov!
