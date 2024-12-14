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

Prema [1] i [2], Avalon-ST (engl. _Avalon Streaming_) predstavlja sučelje koje predstavlja jednosmjerni tok podataka sabirnicom maksimalne širine 4096 bita, uključujući multipleksirane tokove, pakete i DSP podatke. 

Signali na Avalon-ST sučelju su sljedeći:

* _channel_ - indicira kanal koji se prenosi;

* _data_ - podatak koji se prenosi u trenutnom ciklusu transfera paketa;

* _error_ - označava greške koje utiču na podatke koji se prenose u trenutnom ciklusu.

* _ready_ - signal koji indicira da je odredište spremno za prelazak u sljedeći ciklus transfera paketa;

* _valid_ - signal koji indicira da je podatak koji se prenosi u trenutnom ciklusu transfera paketa ispravan;

* _empty_ - indicira broj praznih simbola u podatku iz trenutnog ciklusa transfera paketa;

* _endofpacket_ - signal koji indicira kraj paketskog prenosa;

* _startofpacket_ - signal koji indicira početak paketskog prenosa;

### Ulazni i izlazni signali sklopa - Waveform dijagram

![UDP_parser_waveforms](https://github.com/user-attachments/assets/1f481615-2da3-46ec-b23c-38f67f8d16e0)

Kako je prikazano, definisani su takt signal _clk_, te reset signal _rst_. Kako je naglašeno, _in_data_ signal predstavlja podatke koje se prenose, odnosno pakete iz okvira definisanih u _Uvodu_. U nastavku je dat opis paketa:



Izlazni podaci _out_data_ se pojavljuju nakon obrade ulaznog toka. 	_channel_ pokazuje vrijednosti OD što sugeriše da parser signalizira završetak prenosa podataka i selekciju odgovarajućeg izlaznog kanala.

## Literatura

[1] Intel, F. P. G. A. (2021.) _Avalon® interface specifications_., Tech. Rep., MNL-AVABUSREF.

[2] Kaljić E., (2024.), _Arhitekture paketskih čvorišta - Predavanje 5_.
