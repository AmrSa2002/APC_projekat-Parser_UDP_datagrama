# Parser UDP datagrama

## Uvod

UDP predstavlja transportni protokol koji prenosi podatke u obliku datagrama, bez prethodno uspostavljene veze, često korišten za aplikacije koje zahtijevaju brzu komunikaciju s minimalnim kašnjenjem, poput video streaminga, online igara ili DNS-a.
Parsiranje predstavlja proces identifikacije i ekstrakcije odgovarajućih polja iz zaglavlja paketa. 
S prethodnim u vezi, UDP datagram parser je hardverski ili softverski modul dizajniran za analizu (parsiranje) i ekstrakciju informacija iz UDP (User Datagram Protocol) datagrama.

Glavni koraci pri parsiranju UDP datagrama su:
* Parsiranje Ethernet zaglavlja: Ekstraktuje MAC adrese i provjerava EtherType (da li je IP paket).
* Parsiranje IP zaglavlja: Ekstraktuje IP adrese i provjerava protokol (da li je UDP).
* Parsiranje UDP zaglavlja: Ekstraktuje UDP portove i veličinu korisničkih podataka.
* Ekstrakcija korisničkih podataka: Prenosi podatke aplikacijskog sloja prema izlaznom interfejsu.


### Ethernet okvir

<img width="710" alt="Screenshot 2024-12-10 at 17 22 06" src="https://github.com/user-attachments/assets/303e2b74-5c0e-467c-948b-a39176913f73">

Ethernet okvir je prethodno najavljen preambulom i delimiterom početka okvira (SFD), koji su dio Ethernet paketa na fizičkom sloju. Svaki Ethernet okvir počinje Ethernet zaglavljem, koje sadrži odredišne i izvorne MAC adrese kao prva dva polja. Srednji dio okvira čini sadržaj podataka, uključujući zaglavlja drugih protokola (npr. Internet protokola) koji se prenose u okviru. Okvir se završava sekvencom provjere okvira, koja je predstavljena sa 32 bita.

### IP okvir


<img width="890" alt="Screenshot 2024-12-10 at 17 22 27" src="https://github.com/user-attachments/assets/bd7f174f-d24c-4445-b04d-ad889322ae6f">

### UDP okvir


<img width="509" alt="Screenshot 2024-12-10 at 17 22 38" src="https://github.com/user-attachments/assets/3981b43b-6921-4e3e-8b4a-639021945021">


## Talasni oblici

Početna ideja izleda talasnih oblika, izrađena korištenjem _Wavedrom_ data je u istoimenom folderu. Unutar foldera date su 2 verzije, od kojih je jedna sa generalnim izgledom okvira i njegovih polja, dok je drugi detaljniji i sadrži oktete koji dolaze na interfejs. Prethodno je urađeno na osnovu izgleda okvira datog u _Uvodu_. Prva verzija FSM dijagrama je također data u folderu.

### Signali - Avalon ST

_channel_ 

_data_

_error_

_ready_

_valid_

_empty_

_endofpacket_

_startofpacket_

## Literatura
