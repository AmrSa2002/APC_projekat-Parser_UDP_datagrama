# Parser UDP datagrama

## Uvod

UDP (User Datagram Protocol) predstavlja transportni protokol koji prenosi podatke u obliku datagrama, bez prethodno uspostavljene veze, često korišten za aplikacije koje zahtijevaju brzu komunikaciju s minimalnim kašnjenjem, poput video streaminga, online igara ili DNS-a.
Parsiranje predstavlja proces identifikacije i ekstrakcije odgovarajućih polja iz zaglavlja paketa [1]. 
S prethodnim u vezi, UDP datagram parser je hardverski ili softverski modul dizajniran za analizu, parsiranje i ekstrakciju informacija iz UDP datagrama.

Glavni koraci pri parsiranju UDP datagrama su:
* Parsiranje Ethernet zaglavlja: Ekstraktuje MAC adrese i provjerava EtherType.
* Parsiranje IP zaglavlja: Ekstraktuje IP adrese i provjerava protokol.
* Parsiranje UDP zaglavlja: Ekstraktuje UDP portove i veličinu korisničkih podataka.
* Ekstrakcija korisničkih podataka: Prenosi podatke aplikacijskog sloja prema izlaznom interfejsu.


### Ethernet okvir

<img width="710" alt="Screenshot 2024-12-10 at 17 22 06" src="https://github.com/user-attachments/assets/303e2b74-5c0e-467c-948b-a39176913f73">

Ethernet okvir je prethodno najavljen preambulom i delimiterom početka okvira (SFD), koji su dio Ethernet paketa na fizičkom sloju. Svaki Ethernet okvir počinje Ethernet zaglavljem, koje sadrži odredišne i izvorišne MAC adrese kao prva dva polja. Srednji dio okvira čini sadržaj podataka, uključujući zaglavlja drugih protokola (npr. Internet protokola) koji se prenose u okviru. Okvir se završava sekvencom provjere okvira, koja je predstavljena sa 32 bita.

### IP okvir


<img width="890" alt="Screenshot 2024-12-10 at 17 22 27" src="https://github.com/user-attachments/assets/bd7f174f-d24c-4445-b04d-ad889322ae6f">

Prva komponenta IP okvira označava verziju IP protokola (npr. IPv4). Polje TOS (engl. _Type of service_) koristi se za definisanje prioriteta i kvaliteta usluge (engl. _Quality of service_) za prenesene podatke. Length polje definiše ukupnu veličinu paketa u bajtima, uključujući zaglavlje i podatke. Identifikaciono polje se koristi za prepoznavanje grupe fragmenata jednog IP datagrama. IP protokol ima ograničenje maksimalne veličine paketa koju mreža može prenijeti (engl. _Maximum Transmission Unit_), ako veličina datagrama premašuje ovo ograničenje mora se podijeliti na manje dijelove, odnosno fragmente, kako bi prijenos bio uspješan. Polje flags pruža dodatne informacije o fragmentaciji. Vrijeme trajanja ograničava maksimalni broj skokova paketa kroz mrežu u slučaju beskonačne petlje u rutiranju. Naredno polje identifikuje transportni protokol koji se koristi (npr. TCP ili UDP), a zatim se koristi Checksum za provjeru grešaka u zaglavlju. Krajnji dio okvira je sačinjen od izvorišne i odredišne IP adrese, te polja za prijenos stvarnih korisničkih podataka.

### UDP okvir


<img width="509" alt="Screenshot 2024-12-10 at 17 22 38" src="https://github.com/user-attachments/assets/3981b43b-6921-4e3e-8b4a-639021945021">

UDP okvir je sačinjen od četiri polja dužine po dva bajta, te korisničkih podataka. Prva dva su izvorišni i odredišni port, a zatim slijedi specificiranje dužine UDP datagrama u bajtima (polja zaglavlja i polje podataka). Polje Checksum služi za provjeru grešaka u zaglavlju i podacima.


## Talasni oblici

Ulazni i izlazni signali sklopa opisani su korištenjem alata _Wavedrom_ na osnovu izgleda okvira datog u _Uvodu_. Analizirana su tri različita scenarija, te su u skladu s tim kreirana tri waveform dijagrama koji pokrivaju date scenarije. 

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

