��    �      L  �   |
      �  �  �  h   �  �   
  i  �  b  e  �   �     b     q  %   �  5   �     �     �     �       "        1     A     Z     s     �      �     �     �  	   �       6     '   N  '   v  "   �  4   �  *   �  .   !     P  
   \     g     u     �     �     �     �     �     �                5     K     `     u     �     �     �     �     �     �     
               =     Q     n     �     �  %   �  &   �  #     #   5  #   Y  !   }  (   �  <   �  %        +      I     j  #   �     �     �  #   �  %   	  ?   /  	   o     y  %   �     �  
   �     �     �     �               ,     :     J     [     q     �     �     �  4   �     �                 '      F      U      h      }      �      �      �      �      �      �   '   �      !  &   &!  	   M!     W!     e!     s!     v!     !     �!     �!     �!  L   �!  ;   "     H"  "   g"     �"     �"     �"     �"     �"     �"  	   �"     �"  *   �"  $   #  +   0#  #   \#  7   �#  %   �#  "   �#  4   $  (   6$  (   _$     �$     �$     �$     �$     �$     �$     �$     �$     %  
    %  &   +%  '   R%  ,   z%     �%     �%     �%     �%      �%  R  &  5  V'  r   �*  �   �*  �  �+  �  �-  �   $0     �0  "   �0  #   1  5   ,1     b1     p1     v1     �1  -   �1     �1  !   �1  !   �1     2  #   .2  0   R2  +   �2     �2     �2     �2  1   �2  2   (3  2   [3  ,   �3  @   �3  )   �3  -   &4     T4     e4     q4     4     �4     �4  5   �4     �4     	5     )5     I5     h5      �5     �5     �5      �5      
6     +6  )   K6     u6     �6  $   �6     �6     �6  )   �6     �6     7  &   77  '   ^7  ,   �7  9   �7  6   �7  6   $8  2   [8  5   �8  0   �8  ?   �8  J   59  <   �9  -   �9  2   �9  1   :  3   P:  .   �:  '   �:  0   �:  9   ;  J   F;     �;     �;  ,   �;     �;  
   �;     <     "<     ;<     Z<     q<     �<     �<     �<     �<     �<     =     =      :=  B   [=     �=     �=     �=  &   �=     >     $>     ?>     \>     z>  
   �>     �>     �>     �>     �>  +   �>     	?  5    ?     V?     f?     s?     �?     �?     �?     �?     �?  &   �?  N   @  >   R@     �@  (   �@     �@     �@     �@     A     A     A     #A     2A  #   ;A  "   _A  2   �A     �A  6   �A  $   B  )   ,B  D   VB     �B     �B     �B     �B     �B     C     $C     5C     HC     LC     fC  
   �C  2   �C  3   �C  8   �C     +D      1D     RD  '   ^D  ,   �D     J   �   3   �   .   r                                  y      �       �   �   [   S   �       c   ,   @   �   l   )   �   �   O       H      �       �   �       �          �   q           o         2   �           *   /       '       �      �   �             $   Y   b   C   �   �       K   7   d      {   ~   X   z           �   �   >   V       h   k          5           `       �          <   R   �   0       6       \       j      �       (       �   �   
   s   B      }       %       �   !       :   �   w   f             &   |      L       Z   ^   ?   T   U   e       8      P   1   M   v   u       i   �   G   n            �       �   x           9   =   ]          _   �      F           -       W   �          p   	          #   4      D       +       �          t   �   �   Q          N      �   "   E   m   �           ;   I           A   a   g        -h --help            Show this help
    -V --version         Show version
    -D --browse-domains  Browse for browsing domains instead of services
    -a --all             Show all services, regardless of the type
    -d --domain=DOMAIN   The domain to browse in
    -v --verbose         Enable verbose mode
    -t --terminate       Terminate after dumping a more or less complete list
    -c --cache           Terminate after dumping all entries from the cache
    -l --ignore-local    Ignore local services
    -r --resolve         Resolve services found
    -f --no-fail         Don't fail if the daemon is not available
    -p --parsable        Output in parsable format
     -k --no-db-lookup    Don't lookup service types
    -b --dump-db         Dump service type database
 %s [options]

    -h --help            Show this help
    -s --ssh             Browse SSH servers
    -v --vnc             Browse VNC servers
    -S --shell           Browse both SSH and VNC
    -d --domain=DOMAIN   The domain to browse in
 %s [options] %s <host name ...>
%s [options] %s <address ... >

    -h --help            Show this help
    -V --version         Show version
    -n --name            Resolve host name
    -a --address         Resolve address
    -v --verbose         Enable verbose mode
    -6                   Lookup IPv6 address
    -4                   Lookup IPv4 address
 %s [options] %s <name> <type> <port> [<txt ...>]
