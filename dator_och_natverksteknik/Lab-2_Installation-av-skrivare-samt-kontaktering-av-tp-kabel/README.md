# Lab 1 - Installation av skrivare samt kontaktering av tp kabel

## Innehåll
- [Föreberande videos](#frberedande-videos)
- [Uppgift del 1](#uppgift-del-1)


# Föreberande videos
* [Windows 10 - Skrivare](https://itlararen.se/videos/windows/win108.html)
* [Windows 10 - Drivrutiner](https://itlararen.se/videos/windows/win108.html)
* [Windows Server 2012 - Skrivare](http://itlararen.se/videos/windows/win31.html)

# Uppgift del 1
**Installera skrivare** <br>

Labb i grupp eller i par. 
Dokumentet där ni beskriver stegen skall lämnas in individuellt i Classroom <br>
I dokumentet ska ni lista stegen i instruktionsmanualerna och visa genom bilder att ni har utfört stegen.

Denna uppgift är kopplat till följande centrala innehåll i DAODAC0<br>
* Installation av kringutrustning och uppgradering av drivrutiner.
* Installation och underhåll av lokal skrivare.

Den är även kopplad till följande centralt innehåll i kursen DAODAT01a
* Installation av skrivare och andra enheter i nätverk.

Den är även kopplad till följande centralt innehåll i kursen NAINAR0
* Installation och konfigurering av utskriftssystem samt hantering av tillgång till en central tjänst för utskriftshantering.

Installera lokal skrivare
* https://itlararen.se/videos/windows/win108.html

Installera nätverksskrivare
* https://itlararen.se/labbar/Laboration-Datorteknik_skrivare.pdf

Uppgift del 2

Installera och dela skrivare via Windows Server
https://itlararen.se/labbar/Laboration-Windows_Server_2012R2_11-Skrivare.pdf

### Namnge din servermaskin till SERVER1
1. Starta, anslut till och logga in på din server
2. I Server Manager, klicka på local server
3. Klicka på namnet högst upp till vänster
4. Klicka på knappen "Change..."
5. Ändra namn till SERVER1

### Konfigurera CLIENT
1. Starta, anslut till och logga in på din klientdator (Windows 10)
2. Gå in på installningar/settings > System > om/about, alternativ sök på "Om din dator/About this computer"
3. Klicka på byt namn på datorn/change name 
4. Döp datorn till CLIENT och klicka på nästa

## Gör en domänkontrollant
1. I server manager, lägg till rollen Active Directory Domain Services
2. Efter installation, promota till domänkontrollant 
3. Starta om SERVER1 


## Installera Print and document services och skapa en virtuell skrivare
1. Starta SERVER1 och logga in som domänadministratör.
2. Starta Server Manager och använd Add Roles and Features Wizard för att installera Print
and Document Services rollen.
3. Lägg märke till Role Services alternativen. Välj Print Server och slutför installationen.
4. När installationen är klar, klicka på Close för att stänga ner guiden.
5. Starta Print Management konsolen genom att klicka på Tools och välja Print Management.
6. Markera noden Print Servers och kontrollera att SERVER1 finns med. Notera att det enkelt
går att lägga till fler servrar från vår domän som vi kan hantera via konsolen.
7. Klicka på SERVER1 (local) och sedan på Drivers för att se installerade skrivardrivrutiner.
8. Lägg till en ny drivrutin genom att högerklicka och välj Add Driver.
9. Använd Add Printer Driver Wizard och klicka på Next.
10. Välj drivrutin för 64-bitarsprocessorer och klicka på Next.
11. Klicka på Windows Update och vänta tills den är klar
12. Under Tillverkare välj Canon, välj drivrutinen Canon Inkjet BJ 535PD och klicka på Finish.
13. Kontrollera egenskaperna på drivrutinen genom att högerklicka på den och välja Properties.
Kontrollera att versionen är Type 3 User Mode.
14. Klicka på SERVER1 – Ports välj sedan att skapa en ny port genom att högerklicka och välja
Add Port..
15. Vi ska nu simulera att vi lägger till en befintlig nätverksskrivare som finns på det lokala
nätverket. Välj Standard TCP/IP Port och klicka på New Port.
16. Nu startar Add Standard TCP/IP Printer Port Wizard. Klicka på Next.
17. Ange en påhittad IP-adress på lokala labbnätverket, t.ex. 192.168.0.33 klicka på Next.
18. Nu kommer guiden att försöka ansluta till IP-numret och autodetektera portnummer. Detta
kommer inte att fungera då skrivaren inte finns. När försöket misslyckats välj device type
Canon LBP i rullistan för enhetstyp. Klicka på Next.
19. Klicka på Finish och stäng sedan ner printer ports.
20. Installera en ny nätverksskrivare genom att markera SERVER1 – Printers och högerklicka och
välj Add Printer…
21. Nu startar Network Printer Installation Wizard. Markera Add a new printer using an existing
port och välj porten (192.168.0.33) som vi skapade nyss.
22. Välj Use an existing Printer Driver on the computer och markera Canon Inkjet BJ 535PD och klicka på Next. 
23. Ange ett namn för skrivare, t.ex. Test Printer kontrollera att skrivaren delas ut och klicka på
Next.
24. Klicka på Next och Finish.

## Sätt statisk IP på SERVER1
För att kunna ansluta din klient till domänen behöver du sätta en statisk IPv4 adress på servern.
1. Öppna Server Manager
2. Klicka på Local Server
3. Klicka där det står "IPv4 adress assigned by DHCP" för att öppna nätverksanslutningar
4. Högerklicka på Ethernet och välj Properties
5. Markera Internet Protocol version 4 och klicka på properties
6. Bocka i "Use the following IP adress" för att kunna skriva in statisk IP
7. Skriv in IP adress, t.ex. 192.168.0.10 i första fältet
8. Klicka sedan på fältet under för att få subnet mask 255.255.255.0
9. Skriv in IP nummer 127.0.0.1 på preferred DNS server, detta är foldback adressen som gör att DNS förfrågan stannar hos Domänkontrollanten
10. Tryck OK
11. Inaktivera IPv6 genom att klicka ur checkboxen bredvid Internet Protocol Verison 6
12. Tryck close för att spara inställningarna

## Anslut din client till din domänkontrollant via ett användarkonto
1. Skapa ett konto som din klient kan ansluta till
2. Öppna Active Directory Users and computers
3. Klicka på din domän för att expandera organisationen i den
4. Högerklicka på Users och välj New > User
5. Skriv in Inloggningsuppgifter, namn, user logon namn och lösenord räcker
6. Du kan checka i Password never expires- boxen
7. Starta din CLIENT- dator och anslut den till domänen via Settings > System > About > Rename this PC(Advanced) som ligger längst ner
8. Klicka på Change längst ner till höger i rutan som dyker upp
9. Checka i där det står domain och skriv in din domän
10. Om du inte kan ansluta till domänen får du gå in i Control Panel > Network and internet > Network and sharing center > Change Adapter settings
    1. Alt. tryck på windows knappen och sök på Network Connections
    2. Högerklicka på ditt nätverkskort och 
    3. ändra IPv4 så att du ligger på samma subnät
    4. ändra så att din Preferred DNS är samma som domänkontrollantens IP-adress
11. Klicka på OK och starta om datorn
12. När login skärmen kommer upp ska du välja other user och se till att du ansluter till din domän
13. skriv in användarnamnet som du skapade i Active Directory Users and COmputers
14. Om du får ett felmeddelande att du inte har rättighet att logga in som remote desktop user kan du läsa på länken nedan



## Testa att skriva ut en sida från din Client
1. Starta CLIENT och logga in som användaren du skapade i din domänkontrollant.
2. Anslut till SERVER1 genom att skriva in UNC-sökvägen \\SERVER1 i utforskaren eller i kördialogfönstret.
3. Den utdelade skrivaren Test Printer borde listas. Högerklicka på den och välj Connect
(anslut).
4. Prova att skriva ut genom att starta notepad eller Wordpad och skriva något för att sedan
skriva ut (CTRL+P är tangentbordsgenvägen för att skriva ut). Välj aktuell skrivare.
5. Byt tillbaka till SERVER1
6. I Print Management konsolen, klicka på Print servers - SERVER1 – Printers och högerklicka
på Test Printer, välj Open Printer queue…
7. Kontrollera att utskriftsjobbet från user1 ligger i kön och att det blivit ett fel (error).
8. Stäng ner skrivarkön.
9. Byt tillbaka till CLIENT

## Ta bort Skrivare från SERVER1
1. . Ta bort skrivaren Test Printer. Control Panel – Hardware and Sound – Devices and Printer
högerklicka på skrivaren och välj Remove Device (ta bort enhet).
2. Byt tillbaka till SERVER1
3. Ta bort skrivaren Test Printer från SERVER1 via Print Management konsolen. Högerklicka och
välj Delete.
4. Ta bort drivrutinen Canon Inkjet BJ 535PD genom att högerklicka på den och välj Remove Driver
Package och välj Remove.
5. Ta bort skrivarporten 192.168.0.33. Högerklicka och välj Delete. Får ni ett meddelandde om
att porten används så är det bara att uppdatera konsolen med F5 och försöka igen.
6. Avinstallera rollen Print and Document Services via Server Manager och Manage – Remove
Roles and Features.

Om du inte kan utföra steg 4 och 5 för att processer är igång så behöver du rensa spoolern i servern
Samtidigt som du startar spoolern kan du ta bort drivrutinen och/eller porten



http://itlararen.se/labbar/Laboration-Windows_Server_2012R2_01-Installation.pdf


