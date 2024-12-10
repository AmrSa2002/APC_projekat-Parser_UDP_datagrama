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
