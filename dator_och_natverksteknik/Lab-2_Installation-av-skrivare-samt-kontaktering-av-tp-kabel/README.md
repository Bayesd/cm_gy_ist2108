# Lab 1 - Installation av skrivare samt kontaktering av tp kabel

## Innehåll
- [Föreberande videos](#frberedande-videos)
- [Uppgift del 1](#uppgift-del-1)
    - [Bakgrund](#bakgrund)
    - [Instruktioner](#instruktioner)
    - [Material](#material)
    - [Mål](#ml)
    - [Syfte](#syfte)
    - [Vad ska ni leverera?](#vad-ska-ni-leverera)



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

Installera skrivare via Windows Server
https://itlararen.se/labbar/Laboration-Windows_Server_2012R2_11-Skrivare.pdf

Namnge din servermaskin till SERVER1
1. Starta, anslut till och logga in på din server
2. I Server Manager, klicka på local server
3. Klicka på namnet högst upp till vänster
4. Klicka på knappen "Change..."
5. Ändra namn till SERVER1

Konfigurera CLIENT
1. Starta, anslut till och logga in på din klientdator
2. Gå in på installningar/settings > System > om/about, alternativ sök på "Om din dator/About this computer"
3. Klicka på byt namn på datorn/change name 
4. Döp datorn till CLIENT och klicka på nästa


1. Starta SERVER1 och logga in som domänadministratör.
2. Starta Server Manager och använd Add Roles and Features Wizard för att installera Print
and Document Services rollen.
3. Lägg märke till Role Services alternativen. Välj Print Server och slutför installationen.
4. När installationen är klar, klicka på Close för att stänga ner guiden.
5. Starta Print Management konsolen genom att klicka på Tools och välja Print Management.
6. Markera noden Print Servers och kontrollera att SERVER1 finns med. Notera att det enkelt
går att lägga till fler servrar från vår domän som vi kan hantera via konsolen.
7. Klicka på SERVER1 (local) och sedan på Drivers för att se installerade skrivardrivrutiner.
8. Lägg till en ny drivrutin genom att högerklicka och välj Add Driver…
9. Använd Add Printer Driver Wizard och klicka på Next.
10. Välj drivrutin för 64-bitarsprocessorer och klicka på Next.
11. Välj drivrutinen Canon Inkjet BJ 535PD och klicka på Finish.
12. Kontrollera egenskaperna på drivrutinen genom att högerklicka på den och välja Properties.
Kontrollera att versionen är Type 4 User Mode.
13. Klicka på SERVER1 – Ports välj sedan att skapa en ny port genom att högerklicka och välja
Add Port..
14. Vi ska nu simulera att vi lägger till en befintlig nätverksskrivare som finns på det lokala
nätverket. Välj Standard TCP/IP Port och klicka på New Port.
15. Nu startar Add Standard TCP/IP Printer Port Wizard. Klicka på Next.
16. Ange en påhittad IP-adress på lokala labbnätverket, t.ex. 192.168.0.33 klicka på Next.
17. Nu kommer guiden att försöka ansluta till IP-numret och autodetektera portnummer. Detta
kommer inte att fungera då skrivaren inte finns. När försöket misslyckats välj device type
Hewlett Packard Jet Direct i rullistan för enhetstyp. Klicka på Next.
20. Klicka på Finish och stäng sedan ner printer ports.
21. Installera en ny nätverksskrivare genom att markera SERVER1 – Printers och högerklicka och
välj Add Printer…
22. Nu startar Network Printer Installation Wizard. Markera Add a new printer using an existing
port och välj porten (192.168.0.33) som vi skapade nyss.
23. Välj Use an existing Printer Driver on the computer och markera HP Laserjet 5200 PCL6
Class Driver och klicka på Next. 
24. Ange ett namn för skrivare, t.ex. Test Printer kontrollera att skrivaren delas ut och klicka på
Next.
25. Klicka på Next och Finish.
26. Starta CLIENT och logga in som user1.
27. Anslut till SERVER1 genom att skriva in UNC-sökvägen \\SERVER1 i utforskaren eller i kördialogfönstret.
28. Den utdelade skrivaren Test Printer borde listas. Högerklicka på den och välj Connect
(anslut).
29. Prova att skriva ut genom att starta notepad eller Wordpad och skriva något för att sedan
skriva ut (CTRL+P är tangentbordsgenvägen för att skriva ut). Välj aktuell skrivare.
30. Byt tillbaka till SERVER1
31. I Print Management konsolen, klicka på Print servers - SERVER1 – Printers och högerklicka
på Test Printer, välj Open Printer queue…
32. Kontrollera att utskriftsjobbet från user1 ligger i kön och att det blivit ett fel (error).
33. Stäng ner skrivarkön.
34. Byt tillbaka till CLIENT
35. Ta bort skrivaren Test Printer. Control Panel – Hardware and Sound – Devices and Printer
högerklicka på skrivaren och välj Remove Device (ta bort enhet).
36. Byt tillbaka till SERVER1
37. Ta bort skrivaren Test Printer från SERVER1 via Print Management konsolen. Högerklicka och
välj Delete.
38. Ta bort drivrutinen Canon Inkjet BJ 535PD genom att högerklicka på den och välj Remove Driver
Package och välj Remove.
39. Ta bort skrivarporten 192.168.0.33. Högerklicka och välj Delete. Får ni ett meddelandde om
att porten används så är det bara att uppdatera konsolen med F5 och försöka igen.
40. Avinstallera rollen Print and Document Services via Server Manager och Manage – Remove
Roles and Features. 



http://itlararen.se/labbar/Laboration-Windows_Server_2012R2_01-Installation.pdf

* [Instruktion - Aktivera usb passthrough till Hyper-v](https://adamtheautomator.com/hyper-v-usb-passthrough/)

