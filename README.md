# Parser UDP datagrama

## Uvod

UDP predstavlja transportni protokol koji prenosi podatke u obliku datagrama, bez prethodno uspostavljene veze, često korišten za aplikacije koje zahtijevaju brzu komunikaciju s minimalnim kašnjenjem, poput video streaminga, online igara ili DNS-a.
Parsiranje predstavlja proces identifikacije i ekstrakcije odgovarajućih polja iz zaglavlja paketa. 
S prethodnim u vezi, UDP datagram parser je hardverski ili softverski modul dizajniran za analizu (parsiranje) i ekstrakciju informacija iz UDP (User Datagram Protocol) datagrama.

Glavni koraci pri parsiranju UDP datagrama su:
* Parsiranje Ethernet zaglavlja: Ekstraktuje MAC adrese i provjerava EtherType.
* Parsiranje IP zaglavlja: Ekstraktuje IP adrese i provjerava protokol.
* Parsiranje UDP zaglavlja: Ekstraktuje UDP portove i veličinu korisničkih podataka.
* Ekstrakcija korisničkih podataka: Prenosi podatke aplikacijskog sloja prema izlaznom interfejsu.


### Ethernet okvir

<img width="710" alt="Screenshot 2024-12-10 at 17 22 06" src="https://github.com/user-attachments/assets/303e2b74-5c0e-467c-948b-a39176913f73">

Ethernet okvir je prethodno najavljen preambulom i delimiterom početka okvira (SFD), koji su dio Ethernet paketa na fizičkom sloju. Svaki Ethernet okvir počinje Ethernet zaglavljem, koje sadrži odredišne i izvorne MAC adrese kao prva dva polja. Srednji dio okvira čini sadržaj podataka, uključujući zaglavlja drugih protokola (npr. Internet protokola) koji se prenose u okviru. Okvir se završava sekvencom provjere okvira, koja je predstavljena sa 32 bita.

### IP okvir


<img width="890" alt="Screenshot 2024-12-10 at 17 22 27" src="https://github.com/user-attachments/assets/bd7f174f-d24c-4445-b04d-ad889322ae6f">

Prva komponenta IP okvira označava verziju IP protokola (npr. IPv4). Polje TOS (engl. _Type of service_) koristi se za definisanje prioriteta i kvaliteta usluge (engl. _Quality of service_) za prenesene podatke. Length polje definiše ukupnu veličinu paketa u bajtima, uključujući zaglavlje i podatke. Identifikaciono polje se koristi za prepoznavanje grupe fragmenata jednog IP datagrama. IP protokol ima ograničenje maksimalne veličine paketa koju mreža može prenijeti (engl. _Maximum Transmission Unit_), ako veličina datagrama premašuje ovo ograničenje mora se podijeliti na manje dijelove, odnosno fragmente, kako bi prijenos bio uspješan. Polje flags pruža dodatne informacije o fragmentaciji. Vrijeme trajanja ograničava maksimalni broj skokova paketa kroz mrežu u slučaju beskonačne petlje u rutiranju. Naredno polje identifikuje transportni protokol koji se koristi (npr. TCP ili UDP), a zatim se koristi Checksum za provjeru grešaka u zaglavlju. Krajnji dio okvira je sačinjen od izvorišne i odredišne IP adrese, te polja za prijenos stvarnih korisničkih podataka.

### UDP okvir


<img width="509" alt="Screenshot 2024-12-10 at 17 22 38" src="https://github.com/user-attachments/assets/3981b43b-6921-4e3e-8b4a-639021945021">

UDP okvir je sačinjen od četiri polja dužine po dva bajta, te korisničkih podataka. Prva dva su izvorišni i odredišni port, a zatim slijedi specificiranje dužine UDP datagrama u bajtima (polja zaglavlja i polje podataka). Polje Checksum služi za provjeru grešaka u zaglavlju i podacima.


## Talasni oblici

Početna ideja izgleda talasnih oblika, izrađena korištenjem alata _Wavedrom_ data je u istoimenom folderu. Unutar foldera date su dvije verzije, od kojih je jedna sa generalnim izgledom okvira i njegovih polja, dok je drugi detaljniji i sadrži oktete koji dolaze na interfejs. Prethodno je urađeno na osnovu izgleda okvira datog u _Uvodu_.

### Signali - Avalon ST

Prema [1] i [2], Avalon-ST (engl. _Avalon Streaming_) je sučelje koje predstavlja jednosmjerni tok podataka sabirnicom maksimalne širine 4096 bita, uključujući multipleksirane tokove, pakete i DSP podatke. 

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

Kako je prikazano, definisani su takt signal `clk`, te reset signal `rst`. Kako je naglašeno, `in_data` signal predstavlja podatke koje se prenose, odnosno oktete iz okvira definisanih u _Uvodu_. U nastavku je dat opis transfera:

