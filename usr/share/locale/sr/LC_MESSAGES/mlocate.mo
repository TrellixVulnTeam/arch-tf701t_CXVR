��    .      �  =   �      �     �       1     �   M     �          $     >  *   ^  �  �  +   r	     �	  #   �	  0   �	      
      0
  )   Q
  '   {
     �
     �
  %   �
     �
       &     .   D     s     �     �  )   �  !   �  $        )     A  '   \     �  "   �  .   �     �  $     "   +     N  "   d  !   �     �     �  �  �  *   �  )   �  Z        {     �  /   �  4   �  2     O   P  �  �  G   #  4   k  M   �  Z   �  H   I  J   �  T   �  L   2  8     7   �  R   �  ,   C  *   p  U   �  k   �  J   ]  ,   �  )   �  R   �  F   R  U   �  ?   �  8   /   U   h   )   �   :   �   W   #!  ^   {!  V   �!  E   1"  0   w"  U   �"  >   �"  3   =#  >   q#              !   -   %   
       &                                 '          ,         *              "                         .   )   +                        #   	                            (             $       
Report bugs to %s.
 --%s specified twice --%s would override earlier command-line argument Copyright (C) 2007 Red Hat, Inc. All rights reserved.
This software is distributed under the GPL v.2.

This program is provided with NO WARRANTY, to the extent permitted by law. Database %s:
 I/O error reading `%s' I/O error seeking in `%s' I/O error while writing to `%s' I/O error while writing to standard output Usage: updatedb [OPTION]...
Update a mlocate database.

  -f, --add-prunefs FS           omit also FS
  -n, --add-prunenames NAMES     omit also NAMES
  -e, --add-prunepaths PATHS     omit also PATHS
  -U, --database-root PATH       the subtree to store in database (default "/")
  -h, --help                     print this help
  -o, --output FILE              database to update (default
                                 `%s')
      --prune-bind-mounts FLAG   omit bind mounts (default "no")
      --prunefs FS               filesystems to omit from database
      --prunenames NAMES         directory names to omit from database
      --prunepaths PATHS         paths to omit from database
  -l, --require-visibility FLAG  check visibility before reporting files
                                 (default "yes")
  -v, --verbose                  print paths of files as they are found
  -V, --version                  print version information

The configuration defaults to values read from
`%s'.
 `%s' does not seem to be a mlocate database `%s' has unknown version %u `%s' has unknown visibility flag %u `%s' is locked (probably by an earlier updatedb) `=' expected after variable name can not change directory to `%s' can not change group of file `%s' to `%s' can not change permissions of file `%s' can not drop privileges can not find group `%s' can not get current working directory can not lock `%s' can not open `%s' can not open a temporary file for `%s' can not read two databases from standard input can not stat () `%s' configuration is too large error replacing `%s' file name length %zu in `%s' is too large file name length %zu is too large invalid empty directory name in `%s' invalid regexp `%s': %s invalid value `%s' of --%s invalid value `%s' of PRUNE_BIND_MOUNTS missing closing `"' no pattern to search for specified non-option arguments are not allowed with --%s unexpected EOF reading `%s' unexpected data after variable value unexpected operand on command line unknown variable `%s' value in quotes expected after `=' variable `%s' was already defined variable name expected warning: Line number overflow Project-Id-Version: mlocate
Report-Msgid-Bugs-To: https://fedorahosted.org/mlocate/
POT-Creation-Date: 2012-09-22 04:14+0200
PO-Revision-Date: 2012-02-14 08:16+0000
Last-Translator: Miloslav Trmač <mitr@volny.cz>
Language-Team: Serbian <trans-sr@lists.fedoraproject.org>
Language: sr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2);
 
Пријавите грешке на %s.
 --%s дефинисано два пута --%s би премостило ранији аргумент командне линије Ауторска права 2007 Red Hat, Inc.  Сва права задржана.
Овај софтвер се дистрибуира под ГЈЛ верзије 2.

Овај програм долази БЕЗ ГАРАНЦИЈЕ, у оквиру дозвољеним законом. База података %s:
 У/И грешка при читању „%s“ У/И грешка при тражењу у „%s“ У/И грешка при писању у „%s“ У/И грешка при читању са стандардног излаза Употреба: updatedb [ОПЦИЈЕ]...
Ажурира mlocate базу података.

  -f, --add-prunefs СД             изостави систем датотека
  -n, --add-prunenames НАЗИВИ      изостави НАЗИВЕ
  -e, --add-prunepaths ПУТАЊЕ      изостави ПУТАЊЕ
  -U, --database-root ПУТАЊА       подстабло за чување базе података
                                   (подразумевано „/“)
  -h, --help                       одштампај ову помоћ
  -o, --output ДАТОТЕКА            база података за ажурирање (подразумевано
                                   „%s“)
      --prune-bind-mounts ОЗНАКА   изостави везнике монтирања (подразумевано
                                   „не“)
      --prunefs СД                 системи датотека који се изостављају из
                                   базе података
      --prunenames НАЗИВИ          називи директоријума који се изостављају из
                                   базе података
      --prunepaths ПУТАЊЕ          путање које се изостављају из базе података
  -l, --require-visibility ОЗНАКА  провери видљивост пре извештавању о
                                   датотекама
                                   (подразумевано „да“)
  -v, --verbose                    штампа путање датотека како се проналазе
  -V, --version                    штампа информације о верзији

Подразумеване вредности подешавања прочитане из
„%s“.
 „%s“ изгледа да није mlocate база података „%s“ има непознату верзију %u „%s“ има непознати индикатор видљивости %u „%s“ је закључана (вероватно ранијом updatedb радњом) „=“ се очекује после назива променљиве не могу да променим директоријум на „%s“ не могу да променим групу датотеке „%s“ у „%s“ не могу да променим дозволе датотеке „%s“ не могу да уклоним привилегије не могу да пронађем групу „%s“ не могу да добијем текући радни директоријум не могу да закључам „%s“ не могу да отворим „%s“ не могу да отворим привремену датотеку за „%s“ не могу да прочитам две базе података са стандардног улаза не могу да извршим функцију stat () над „%s“ подешавање је превелико грешка при замени „%s“ дужина %zu назива датотеке у „%s“ је превелика дужина %zu назива датотеке је превелика неисправан назив празног директоријума у „%s“ неисправан регуларни израз „%s“: %s неисправна вредност „%s“ за --%s неисправна вредност „%s“ PRUNE_BIND_MOUNTS променљиве недостаје завршно „"“ шаблон за претрагу није наведен аргументи који нису опције нису дозвољени са --%s неочекивани завршетак датотеке (EOF ) при читању „%s“ неочекиван податак после вредности променљиве неочекивани оператор командне линије непозната променљива „%s“ вредност у наводницима је очекивана после „=“ променљива „%s“ је већ дефинисана очекује се назив променљиве упозорење: прекорачен број линија 