# Nätverk - Repetition

### Centralt innehåll

- Protokoll för dataöverföring via nätverk.
- Begreppen switchning och routning.
- Begreppet virtuella nät.
- Lokala nätverk, uppbyggnad och arbetssätt.

# Videolänkar till IT-läraren
- [Begrepp och standarder](https://itlararen.se/videos/network/network38.html)
  - [Kahoot](https://play.kahoot.it/v2/?quizId=4280234a-0629-451a-9890-0e6fabd0217e)
- [Protokoll och standarder del 1](https://itlararen.se/videos/network/network2.html)
- [Begrepp del 2](https://itlararen.se/videos/network/network39.html)
- [TCP IP Introduktion](https://itlararen.se/videos/network/network40.html)
- [Ethernet](https://itlararen.se/videos/network/network42.html)
  - [Kahoot](https://play.kahoot.it/v2/?quizId=5fdb418b-11f7-4e1a-bbe9-e60598e0cd91)
- [IPv4 Del 1](https://itlararen.se/videos/network/network43.html)
  - [Kahoot](https://play.kahoot.it/v2/?quizId=8aa2074a-e218-4b71-bb23-a85d1d959506)
- [IPv4 Del 2](https://itlararen.se/videos/network/network44.html)
- [IPv4 Del 3](https://itlararen.se/videos/network/network45.html)
- [ARP](https://itlararen.se/videos/network/network46.html)
  - [Kahoot](https://play.kahoot.it/v2/?quizId=9c73e941-ec4e-4ce7-8d0e-6c5f9e2a7e88)
- [UDP](https://itlararen.se/videos/network/network48.html)
- [TCP Del 1](https://itlararen.se/videos/network/network49.html)
- [TCP Del 2](https://itlararen.se/videos/network/network50.html)
- [Routing och NAT](https://itlararen.se/videos/network/network5.html)
- [VLAN och Switchar](https://itlararen.se/videos/network/network22.html)
- [Routing Fördjupning - Introduktion och statisk routing](https://itlararen.se/videos/network/network23.html)

# Nätverk 

![Logisk topologi](img/img_8.png)

- Kommunikation i ett nätverk kan gå trådlöst eller via kabel
- Vanligaste överföringstekniken är Ethernet

![Ethernet packet](img/img_9.png)

# Protokoll för dataöverföring via nätverk.

![OSI-modellen](img/img_11.png)

![OSI IP Stack](img/img_12.png)

[Skillnad mellan OSI-modell och TCP/IP](https://microcontrollerslab.com/difference-between-tcp-ip-and-osi-model/)

![img.png](img/img.png)

- Ethernet frame är inuti data link lagret, lager 2 i OSI-modellen
  - Använder det fysiska lagrets transportmekansimer, lager 1
    - Innehåller sändar- och mottagaradress
    - Max 1500 byte data i varje paket
- Ethernet packet

![802.3 Ethernet packet and frame structure](img/img_10.png)

![TCP IP model](img/img_13.png)

![TCP IP Modell 2](img/img_14.png)

- [MAC-Adress](https://sv.wikipedia.org/wiki/MAC-adress)

![MAC-adress](img/img_17.png)

- [IP](https://sv.wikipedia.org/wiki/Internetprotokoll)

![IP packet](img/img_16.png)

- [ARP](https://sv.wikipedia.org/wiki/Address_Resolution_Protocol)

![ARP table](img/img_18.png)

- [IPv4](https://sv.wikipedia.org/wiki/IPv4)

![img/img_24.png](img/img_24.png)

![img/img_22.png](img/img_22.png)

- [IPv6](https://sv.wikipedia.org/wiki/IPv6)

![img/img_25.png](img/img_25.png)

![img/img_21.png](img/img_21.png)


![img/img_20.png](img/img_20.png)


- [TCP](https://sv.wikipedia.org/wiki/Transmission_Control_Protocol)

![TCP header](img/img_19.png)


# Begreppen switchning och routning.

# Switch
[Var är en switch?](https://www.induo.com/b/vad-ar-switch/)

- Används för att ansluta flera nätverksenheter med varandra
- Är inte "dum" till skillnad från en hub
- Switchen har ARP
- Switchen skickar (forwards) data mellan enheter till skillnad från routern som skickar data mellan nätverk 
- Managed switch innebär att portarna kan konfigureras via mjukvara
- Switchen öppnar och stänger dataflöde baserat på information i Ethernet frame och ARP

# Router

![img/img_15.png](img/img_15.png)
![img/img_23.png](img/img_23.png)

[Router Hur funkar det? - Kjell](https://www.kjell.com/se/kunskap/hur-funkar-det/internet/lokala-natverk/routern)

- Hette tidigare Gateway och används numera synonymt
- Roterfunktionaliteten hanteras i nätverkslagret, lager 3 i OSI-modellen
- Leder trafiken 
- Kopplar samman datornätverk och förmedlar trafik mellan dem
- Om man aktiverar "Delad internetanslutning" på telefonen använder man den som router

# Routingprocessen

## Six degrees of Kevin Bacon

![Kevin Bacon networking](img/img_2.png)

![Routing](img/img_3.png)

![Rpoutingprocessen](img/img_1.png)

- [Default Gateway](https://www.fixanatet.se/grundkunskap/default-gateway-att-hitta-till-andra-ip-nat/)
- [Routingtabell/Dirigeringstabell](https://sv.wikipedia.org/wiki/Dirigeringstabell)
  - Innehåller kända nätverks adresser

![img/img_26.png](img/img_26.png)

- [TTL-värde(Time-to-Live)](https://sv.wikipedia.org/wiki/Time_to_Live)
  - Anger hur många hopp ett paket gör innan 

## tracert

I kommandotolken
`tracert gp.se`
<details>

- Kontrollerar hur många roterhopp som görs</details>



# Begreppet virtuella nät.
## VLAN

### IT-Läraren Video - [VLAN och Switchar](https://itlararen.se/videos/network/network22.html)



- Delar upp vårt nätverk i olika (logiska) delar
- Logisk uppdelning på lager 2
- Kräver en managed level 2 switch

![VLAN](img/img_4.png)
### Exempel:
- En switch per avdelning
  - Bättre säkerhet än med en switch för alla avdelningar

![exempel på 3 LAN](img/img_5.png)

- Switchar i ett serverrum
  - I verkligheten sitter inte alla på samma ställe

![img/img_6.png](img/img_6.png)

- 3 Virtuella LAN via en managed switch
  - Bättre möjlighet att konfigurera via nätverket utan att behöva gå till serverrummet
![img/img_7.png](img/img_7.png)



# Lokala nätverk, uppbyggnad och arbetssätt.