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



<img width="710" alt="Screenshot 2024-12-10 at 17 22 06" src="https://github.com/user-attachments/assets/303e2b74-5c0e-467c-948b-a39176913f73">
<img width="890" alt="Screenshot 2024-12-10 at 17 22 27" src="https://github.com/user-attachments/assets/bd7f174f-d24c-4445-b04d-ad889322ae6f">
<img width="509" alt="Screenshot 2024-12-10 at 17 22 38" src="https://github.com/user-attachments/assets/3981b43b-6921-4e3e-8b4a-639021945021">
