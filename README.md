# mba
Market Basket Analysis med Apache Spark och Docker

Först och främst måste man ha en programmiljö som kan köra Docker.
I detta exempel använder vi Microsofts färdiga server i Azure: https://portal.azure.com/#create/CanonicalandMSOpenTech.DockerOnUbuntuServer1404LTS

För ~100K transaktioner räcker en A3 Standard för 10 minuters körtid. Glöm inte att stänga av maskinen när ni är klara!

För att starta demot, kör "sudo bash <(curl -s https://raw.githubusercontent.com/martenlindblad/mba/master/startit.sh)" i kommandotolken.