#### Scenarij 1 - bez backpressure
![Wavedrom - scenarij 1](https://github.com/user-attachments/assets/95cf4501-3498-4b93-84c8-76eae59f75f5)

Kako je prikazano, definisani su takt signal `clk`, te reset signal `rst`. Kako je naglašeno, `in_data` signal predstavlja podatke koje se prenose, odnosno oktete iz okvira definisanih u _Uvodu_. U nastavku je dat opis transfera:

* **D1 - D14** predstavljaju Ethernet okvir (isključujući preambulu i SFD). Dakle, prenos počinje sa prvim oktetom odredišne MAC adrese. S tim u vezi, **D1-D6** predstavljaju 6B odredišne MAC adrese. Nakon toga, slijedi 6B izvorišne MAC adrese (**D7-D12**), te 2B koja označavaju dužinu ili tip podataka. Iz posljednja dva okteta izvlači se informacija o tipu protokola koji se prenosi u okviru. U slučaju da su posljednja dva okteta "0x0800", riječ je IPv4. 
* Nakon Ethernet okvira, slijedi IP okvir (**D15 - D34**). U strukturi okvira, **D15** predstavlja 1B informacije o verziji IP, nakon čega slijedi 1B (**D16**) TOS (engl. _Type of service_). **D17-D18** nose informaciju o dužini IP okvira na osnovu kojeg zaključujemo kada očekujemo sljedeći okvir. **D17-D23** predstavljaju identifikaciju (2B), IP zastavice (2B), te 1B TTL (engl. _Time to live_), rekurzivno. Potom slijedi **D24**, odnosno polje veličine 1B koje služi za identifikaciju protokola koji se koristi na višem sloju. U slučaju da je to vrijednost 17, paket se dalje šalje na UDP. Slijede 2B checksum-a (**D25-D26**), te 4B izvorišne IP adrese (**D27-D30**) koji identifikuje uređaj koji šalje IPv4 paket, te 4B odredišne IP adrese (**D31-D34**).
* Kako je ranije navedeno, u slučaju da je unutar IP okvira vrijednost protokola 17, sljedeći okvir je UDP (**D35-D42**). U strukturi okvira, prva 2B (**D35-D36**) rezervisana su za UDP port izvora, nakon čega slijede 2B UDP porta odredišta (**D37-D38**). Slijede 2B (**D39-D40**)o dužini UDP datagrama (uključujući zaglavlje i payload), te 2B (**D41-D42**) checksuma.
* Kada se završi UDP okvir, šalju se podaci (engl. _payload_) (**D43-D60**), nakon čega slijede 4B provjere (engl. _Frame Check Sequence_) koji se koriste za detekciju grešaka nastalih tokom prijenosa podataka.

Signal `out_data` predstavlja parsirani UDP payload ulaznih podataka, dok `channel` pokazuje vrijednosti OCD: {IP adresa izvora **D27-D30**, UDP port izvora **D35-D36**, IP adresa odredišta **D31-D34**, UDP port odredišta **D37-D38**} što sugeriše da parser signalizira završetak prenosa podataka i selekciju odgovarajućeg izlaznog kanala.

Signali na AVALON-ST sučelju obuhvataju i `empty` signal, ali je u konkretnom slučaju isti isključen jer projektni zadatak predviđa 8-bitni Avalon-ST, gdje je vrijednost empty signala uvijek nula.

Osim ulaznih i izlaznih Avalon-ST signala, na waveform dijagram dodani su i interni signali `byte_index`, `ip_header_length`, `udp_header_length`, te `s_state`, a na koji će pojednostaviti razumijevanje i kreiranje FSM dijagrama. 

![scenarij1](https://github.com/user-attachments/assets/705e5180-1572-4d14-af54-d5a49b1dbf90)

Signal `byte_index`, kako mu i naziv govori, signalizira kroz koji oktet `in_data` signala se prolazi, odnosno predstavlja brojač na osnovu kojeg je realizirana kombinatorna logika koja omogućava parsiranje UDP datagrama. 
Signali `ip_header_length` i `udp_header_length` usko su vezani uz IP i UDP okvire opisane u _Uvodu_. Tačnije, oni uzimaju vrijednosti iz odgovarajućih polja okvira koji se odnose na dužinu zaglavlja. S tim u vezi, prvi bajt IP headera sačinjen je od 4 bita koji specificiraju verziju, te 4 bita koji specificiraju dužinu zaglavlja zbog čega se i razmatraju samo posljednja 4 bita.
Signal `s_state` odnosi se na trenutno zaglavlje okvira, odnosno Ethernet, IP ili UDP, te korisničke podatke ili idle stanje u slučaju da trenutno stanje nije niti jedno od ranije navedenih. Boje ovog dijela dijagrama konzistentne su sa bojama unutar `in_data` što pojednostavljuje čitljivost dijagrama. 

#### Scenarij 2 - sa backpressure

Potiskivanje unazad (engl. _Backpressure_) je mehanizam putem kojeg odredište (engl. _sink_) može signalizirati izvoru (engl. _source_) da obustavi slanje podataka. Odredište obično koristi backpressure kako bi zaustavilo protok podataka kada su njegovi FIFO baferi puni ili kada postoji zagušenje na izlaznom portu [1].  
Kada sink nije spreman za prijem paketa, signal `out_ready` prelazi u stanje nula, čime se aktivira mehanizam backpressura. Ovaj mehanizam zaustavlja daljnji prijem paketa od strane source-a, pri čemu signal `in_ready` također postaje jednak nuli.

U nastavku je dat prikaz waveform dijagrama sa internim signalima opisanim kroz prethodni scenarij.

![scenarij2](https://github.com/user-attachments/assets/ae1a631f-2389-4780-9585-e8dff54fa9a8)


#### Scenarij 3 - backpressure (out_ready = '0' i na UDP payloadu)

U nastavku je dat prikaz waveform dijagrama sa internim signalima opisanim kroz _Scenarij br. 1_.

![scenarij3](https://github.com/user-attachments/assets/c22fcbf8-ac3d-4acc-9252-1b945b5f4ceb)


## Konačni automat

Konačni automat (engl. _Final State Machine_) predstavlja  je posebnu tehniku modeliranja za sekvencijalne logičke sklopove [3,str. 276]. Postoje dva načina predstavljanja konačnih automata - pomoću dijagrama stanja ili hardverski bazirane reprezentacije. Dijagram stanja predstavlja grafičku reprezentaciju specifikacija konačnog automata. Dijagram stanja prikazuje sva moguća stanja u kojima se sistem može naći, vrijednosti ulaza za koje sistem prelazi iz stanja u stanje, te vrijednosti izlaza koje sistem proizvodi u svakom od stanja. Ova metoda olakšava vizualizaciju i implementaciju sistema, jer omogućava intuitivno razumijevanje logike rada automata. Hardverski bazirana reprezentacija, s druge strane, fokusira se na implementaciju automata koristeći logičke sklopove, što je često ključno za dizajn ugrađenih sistema i digitalnih kola.
Konačni automat je dizajniran da parsira ulazni tok podataka kroz nekoliko slojeva mrežnog paketa. Proces uključuje identifikaciju početka paketa, validaciju zaglavlja svakog sloja (Ethernet, IP, UDP), izdvajanje korisničkih podataka i validaciju završetka paketa.

Predstavljeno je ukupno šest mogućih stanja: 
* IDLE: Početno stanje,
* ETHERNET_HEADER: Obrada Ethernet zaglavlja,
* IP_HEADER: Obrada IP zaglavlja,
* UDP_HEADER: Obrada UDP zaglavlja,
* DATA: Korisnički podaci,
* CRC: Provjera završnih bajta paketa.


Konačni automat ostaje u stanju IDLE sve do dolaska paketa, dok signal 'rst' služi za resetovanje automata u početno stanje. Kada signal in_startofpacket postane aktivan ('1') i in_valid potvrdi valjanost ulaza, automat prelazi u naredno stanje pod nazivom ETHERNET_HEADER. U ovom stanju, na osnovu posljednja dva okteta Ethernet zaglavlja, određuje se tip protokola koji se koristi za prenos podataka. Za protokol IPv4, posljednja dva okteta su vrijednosti 0x0800.
Ukoliko uslov nije ispunjen, automat se vraća u stanje IDLE. S druge strane, ako je protokol IPv4 potvrđen, automat prelazi u stanje IP_HEADER, gdje obrađuje IP zaglavlje. Kada brojač bajta (byte_index) dostigne vrijednost 13 + ip_header_length - 1 i identifikuje da je protokol UDP (ip_protocol = x"11"), automat prelazi u stanje UDP_HEADER. U suprotnom, vraća se u IDLE.
U stanju UDP_HEADER, automat obrađuje UDP zaglavlje. Ako brojač bajta dostigne vrijednost 13 + ip_header_length + 8, automat prelazi u stanje DATA, gdje se obrađuju korisnički podaci.
Nakon obrade korisničkih podataka, kada brojač bajta dostigne vrijednost 13 + ip_header_length + udp_length, automat prelazi u stanje CRC. U ovom stanju se provjerava integritet podataka, a kada signal out_endofpacket postane aktivan ('1'), automat se vraća u početno stanje IDLE, spreman za obradu narednog paketa. 

Grafik konačnog automata korištenog za simulaciju parsera UDP datagrama je kreiran upotrebom draw.io, besplatnog online alata za crtanje dijagrama.

![UDP_parser](https://github.com/user-attachments/assets/d74fd4bc-0a29-4773-a18d-8855eab34865)

## Modeliranje sklopa u VHDL-u

Shodno ranije opisanim signalima, te stanjima konačnog automata, sklop je modeliran pomoću jezika za opis hardvera - VHDL. Ulazni i izlazni signali obuhvataju signale Avalon ST sučelja, dok je FSM modeliran kao 3-procesni.
Prvi proces odnosi se na kombinatornu logiku za tranzicije stanja i ostalih registara; drugi proces odnosi se na sekvencijalnu logiku za registre stanja, brojače i pomoćne registre, dok se treći proces odnosi na kombinatornu logiku za izlaze. Modul koristi indeksiranje bajta (byte_index) kako bi prepoznao odgovarajuća polja u Ethernet, IP i UDP zaglavljima. Dužina IP i UDP zaglavlja dinamički se računa na temelju ulaznih podataka, dok se korisnički podaci direktno prosljeđuju na izlaz, sa minimalnim kašnjenjem.

U nastavku je prikazan detaljan izvještaj o procesu kompilacije dizajna (engl. _compilation report_) i vizuelni dizajn na nivou Register Transfer Level-a (RTL), koji omogućava prikaz logičke strukture dizajna prije sinteze.

![report](https://github.com/user-attachments/assets/90640513-d3f6-4008-aa2a-199ecf0ce25d)

![rtl](https://github.com/user-attachments/assets/cbe4f4f6-b510-412d-8053-b7adde61951b)

## Verifikacija pomoću preglednika stanja

Preglednik stanja (engl. _State Machine Viewer_) pruža grafički prikaz stanja konačnog automata definisanog na osnovu koda za simulaciju parsera UDP datagrama kroz Intel Quartus Prime alat. Preglednik stanja je moguće otvoriti na sljedeće načine:  
* U meniju _Tools_, odaberiom _Netlist Viewers_ i klikom na _State Machine Viewer_ ili
* Dvostrukim klikom na instancu automata stanja u _RTL Viewer_-u.

Na osnovu prethodnog, izvršena je verifikacija dijagrama konačnih stanja kreiranog upotrebom draw.io alata.

![fsm](https://github.com/user-attachments/assets/5e3d41cd-e042-4430-81cb-ff2287d819ef)


## Verifikacija pomoću simulacijskog alata ModelSim

Kako su analizirana tri scenarija, kreirana su tri testbench file-a koji obuhvataju slučajeve bez _backpressure_-a, sa _backpressure_-om, te sa _backpressure_-om na UDP payload-u. U nastavku je dat kratki opis kreiranih scenarija za verifikaciju, te prikaz signala u simulacijskom alatu ModelSim.

Prvi testbench omogućava analizu simulacije ponašanja sistema kroz sekvencijalno slanje bajta za slučaj bez _backpressure_-a. Kako su signali ranije opisani, te predstavljeni wavefrom dijagrami, simulacijski alat ModelSim pruža verifikaciju ispravno predstavljenog prenosa.

![tb1](https://github.com/user-attachments/assets/14f52639-76dd-4f6e-98d0-9e71997ff13e)

Drugi slučaj obuhvata prenos sa _backpressure_-om.

![tb2](https://github.com/user-attachments/assets/ba508d53-c204-4bd8-8882-c78951617014)

Posljedni testbench je kreiran za slučaj sa _backpressure_-om na UDP payload-u.

![tb3](https://github.com/user-attachments/assets/53e40543-c99b-44ff-b8ad-74c6cee3ac92)


## Zaključak

Korištenje wavedrom alata je omogućilo pojednostavljenu analizu prijenosa podataka, dok je implementacija konačnog automata u draw.io alatu osigurala precizno prepoznavanje zaglavlja paketa. Rezultati potvrđuju da simulacija parsera UDP datagrama kroz Quartus Prime razvojno okruženje pravilno prepoznaje strukturu paketa i omogućava prijenos podataka na osnovu definisanih kriterija. 

Naredna poboljšanja parsera mogu uključivati proširenje podrške na dodatne protokole, te implementaciju naprednih metoda za analizu i filtriranje mrežnog saobraćaja. Ovakav pristup doprinosi efikasnijem radu mrežnih sistema, smanjenju latencije i doprinosi poboljšanju kvaliteta usluge u realnim sistemima.

## Literatura

[1] Kaljić E., (2024.), _Arhitekture paketskih čvorišta - Predavanje 5_.

[2] Intel, F. P. G. A. (2021.) _Avalon® interface specifications_., Tech. Rep., MNL-AVABUSREF.

[3] Volnei A. Pedroni (2010) Circuit Design and Simulation with VHDL (poglavlje 11), The MIT Press, Cambridge, Massachussets, 2nd edition.

