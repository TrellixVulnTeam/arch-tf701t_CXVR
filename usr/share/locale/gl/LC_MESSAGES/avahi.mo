��    �      �  �   �	        �  	  h   �  �     i    b  u  �   �     r     �  %   �  5   �     �     �       "        8     H     a     z     �      �     �     �  	   �     	  6     '   U  '   }  "   �  4   �  *   �  .   (     W  
   c     n     |     �     �     �     �     �     �          '     <     R     g     |     �     �     �     �     �     �               7     K     h     �     �  %   �  &   �  #     #   /  #   S  !   w  (   �  <   �  %   �     %      C     d  #   �     �     �  #   �  %     ?   )  	   i     s  %   �     �     �     �     �     �               )     9     J     `     t     �     �  4   �     �     �               5     D     W     l     �     �     �     �     �     �  '   �     �  &      	   <      F      T      b      e      n            �   "   �      �      �      �      �   *   �   $   !  +   B!  #   n!  7   �!  %   �!  "   �!  4   "  (   H"  (   q"     �"     �"     �"     �"     �"     �"     #     	#     #  
   2#  &   =#  '   d#  ,   �#     �#     �#     �#      �#  �  $    �%  {   �(    )  �  **  ^  �+  �   !.     �.     �.  8   �.  A   0/     r/     �/     �/  &   �/     �/  $   �/  $   0     (0  '   D0  5   l0  +   �0  #   �0     �0     1  @   #1  0   d1  0   �1  9   �1  G    2  .   H2  .   w2     �2     �2     �2     �2  -   �2     3  +   -3     Y3  "   p3  "   �3  !   �3  "   �3  #   �3  "   4  "   B4  #   e4  #   �4  "   �4  *   �4      �4  
   5     '5     F5      N5     o5     �5  -   �5  ,   �5  3   �5  /   36  ;   c6  4   �6  2   �6  8   7  4   @7  P   u7  O   �7  ;   8  1   R8  6   �8  7   �8  8   �8  +   ,9  $   X9  6   }9  >   �9  U   �9     I:     Z:  0   y:     �:     �:     �:  )   �:     ;     *;     E;     V;     o;     �;     �;     �;      �;  $   �;  E   <     b<     x<      �<  ,   �<     �<  !   �<     =  "   4=     W=     w=     �=     �=     �=     �=  0   �=  "   �=  8   >     V>     e>     s>     �>     �>  !   �>     �>  ,   �>  /   �>     %?     5?  	   E?     O?  +   X?  "   �?  @   �?      �?  G   	@  (   Q@  "   z@  :   �@  )   �@  )   A     ,A     FA     YA     pA     �A     �A     �A     �A     �A     �A  6   �A  7   *B  <   bB  $   �B     �B  +   �B  0   �B                 %                      N   D   F                 �           ;      7   }   :      �   �      n                      L       X   ~   l   \   �      �   #   Y       >   q   .   J   u      �   3   W       G   �   ]   �   
   �   !   Z   $       c   K          0   f   j   �   I   d       2   `         6   h          �   U   @   _          z      A   m   |              ,   =   �       (   B      +   r          b               �   /   �   g   M   V       1          o   H   w   �   �   )                 �       x   *           5       p       8       C   "   �          <   '   	               �   v       T           �   9      &   t   �   S   e   R   O       ?   k           �   y   -   {          �       ^      �   P      E      �   [   s   a   Q               �   �   i              4               -h --help            Show this help
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
 <i>No service currently selected.</i> A NULL terminated list of service types to browse for Access denied Address Address family An unexpected D-Bus error occurred Avahi Discovery Avahi SSH Server Browser Avahi VNC Server Browser Avahi Zeroconf Browser Avahi client failure: %s Avahi domain browser failure: %s Avahi resolver failure: %s Bad number of arguments
 Bad state Browse Service Types Browse for Zeroconf services available on your network Browse for Zeroconf-enabled SSH Servers Browse for Zeroconf-enabled VNC Servers Browse service type list is empty! Browsing for service type %s in domain %s failed: %s Browsing for services in domain <b>%s</b>: Browsing for services on <b>local network</b>: Browsing... Canceled.
 Change domain Choose SSH server Choose Shell Server Choose VNC server Client failure, exiting: %s
 Connecting to '%s' ...
 DNS failure: FORMERR DNS failure: NOTAUTH DNS failure: NOTIMP DNS failure: NOTZONE DNS failure: NXDOMAIN DNS failure: NXRRSET DNS failure: REFUSED DNS failure: SERVFAIL DNS failure: YXDOMAIN DNS failure: YXRRSET Daemon connection failed Daemon not running Desktop Disconnected, reconnecting ...
 Domain E Ifce Prot %-*s %-20s Domain
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
 Initializing... Invalid DNS TTL Invalid DNS class Invalid DNS return code Invalid DNS type Invalid Error Code Invalid RDATA Invalid address Invalid argument Invalid configuration Invalid domain name Invalid flags Invalid host name Invalid interface index Invalid number of arguments, expecting exactly one.
 Invalid operation Invalid packet Invalid port number Invalid protocol specification Invalid record Invalid record key Invalid service name Invalid service subtype Invalid service type Is empty Local name collision Location Memory exhausted Name Name collision, picking new name '%s'.
 No command specified.
 No suitable network protocol available Not found Not permitted Not supported OK OS Error Operation failed Port Resource record key is pattern Server version: %s; Host name: %s
 Service Name Service Type TXT Data Terminal The IP port number of the resolved service The TXT data of the resolved service The address family for host name resolution The address of the resolved service The domain to browse in, or NULL for the default domain The host name of the resolved service The object passed in was not valid The requested operation is invalid because redundant The service name of the selected service The service type of the selected service Timeout reached Too few arguments
 Too many arguments
 Too many clients Too many entries Too many objects Type Version mismatch Waiting for daemon ...
 _Domain... avahi_domain_browser_new() failed: %s
 avahi_service_browser_new() failed: %s
 avahi_service_type_browser_new() failed: %s
 execlp() failed: %s
 n/a service_browser failed: %s
 service_type_browser failed: %s
 Project-Id-Version: avahi master
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2011-04-02 03:23+0200
PO-Revision-Date: 2010-03-04 11:23+0100
Last-Translator: Fran Diéguez <frandieguez@ubuntu.com>
Language-Team: Galician <proxecto@trasno.net>
Language: gl
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
     -h --help            Mostra esta axuda
    -V --version         Mostra a versión
    -D --browse-domains  Navegar polos dominios de navegación no canto de polos servizos
    -a --all             Mostra todos os servizos, sen importar o tipo
    -d --domain=DOMINIO   O dominio polo que navegar
    -v --verbose         Activar o modo detallado
    -t --terminate       Rematar despois de envorcar unha lista máis ou menos completa
    -c --cache           Rematar despois de envorcar todas as entradas dende a caché
    -l --ignore-local    Ignorar servizos locais
    -r --resolve         Localizar os servizos encontrados
    -f --no-fail         Non producir erro se o daemon non está dispoñíbel
    -p --parsable        Producir unha saída en formato procesábel
     -k --no-db-lookup    Non buscar tipos de servizo
    -b --dump-db         Envorcar a base de datos de tipos de servizo
 %s [opcións]

    -h --help            Mostra esta axuda
    -s --ssh             Navegar polos servidores SSH
    -v --vnc             Navegar polos servidores VNC
    -S --shell           Navegar por ambos, SSH e VNC
    -d --domain=DOMINIO  O dominio polo que navegar
 %s [opcións] %s <nome de servidor...>
%s [opcións] %s <enderezo ... >

    -h --help            Mostrar esta axuda
    -V --version         Mostrar a versión
    -n --name            Localizar o nome de computador
    -a --address         Localizar o enderezo
    -v --verbose         Activar o modo detallado
    -6                   Buscar enderezos IPv6
    -4                   Buscar enderezos IPv4
 %s [opcións] %s <nome> <tipo> <porto> [<txt ...>]
%s [opcións] %s <nome-de-servidor> <enderezo>

    -h --help            Mostrar esta axuda
    -V --version         Mostrar a versión
    -s --service         Publicar un servizo
    -a --address         Publicar un enderezo
    -v --verbose         Activar o modo detallado
    -d --domain=DOMINIO   Dominio no que publicar o servizo
    -H --host=DOMINIO     Computador no que reside o servizo
       --subtype=SUBTIPO Un subtipo adicional co que rexistrar este servizo
    -f --no-fail         Non producir un erro se o daemon non está dispoñíbel
 %s [opcións] <novo nome de servidor>

    -h --help            Mostrar esta axuda
    -V --version         Mostrar a versión
    -v --verbose         Activar o modo detallado
 : Todo por agora
 : Cache esgotada
 <i>Non hai ningún servizo seleccionado actualmente.</i> Unha lista rematada en NULL de tipos de servizo polos que navegar Acceso denegado Enderezo Familia de enderezos Produciuse un erro inesperado de D-BUS Descubrimento de Avahi Navegador de servidores SSH de Avahi Navegador de servidores VNC de Avahi Navegador Zeroconf de Avahi Produciuse un erro no cliente Avahi: %s Produciuse un erro no navegador de dominios Avahi: %s Produciuse un erro no localizador Avahi: %s O número de argumento é erróneo
 Estado incorrecto Navegar polos tipos de servizo Navegar na busca de servizos Zeroconf dispoñíbeis na súa rede Navegar por servidores SSH con Zeroconf activado Navegar por servidores VNC con Zeroconf activado A lista de navegación por tipo de servizo está baleira! Produciuse un erro ao navegar polo tipo de servizo %s no dominio %s: %s Navegando polos servizos no dominio <b>%s</b>: Navegando polos servizos na <b>rede local</b>: Navegando... Cancelado.
 Cambiar o dominio Escolla o servidor SSH Seleccione o servidor de intérprete de ordes Escolla o servidor VNC Produciuse un erro no cliente, saíndo: %s
 Conectando a '%s' ...
 Produciuse un erro no DNS: FORMERR Produciuse un erro no DNS: NOTAUTH Produciuse un erro no DNS: NOTIMP Produciuse un erro no DNS: NOTZONE Produciuse un erro no DNS: NXDOMAIN Produciuse un erro no DNS: NXRRSET Produciuse un erro no DNS: REFUSED Produciuse un erro no DNS: SERVFAIL Produciuse un erro no DNS: YXDOMAIN Produciuse un erro no DNS: YXRRSET Produciuse un fallo na conexión co daemon O daemon non está executándose Escritorio Desconectado, reconectando...
 Dominio Dominio E Ifce Prot %-*s %-20s 
 Dominio E Ifce Prot
 Estabelecido baixo o nome '%s'
 Produciuse un erro ao engadir o enderezo: %s
 Produciuse un erro ao engadir o servizo: %s
 Produciuse un erro ao engadir o subtipo «%s»: %s
 Non foi posíbel conectar co servidor Avahi: %s Produciuse un erro ao crear o localizador de enderezos: %s
 Produciuse un erro ao crear un navegador para %s: %s Produciuse un erro ao crear o obxecto cliente: %s
 Produciuse un erro ao crear un navegador de dominios: %s Produciuse un erro ao crear o grupo de entradas: %s
 Produciuse un erro ao crear o proceso de localización de nomes de servidor: %s
 Produciuse un erro ao crear un localizador para %s do tipo %s no dominio %s: %s Produciuse un erro ao crear un obxecto simple de consulta.
 Produciuse un erro ao procesar o enderezo «%s»
 Produciuse un erro ao procesar o número de porto: %s
 Produciuse un erro ao consultar o nome do servidor: %s
 Produciuse un erro ao consultar a cadea de versión: %s
 Non foi posíbel ler o dominio de Avahi: %s Produciuse un erro ao rexistrar: %s
 Produciuse un erro ao localizar o enderezo «%s»: %s
 Produciuse un erro ao localizar o nome de servidor «%s»: %s
 Produciuse un erro ao resolver o servizo «%s» do tipo «%s» no dominio «%s»: %s
 Nome do servidor Conflito de nomes de servidor
 Cambiouse o nome de servidor correctamente a %s
 Inicializando... TTL do DNS incorrecto Clase de DNS incorrecta O código de retorno do DNS é incorrecto Tipo de DNS incorrecto Código do erro incorrecto RDATA incorrecto O enderezo é incorrecto Argumento incorrecto A configuración é incorrecta O nome do dominio é incorrecto Marcas incorrectas O nome do servidor é incorrecto O índice de interface é incorrecto O número de argumentos non é correcto, esperábase exactamente un.
 Operación incorrecta O paquete é incorrecto O número de porto é incorrecto A especificación do protocolo é incorrecta Rexistro incorrecto A chave do rexistro é incorrecta O nome do servizo é incorrecto O subtipo de servizo é incorrecto O tipo de servizo é incorrecto Está baleiro Hai un conflito de nomes locais Localización Memoria esgotada Nome Conflito de nomes, escollendo o novo nome '%s'.
 Non se especificou ningunha orde.
 Non hai dispoñíbel ningún protocolo de rede apropiado Non encontrado Non permitido Non admitido Aceptar Prodicuse un erro do SO Produciuse un fallo na operación Porto A chave do rexistro do recurso é un patrón Versión do servidor: %s; Nome do servidor: %s
 Nome do servizo Tipo de servizo Datos TXT Terminal O número de porto IP do servizo localizado Os datos TXT do servizo localizado A familia de enderezos para a localización de nomes de servidor O enderezo do servizo localizado O dominio polo que navegar, ou NULL para empregar o dominio predefinido O nome do servidor do servizo localizado O obxecto indicado non é correcto A operación solicitada non é correcta por ser redundante O nome de servizo do servizo seleccionado O tipo de servizo do servizo seleccionado Rematou o tempo de espera Poucos argumentos
 Demasiados argumentos
 Demasiados clientes Demasiadas entradas Demasiados obxectos Tipo Versións non coincidentes Esperando polo daemon ...
 _Dominio... Produciuse un erro con avahi_domain_browser_new(): %s
 Produciuse un erro con avahi_service_browser_new(): %s
 Produciuse un erro con avahi_service_type_browser_new(): %s
 Produciuse un erro con execlp(): %s
 n/d Produciuse un erro con service_browser: %s
 Produciuse un erro con service_type_browser: %s
 