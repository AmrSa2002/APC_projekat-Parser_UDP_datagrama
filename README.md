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


![462571784_1280781979624566_2764442512394821332_n](https://github.com/user-attachments/assets/0487795c-d3bf-40a3-92c2-4854744493c1)
![467377437_1776868053049645_171008829030926123_n](https://github.com/user-attachments/assets/75d2003a-ecd9-4698-a383-392e170beef8)
![462571784_1280781979624566_2764442512394821332_n](https://github.com/user-attachments/assets/fac0f13d-d811-41cc-b455-d2fc836ffbd6)