%s [options] %s <host-name> <address>

    -h --help            Show this help
    -V --version         Show version
    -s --service         Publish service
    -a --address         Publish address
    -v --verbose         Enable verbose mode
    -d --domain=DOMAIN   Domain to publish service in
    -H --host=DOMAIN     Host where service resides
       --subtype=SUBTYPE An additional subtype to register this service with
    -R --no-reverse      Do not publish reverse entry with address
    -f --no-fail         Don't fail if the daemon is not available
 %s [options] <new host name>

    -h --help            Show this help
    -V --version         Show version
    -v --verbose         Enable verbose mode
 : All for now
 : Cache exhausted
 <i>No service currently selected.</i> A NULL terminated list of service types to browse for Access denied Address Address family Address: An unexpected D-Bus error occurred Avahi Discovery Avahi SSH Server Browser Avahi VNC Server Browser Avahi Zeroconf Browser Avahi client failure: %s Avahi domain browser failure: %s Avahi resolver failure: %s Bad number of arguments
 Bad state Browse Service Types Browse for Zeroconf services available on your network Browse for Zeroconf-enabled SSH Servers Browse for Zeroconf-enabled VNC Servers Browse service type list is empty! Browsing for service type %s in domain %s failed: %s Browsing for services in domain <b>%s</b>: Browsing for services on <b>local network</b>: Browsing... Canceled.
 Change domain Choose SSH server Choose Shell Server Choose VNC server Client failure, exiting: %s
 Connecting to '%s' ...
 DNS failure: FORMERR DNS failure: NOTAUTH DNS failure: NOTIMP DNS failure: NOTZONE DNS failure: NXDOMAIN DNS failure: NXRRSET DNS failure: REFUSED DNS failure: SERVFAIL DNS failure: YXDOMAIN DNS failure: YXRRSET Daemon connection failed Daemon not running Desktop Disconnected, reconnecting ...
 Domain Domain Name: E Ifce Prot %-*s %-20s Domain
 E Ifce Prot Domain
 Established under name '%s'
 Failed to add address: %s
 Failed to add service: %s
 Failed to add subtype '%s': %s
 Failed to connect to Avahi server: %s Failed to create address resolver: %s
 Failed to create browser for %s: %s Failed to create client object: %s
 Failed to create domain browser: %s Failed to create entry group: %s
 Failed to create host name resolver: %s
 Failed to create resolver for %s of type %s in domain %s: %s Failed to create simple poll object.
 Failed to parse address '%s'
 Failed to parse port number: %s
 Failed to query host name: %s
 Failed to query version string: %s
 Failed to read Avahi domain: %s Failed to register: %s
 Failed to resolve address '%s': %s
 Failed to resolve host name '%s': %s
 Failed to resolve service '%s' of type '%s' in domain '%s': %s
 Host Name Host name conflict
 Host name successfully changed to %s
 Initializing... Interface: Invalid DNS TTL Invalid DNS class Invalid DNS return code Invalid DNS type Invalid Error Code Invalid RDATA Invalid address Invalid argument Invalid configuration Invalid domain name Invalid flags Invalid host name Invalid interface index Invalid number of arguments, expecting exactly one.
 Invalid operation Invalid packet Invalid port number Invalid protocol specification Invalid record Invalid record key Invalid service name Invalid service subtype Invalid service type Is empty Local name collision Location Memory exhausted Name Name collision, picking new name '%s'.
 No command specified.
 No suitable network protocol available Not found Not permitted Not supported OK OS Error Operation failed Port Resolve Service Resolve Service Host Name Resolve the host name of the selected service automatically before returning Resolve the selected service automatically before returning Resource record key is pattern Server version: %s; Host name: %s
 Service Name Service Name: Service Type Service Type: TXT TXT Data TXT Data: Terminal The IP port number of the resolved service The TXT data of the resolved service The address family for host name resolution The address of the resolved service The domain to browse in, or NULL for the default domain The host name of the resolved service The object passed in was not valid The requested operation is invalid because redundant The service name of the selected service The service type of the selected service Timeout reached Too few arguments
 Too many arguments
 Too many clients Too many entries Too many objects Type Version mismatch Waiting for daemon ...
 _Domain... avahi_domain_browser_new() failed: %s
 avahi_service_browser_new() failed: %s
 avahi_service_type_browser_new() failed: %s
 empty execlp() failed: %s
 n/a service_browser failed: %s
 service_type_browser failed: %s
 Project-Id-Version: pl
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2011-04-02 03:23+0200
PO-Revision-Date: 2010-06-29 10:36+0200
Last-Translator: Piotr Drąg <piotrdrag@gmail.com>
Language-Team: Polish <trans-pl@lists.fedoraproject.org>
Language: pl
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
     -h --help            Wyświetla tę pomoc
    -V --version         Wyświetla wersję
    -D --browse-domains  Przegląda domeny zamiast usług
    -a --all             Wyświetla wszystkie usługi, niezależnie od ich
                         typu
    -d --domain=DOMENA   Domena do przeglądania
    -v --verbose         Wyświetla więcej informacji
    -t --terminate       Wyłącza po zrzuceniu bardziej lub mniej
                         kompletnej listy
    -c --cache           Wyłącza po zrzuceniu wszystkich wpisów z pamięci
                         podręcznej
    -l --ignore-local    Ignoruje lokalne usługi
    -r --resolve         Rozwiązuje znalezione usługi
    -f --no-fail         Nie wyłącza, jeśli demon nie jest dostępny
    -p --parsable        Wyjście w formacie do przetwarzania
     -k --no-db-lookup    Nie przeszukuje typów usług
    -b --dump-db         Zrzuca bazę danych typów usług
 %s [opcje]

    -h --help            Wyświetla tę pomoc
    -s --ssh             Przegląda serwery SSH
    -v --vnc             Przegląda serwery VNC
    -S --shell           Przegląda SSH i VNC
    -d --domain=DOMENA   Domena do przeglądania
 %s [opcje] %s <nazwa komputera...>