* **D1 - D14** predstavljaju Ethernet okvir (isključujući preambulu i SFD). Dakle, prenos počinje sa prvim oktetom odredišne MAC adrese. S tim u vezi, **D1-D6** predstavljaju 6B odredišne MAC adrese. Nakon toga, slijedi 6B izvorišne MAC adrese (**D7-D12**), te 2B koja označavaju dužinu ili tip podataka. Iz posljednja dva okteta izvlači se informacija o tipu protokola koji se prenosi u okviru. U slučaju da su posljednja dva okteta "0x0800", riječ je IPv4. 
* Nakon Ethernet okvira, slijedi IP okvir (**D15 - D34**). U strukturi okvira, **D15** predstavlja 1B informacije o verziji IP, nakon čega slijedi 1B (**D16**) TOS (engl. _Type of service_). **D17-D18** nose informaciju o dužini IP okvira na osnovu kojeg zaključujemo kada očekujemo sljedeći okvir. **D17-D23** predstavljaju identifikaciju (2B), IP zastavice (2B), te 1B TTL (engl. _Time to live_), rekurzivno. Potom slijedi **D24**, odnosno polje veličine 1B koje služi za identifikaciju protokola koji se koristi na višem sloju. U slučaju da je to vrijednost 17, paket se dalje šalje na UDP. Slijede 2B checksum-a (**D25-D26**), te 4B izvorišne IP adrese (**D27-D30**) koji identifikuje uređaj koji šalje IPv4 paket, te 4B odredišne IP adrese (**D31-D34**).
* Kako je ranije navedeno, u slučaju da je unutar IP okvira vrijednost protokola 17, sljedeći okvir je UDP (**D35-D42**). U strukturi okvira, prva 2B (**D35-D36**) rezervisana su za UDP port izvora, nakon čega slijede 2B UDP porta odredišta (**D37-D38**). Slijede 2B (**D39-D40**)o dužini UDP datagrama (uključujući zaglavlje i payload), te 2B (**D41-D42**) checksuma.
* Kada se završi UDP okvir, šalju se podaci (engl. _payload_) (**D43-D60**), nakon čega slijede 4B provjere (engl. _Frame Check Sequence_) koji se koriste za detekciju grešaka nastalih tokom prijenosa podataka.

Signal `out_data` predstavlja parsirani UDP payload ulaznih podataka, dok `channel` pokazuje vrijednosti OCD: {IP adresa izvora **D27-D30**, UDP port izvora **D35-D36**, IP adresa odredišta **D31-D34**, UDP port odredišta **D37-D38**} što sugeriše da parser signalizira završetak prenosa podataka i selekciju odgovarajućeg izlaznog kanala.

Signali na AVALON-ST sučelju obuhvataju i `empty` signal, ali je u konkretnom slučaju isti isključen jer projektni zadatak predviđa 8-bitni Avalon-ST, gdje je vrijednost empty signala uvijek nula.

## Konačni automat

Konačni automat (engl. _Final State Machine_) predstavlja diskretni matematički model koji se koristi za modeliranje sekvencijalnih logičkih kola. Postoje dva načina predstavljanja konačnih automata - pomoću dijagrama stanja ili hardverski bazirane reprezentacija. Dijagram stanja predstavlja grafičku reprezentaciju specifikacija konačnog automata. Dijagram stanja prikazuje sva moguća stanja u kojima se sistem može naći, vrijednosti ulaza za koje sistem prelazi iz stanja u stanje, te vrijednosti izlaza koje sistem proizvodi u svakom od stanja. Za izradu projektnog zadatka korišten je dijagram sa upotrebom ključne riječi else. Konačni automat je dizajniran da parsira ulazni tok podataka kroz nekoliko slojeva mrežnog paketa. Proces uključuje identifikaciju početka paketa, validaciju zaglavlja svakog sloja (Ethernet, IP, UDP), izdvajanje korisničkih podataka i validaciju završetka paketa.

Predstavljeno je ukupno šest mogućih stanja: 
* idle: Početno stanje,
* Ethernet_header: Obrada Ethernet zaglavlja,
* IP_header: Obrada IP zaglavlja,
* UDP_header: Obrada UDP zaglavlja,
* Data: Korisnički podaci,
* CRC: Provjera završnih bajta paketa.

Parser ostaje u stanju idle sve do dolaska paketa, dok signal 'rst' omogućava resetovanje konačnog automata u početno stanje. Ukoliko je paket validan automat prelazi u naredno stanje - Ethernet_header. Na osnovu posljednja dva okteta određuje se tip protokola koji se koristi za prenos, a u slučaju IPv4 posljednja dva okteta su "0x0800". Ukoliko uslov nije ispunjen, automat se vraća u stanje idle, a ukoliko jeste ostaje u stanju IP_header sve dok se ne izvrši provjera UDP protokola. Ukoliko je protokol UDP naredno stanje je Data, a ako nije parser se vraća u idle. Za određivanje stanja koristi se i brojač bita, te kada dođe do kraja UDP payloada prelazi u CRC stanje iz kojeg se, ponovo, vraća u početno.



## Literatura

[1] Intel, F. P. G. A. (2021.) _Avalon® interface specifications_., Tech. Rep., MNL-AVABUSREF.

[2] Kaljić E., (2024.), _Arhitekture paketskih čvorišta - Predavanje 5_.