%s [opcje] %s <adres...>

    -h --help            Wyświetla tę pomoc
    -V --version         Wyświetla wersję
    -n --name            Rozwiązuje nazwę komputera
    -a --address         Rozwiązuje adres
    -v --verbose         Wyświetla więcej informacji
    -6                   Przeszukuje adresy IPv6
    -4                   Przeszukuje adresy IPv4
 %s [opcje] %s <nazwa> <typ> <port> [<tekst...>]
%s [opcje] %s <nazwa-komputera> <adres>

    -h --help            Wyświetla tę pomoc
    -V --version         Wyświetla wersję
    -s --service         Publikuję usługę
    -a --address         Publikuje adres
    -v --verbose         Wyświetla więcej informacji
    -d --domain=DOMENA   Domena, w której opublikować usługę
    -H --host=DOMENA     Komputer, na jakim znajduje się usługa
       --subtype=PODTYP  Dodatkowy podtyp do zarejestrowania tej usługi
    -R --no-reverse      Nie publikuje odwróconego wpisu z adresem
    -f --no-fail         Nie wyłącza, jeśli demon nie jest dostępny
 %s [opcje] <nowa nazwa komputera>

    -h --help            Wyświetla tę pomoc
    -V --version         Wyświetla wersję
    -v --verbose         Wyświetla więcej informacji
 : Wszystko
 : Wyczerpano pamięć podręczną
 <i>Nie wybrano żadnej usługi.</i> Lista typów usług do przeglądania zakończona NULL Brak dostępu Adres Rodzina adresów Adres: Wystąpił nieoczekiwany błąd usługi D-Bus Wykrywanie Avahi Przeglądarka serwerów SSH Avahi Przeglądarka serwerów VNC Avahi Przeglądarka Zeroconf Avahi Klient Avahi nie powiódł się: %s Przeglądarka domen Avahi nie powiodła się: %s Rozwiązywanie Avahi nie powiodło się: %s Błędna liczba parametrów
 Błędny stan Przeglądanie typów usług Przeglądanie usług Zeroconf dostępnych w sieci Przeglądanie serwerów SSH z włączonym Zeroconf Przeglądanie serwerów VNC z włączonym Zeroconf Przeglądana lista typów usług jest pusta. Przeglądanie typu usług %s w domenie %s nie powiodło się: %s Przeglądanie usług w domenie <b>%s</b>: Przeglądanie usług w <b>lokalnej sieci</b>: Przeglądanie... Anulowano.
 Zmiana domeny Wybór serwera SSH Wybór powłoki serwera Wybór serwera VNC Klient nie powiódł się, kończenie działania: %s
 Łączenie z "%s"...
 DNS nie powiodło się: FORMERR DNS nie powiodło się: NOTAUTH DNS nie powiodło się: NOTIMP DNS nie powiodło się: NOTZONE DNS nie powiodło się: NXDOMAIN DNS nie powiodło się: NXRRSET DNS nie powiodło się: REFUSED DNS nie powiodło się: SERVFAIL DNS nie powiodło się: YXDOMAIN DNS nie powiodło się: YXRRSET Połączenie z demonem nie powiodło się Demon nie jest uruchomiony Pulpit Rozłączono, ponowne łączenie...
 Domena Nazwa domeny: E Interfejs Protokół %-*s %-20s Domena
 E Interfejs Protokół Domena
 Ustanowiono pod nazwą "%s"
 Dodanie adresu nie powiodło się: %s
 Dodanie usługi nie powiodło się: %s
 Dodanie podtypu "%s" nie powiodło się: %s
 Połączenie się z serwerem Avahi nie powiodło się: %s Utworzenie rozwiązania adresu nie powiodło się: %s
 Utworzenie przeglądarki dla %s nie powiodło się: %s Utworzenie obiektu klienta nie powiodło się: %s
 Utworzenie przeglądarki domen nie powiodło się: %s Utworzenie grupy wpisów nie powiodło się: %s
 Utworzenie rozwiązania nazwy komputera nie powiodło się: %s
 Utworzenie rozwiązania dla %s typu %s w domenie %s nie powiodło się: %s Utworzenie prostego obiektu typu "poll" nie powiodło się.
 Przetworzenie adresu "%s" nie powiodło się
 Przetworzenie numeru portu nie powiodło się: %s
 Odpytanie nazwy komputera nie powiodło się: %s
 Odpytanie łańcucha wersji nie powiodło się: %s
 Odczytanie domeny Avahi nie powiodło się: %s Zarejestrowanie nie powiodło się: %s
 Rozwiązanie adresu "%s" nie powiodło się: %s
 Rozwiązanie nazwy komputera "%s" nie powiodło się: %s
 Rozwiązanie usługi "%s" typu "%s" w domenie "%s" nie powiodło się: %s
 Nazwa komputera Konflikt nazw komputerów
 Zmiana nazwy komputera na %s powiodła się
 Inicjowanie... Interfejs: Nieprawidłowe TTL serwera DNS Nieprawidłowa klasa DNS Nieprawidłowy kod zwrotny DNS Nieprawidłowy typ DNS Nieprawidłowy kod błędu Nieprawidłowe RDATA Nieprawidłowy adres Nieprawidłowy parametr Nieprawidłowa konfiguracja Nieprawidłowa nazwa domeny Nieprawidłowe flagi Nieprawidłowa nazwa komputera Nieprawidłowy indeks interfejsu Nieprawidłowa liczba parametrów, oczekiwano dokładnie jednego.
 Nieprawidłowe działanie Nieprawidłowy pakiet Nieprawidłowy numer portu Nieprawidłowa specyfikacja protokołu Nieprawidłowy wpis Nieprawidłowy klucz wpisu Nieprawidłowa nazwa usługi Nieprawidłowy podtyp usługi Nieprawidłowy typ usługi Jest puste Kolizja nazwy lokalnej Położenie Wyczerpano pamięć Nazwa Kolizja nazw, wybieranie nowej nazwy "%s".
 Nie podano polecenia.
 Brak dostępnych odpowiednich protokołów sieciowych Nie odnaleziono Niedozwolone Nieobsługiwane OK Błąd systemu operacyjnego Działanie nie powiodło się Port Rozwiązywanie usługi Rozwiązywanie nazwy komputera usługi Rozwiązywanie nazwy komputera wybranej usługi automatycznie przed zwracaniem Rozwiązywanie wybranej usługi automatycznie przed zwracaniem Klucz wpisu zasobu jest wzorem Wersja serwera: %s; nazwa komputera: %s
 Nazwa usługi Nazwa usługi: Typ usługi Typ usługi: Tekst Dane tekstowe Dane tekstowe: Terminal Numer portu IP rozwiązanej usługi Dane tekstowe rozwiązanej usługi Rodzina adresów do rozwiązywania nazwy komputera Adres rozwiązanej usługi Domena do przeglądania lub NULL dla domyślnej domeny Nazwa komputera rozwiązanej usługi Przepuszczony obiekt nie był prawidłowy Zażądane działanie jest nieprawidłowe, ponieważ jest nadmiarowe Nazwa wybranej usługi Typ wybranej usługi Przekroczono czas oczekiwania Za mało parametrów
 Za dużo parametrów
 Za dużo klientów Za dużo wpisów Za dużo obiektów Typ Wersje nie zgadzają się Oczekiwanie na demona...
 _Domena... avahi_domain_browser_new() nie powiodło się: %s
 avahi_service_browser_new() nie powiodło się: %s
 avahi_service_type_browser_new() nie powiodło się: %s
 puste execlp() nie powiodło się: %s
 Nie dotyczy service_browser nie powiodło się: %s
 service_type_browser nie powiodło się: %s
 