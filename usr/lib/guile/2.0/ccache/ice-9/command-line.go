GOOF----LE-4-2.0E      ] Ù 4     hL      ] g  guile¤	 ¤	g  define-module*¤	 ¤	 ¤	g  ice-9¤	g  command-line¤	 ¤		g  filenameS¤	
f  ice-9/command-line.scm¤	g  exportsS¤	g  compile-shell-switches¤	g  version-etc¤	g  *GPLv3+*¤	g  	*LGPLv3+*¤	g  emit-bug-reporting-address¤	 ¤	g  	autoloadsS¤	g  system¤	g  vm¤	 ¤	g  set-default-vm-engine!¤	g  set-vm-engine!¤	g  the-vm¤	 ¤	 ¤	g  set-current-module¤	 ¤	 ¤	g  gettext¤	g  _¤	 f  ÇLicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.¤	!f  ÂLicense LGPLv3+: GNU LGPL 3 or later <http://gnu.org/licenses/lgpl.html>.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.¤	"g  portS¤	#"	¤	$g  copyright-yearS¤	%$	¤	&g  copyright-holderS¤	'&	¤	(g  	copyrightS¤	)(	¤	*g  licenseS¤	+*	¤	,g  command-nameS¤	-,	¤	.g  packagerS¤	/.	¤	0g  packager-versionS¤	10		¤	2#%')+-/1 ¤	3g  current-output-port¤	4f  Free Software Foundation, Inc.¤	5g  format¤	6f  Copyright (C) ~a ~a¤	7f  ~a (~a) ~a
¤	8f  ~a ~a
¤	9f  Packaged by ~a (~a)
¤	:f  Packaged by ~a
¤	;g  display¤	<g  newline¤	=g  urlS¤	>=	¤	?.	¤	@g  packager-bug-addressS¤	A@	¤	B#>?A ¤	Cg  string-append¤	Df  http://www.gnu.org/software/¤	Ef  /¤	Ff  
Report bugs to: ~a
¤	Gf  Report ~a bugs to: ~a
¤	Hf  ~a home page: <~a>
¤	If  ?General help using GNU software: <http://www.gnu.org/gethelp/>
¤	Jf èEvaluate code with Guile, interactively or from a script.

  [-s] FILE      load source code from FILE, and exit
  -c EXPR        evalute expression EXPR, and exit
  --             stop scanning arguments; run interactively

The above switches stop argument processing, and pass all
remaining arguments as the value of (command-line).
If FILE begins with `-' the -s switch is mandatory.

  -L DIRECTORY   add DIRECTORY to the front of the module load path
  -C DIRECTORY   like -L, but for compiled files
  -x EXTENSION   add EXTENSION to the front of the load extensions
  -l FILE        load source code from FILE
  -e FUNCTION    after reading script, apply FUNCTION to
                 command line arguments
  --language=LANG  change language; default: scheme
  -ds            do -s script at this point
  --debug        start with the "debugging" VM engine
  --no-debug     start with the normal VM engine (backtraces but
                 no breakpoints); default is --debug for interactive
                 use, but not for `-s' and `-c'.
  --auto-compile compile source files automatically
  --fresh-auto-compile  invalidate auto-compilation cache
  --no-auto-compile  disable automatic source file compilation;
                 default is to enable auto-compilation of source
                 files.
  --listen[=P]   listen on a local port or a path for REPL clients;
                 if P is not given, the default is local port 37146
  -q             inhibit loading of user init file
  --use-srfi=LS  load SRFI modules for the SRFIs in LS,
                 which is a list of numbers like "2,13,14"
  -h, --help     display this help and exit
  -v, --version  display version information and exit
  \              read arguments from following script lines¤	Kg  *usage*¤	Lg  current-error-port¤	Mg  apply¤	Nf   Usage: ~a [OPTION]... [FILE]...
¤	Of  	GNU Guile¤	Pf  bug-guile@gnu.org¤	Qf  "http://www.gnu.org/software/guile/¤	Rg  assq-ref¤	Sg  %guile-build-info¤	Tg  packager¤	Ug  packager-bug-address¤	Vg  exit¤	Wg  shell-usage¤	Xg  current-language¤	Yg  scheme¤	Zg  call-with-input-string¤	[g  read¤	\g  eof-object?¤	]g  eval¤	^g  current-module¤	_g  
module-ref¤	`g  resolve-module¤	ag  eval-string¤	ba ¤	cg  eval-string/lang¤	dg  load-in-vicinity¤	eg  getcwd¤	fg  base¤	gg  compile¤	hfg ¤	ig  compile-file¤	jg  toS¤	kg  value¤	lg  	load/lang¤	mf  guile¤	ng  string-prefix?¤	of  -¤	pg  string=?¤	qf  -s¤	rf  missing argument to `-s' switch¤	sg  @@¤	tsl ¤	uf  -c¤	vf  missing argument to `-c' switch¤	wsc ¤	xf  --¤	yf  -l¤	zf  missing argument to `-l' switch¤	{f  -L¤	|f  missing argument to `-L' switch¤	}f  -C¤	~f  missing argument to `-C' switch¤	f  -x¤ f  missing argument to `-x' switch¤ f  -e¤ f  missing argument to `-e' switch¤ g  open-input-string¤ g  memq¤ g  @¤ s ¤ g  and-map¤ g  symbol?¤ g  main¤  ¤ f  --language=¤ g  quote¤ g  string->symbol¤ g  	substring¤ f  
--language¤ f  'missing argument to `--language' option¤ f  -ds¤ f  )the -ds switch may only be specified once¤ f  --debug¤ f  
--no-debug¤ f  --auto-compile¤ g  %load-should-auto-compile¤ f  --fresh-auto-compile¤ g  %fresh-auto-compile¤ f  --no-auto-compile¤ f  -q¤ f  --use-srfi=¤ g  map¤ g  string->number¤ f  invalid SRFI specification¤ g  exact?¤  g  integer?¤ ¡g  string-split¤ ¢g  	use-srfis¤ £f  --listen¤ ¤g  repl¤ ¥g  server¤ ¦¤¥ ¤ §g  spawn-server¤ ¨s¦§ ¤ ©¨ ¤ ªf  	--listen=¤ «f  invalid port for --listen¤ ¬g  make-tcp-server-socket¤ ­s¦¬ ¤ ®g  make-unix-domain-server-socket¤ ¯s¦® ¤ °g  pathS¤ ±f  unknown argument to --listen¤ ²f  -h¤ ³f  --help¤ ´f  -v¤ µf  	--version¤ ¶g  version¤ ·g  packager-version¤ ¸f  Unrecognized switch ~a¤ ¹f  1the `-ds' switch requires the use of `-s' as well¤ ºg  set-program-arguments¤ »g  debug¤ ¼g  control¤ ½¼ ¤ ¾g  %¤ ¿½¾ ¤ Àg  begin¤ Ág  append¤ ÂÁ ¤ ÃÁ ¤ Äg  load-user-init¤ ÅÄ ¤ ÆÅ ¤ Çg  set!¤ Èg  %load-extensions¤ Ég  cons¤ ÊÈ ¤ Ëg  
%load-path¤ ÌË ¤ Íg  %load-compiled-path¤ ÎÍ ¤ Ïg  reverse!¤ Ð ¤ ÑÐ ¤ Òg  top-repl¤ ÓÒ ¤ ÔÓÒ ¤ ÕÔ ¤ Ög  quit¤ ×Ö ¤ Øg  string-rindex¤C 5       hP+  ö   ]4	
5 4 >  "  G   iR4i 5R4i!5R23456789:;<       hH  õ  - /   
0  
 3 
#  45 #  Þ#  #  45#  #  #  	#  	$  4 >  "  G  "  4 >  "  G  $  F	$  !44	
5	>  "  G  "  44	5>  "  G  "   4>  "  G  4>  "  G  4>  "  G  4>  "  G  6í      g  package
	H g  version	H g  port		H g  copyright-year		H g  copyright-holder		H g  	copyright		H g  license		H g  command-name		H g  packager		H g  packager-version			H  
g  filenamef  ice-9/command-line.scm
	A
		B		3	E	(	<	F	!	A	F	,	G	F	!	t	K		u	L		{	L	 	L	 	M	 	M	 ¢	M	 °	O	 ¶	P	 ·	Q	
 ¼	Q	 À	Q	 Â	Q	 Ë	Q	
 Ø	R	
 Ý	R	 á	R	 ã	R	 ê	R	
 ÷	T		U		V	/	W	H	X	 	H	
g  portS	g  copyright-yearS	g  copyright-holderS	g  	copyrightS	g  licenseS	g  command-nameS	g  packagerS	g  packager-versionS		 	  g  nameg  version-etc CRB3CDE5FGHI      hÀ   #  - /   0   3 #  45 #  4 5#  #  445>  "  G  $  +$  !44	5>  "  G  "   "   44
5 >  "  G  456           g  package
	 » g  bug-address	 » g  port		 » g  url		 » g  packager		 » g  packager-bug-address		 »  g  filenamef  ice-9/command-line.scm
	]
		^	+	'	_	*	+	`	+	/	b	+	1	_	*	F	d		K	d		O	d		Q	d		X	d		f	e		l	e		m	f		r	f		v	f		x	f	 	f	 	g	 	g	 	g	 	g	 ¦	g	 ³	i	
 ·	i	 ¹	i	
 »	h	 	 »	
g  portS	g  urlS	g  packagerS	g  packager-bug-addressS	   g  nameg  emit-bug-reporting-address CR4iJ5KRL3M5N;K<OP"=Q.RST@UV      hÐ   ½  - . 1 3 #  $  	45 "  45 $  4>  "  G  "   445 >  "  G  4>  "  G  4	>  "  G  4
4545>
  "  G  $  6C   µ      g  name
	 Í g  fatal?	 Í g  fmt		 Í g  args		 Í g  port		) Í  g  filenamef  ice-9/command-line.scm
 
	 		 		% 		) 		1 		2 		N 		S 		W 		Y 		` 		i 		} 	  	  	  	  	    	 ¦  	, ¨  	 « ¢	 ± ¢	! ³ ¢	 ¸ 	 Æ ¤	 Ë ¥	 	 Í		  g  nameg  shell-usage CWRXYZ[\]^     h@   Ç   ]	"  14 545$  C445 >  "  G  "ÿÿÏ"ÿÿË     ¿       g  port
		; g  exp		7  g  filenamef  ice-9/command-line.scm
 ®		 ¯		 °		 °	
	 ±		 ±		 ³		" ³		+ ³		7 ´		7 ¯	 		;   C_`ba 	     h0   â   ]	45 $   64455 6    Ú       g  str
		, g  key		,  g  filenamef  ice-9/command-line.scm
 ©
	 ª		 ª		 ¬		 ¶		 ¶		" ¶	"	$ ¶		& ¶	8	( ¶		, ¶	 		,  g  nameg  eval-string/lang CcRXYde_`hijk   h8   ë   ]	45 $  45  64455 	
6     ã       g  f
		3 g  key		3  g  filenamef  ice-9/command-line.scm
 ¸
	 ¹		 ¹		 »		 »		 ½		! ½		% ½	"	' ½		) ½	:	+ ½		1 ¾		3 ½	 		3  g  nameg  	load/lang ClRmnopqWrtuvwxyz{|}~[\XW        hP   Ë   ]	4 5"  	M 6$  -45$  45$  
$  C"ÿÿÌ"ÿÿÈ"ÿÿÄ"ÿÿÀ Ã       g  x
		O g  n			O  g  filenamef  ice-9/command-line.scm
g		h	)		h	 	k	-	 Í		i	"	i	-	)i	&	*i	8	4i	&	8i	E	<i	& 		O   C¡¢£©ª« ¨­"E¯°±²³V´µO¶*,.RST0·¸¹º»¿ÀÃÆÇÈÉÊ       h   e   ]  C      ]       g  ext
		  g  filenamef  ice-9/command-line.scm
¶		·	 		   CÇËÉÌ       h   f   ]  C      ^       g  path
		  g  filenamef  ice-9/command-line.scm
¼		½	 		   CÇÍÉÎ      h   f   ]  C      ^       g  path
		  g  filenamef  ice-9/command-line.scm
¿		À	 		   CÏÑÕ×Ø i    hÐ  c  - . , 3 H#  KHH
H	HHHHHHH" *(  " 45$ Ï45$  T(  4J>  "  G  "   KKJ$  JJ" ¹J " ¤4	5$  8(  4J
>  "  G  "   K " _45$  " F45$  5(  4J>  "  G  "    "ÿþÖ45$  4(  4J>  "  G  "   JK"ÿþ45$  4(  4J>  "  G  "   JK"ÿþT45$  4(  4J>  "  G  "   JK"ÿþ45$  ¦(  4J>  "  G  "   45454545$  ?$  245$  "  	45$  "  "  "  	 K"ÿý`4 5$  %!"4#4$	55  "ÿý.4%5$  ?(  4J&>  "  G  "   !"4#5  "ÿüâ4'5$  7J$  4J(>  "  G  "    KJ"ÿü4)5$  K
K"ÿü4*5$  KK
"ÿü`4+5$   ,"ÿüD4-5$   , ."ÿü%4/5$   ,"ÿü	405$  K	"ÿûí415$  V423O 444$	5,55(  4J5>  "  G  "   6"  "ÿû475$  8"ÿûn495$  °4$		54:5$  Z"  4J;5"  D4<5$  54=5$  "
$  >?@  "  "ÿÿ¾"  "ÿÿ¶"  "ÿÿ®"  )4A5$  >BC  "  
4JD5"ÿú±4E5$  "  	4F5$  4J>  "  G  G
64H5$  "  	4I5$  :4JK4L5 MNOP4QRS5T4QRU5>
  "  G  G
6JV6KKJ$  JJ"  J "  " J$  $J$  "  4JW>  "  G  "   4XJ>  "  G  J
$  "  J$  J"  $  -4YZ>  "  G  4[4\5 Z>  "  G  "   ]^4_J$  J	$  "  `"  4_42aJ54_42bJ54_42cJ54_4d54_J$  Je "  J$  f"  g 555555 C $  7 K4hJ/5$  4$J5"  JK "ÿø "ÿøt      [      g  args
	Ê g  
usage-name	Ê g  arg0		&Ê g  script-cell		&Ê g  entry-point		&Ê g  user-load-path		&Ê g  user-load-compiled-path		&Ê g  user-extensions		&Ê g  interactive?		&Ê g  inhibit-user-init?			&Ê g  turn-on-debugging?	
	&Ê g  turn-off-debugging?		&Ê g  args		>h g  out		>h g  arg		Vh g  args		Vh g  port	_Ñ g  arg1	hÎ g  arg2	qË g  srfis	z´ g  where	è g  t	ñ g  t	¯ g  t	Ôí g  args	l g  out	l g  t	­Ë g  slash	³  g  filenamef  ice-9/command-line.scm
 À
	 À	=	 Á		  Ä		! Å	!	" Æ		& Á		> Ï		D Ð		P Ò		S Ô		V Õ		V Ô		[ ×		_ ×	!	c ×		g Ö	
	h å		n å		p å		t Ö	
	z æ		{ Í	  ç	  Í	  è	  è	  é	 ¡ ê	 ¦ ì	 © í	 ³ í	 ¶ î	 ¸ ï	 À ï	 È î	 É ò	 Ï ò	 Ñ ò	 Õ Ö	
 Û ó	 Ü Í	 ã ô	 è Í	 ÷ õ	 ú ö	 ü ÷	 ÿ ø	 ÷	 ÷	 ö	 û	 û	 û	 Ö	
& ü	' þ	- þ	/ þ	3 Ö	
9 ÿ	: Í	A 	F Í	U	W	Z	@]	`	h	i	o	q	u Ö	
{	| Í		 Í		'	!			©		ª	°	²	¶ Ö	
¼	½ Í	Ä	É Í	Ø	Û	Ý	à	ê	ë	ñ	ó	÷ Ö	
ý	þ Í		
 Í		(	"	!	+	,	2	4	8 Ö	
>	? Í	F	K Í	X	]	,_	_	b	h	k 	q	t%	~$	'	$	(	 (	&(	 '	)	¥'	§*	¿&	È#	Ô-	Þ-	ß0	ã0	ç0	ë Ö	
ï2	ò3	õ4	û4	-ý4	ÿ3	2	2	1	7	7	7	 Ö	
#8	$ Í	+9	0 Í	?:	A;	D;	.I;	>K;	.N;	T;	\:	]>	c>	e>	i Ö	
oA	p Í	wB	| Í	C	C	E	E	 D	¡I	§I	©I	­ Ö	
°J	³K	¿L	ÀN	ÆN	ÈN	Ì Ö	
ÏO	ÒP	ÞQ	ßU	åU	çU	ë Ö	
îV	úW	ûY	Y	Y	 Ö	

Z	[	\	^	 ^	"^	& Ö	
)_	5`	6b	<b	>b	B Ö	
Ec	Qd	Rf	Vf	Zf	^ Ö	
_g	il	ll	,xl	zg	zg	m	 Í	n	 Í	p	¬p	´o	µr	»r	½r	Á Ö	
Åt	Èt	Ðs	Ñv	Õv	Ùv	Ý Ö	
àz	èz	ë|	ñ{	þ Í		" Í	~	~	 ~	~	0!~	%~	>)~	+	T	X	"\	`{	b	s Í	z	| Í	y	w					¤	$ª	2¬	$³ Ö	
´	Ë	Ì	Ò	Ô	Ô	â	$è	2ê	$ñ Ö	
ò	ö	÷	%	(	$	@	$		5		+	2	6 Í	: Û	= Ü	C Ý	H ß	T à	X â	` â	h á	l	r	u	"y	~ Í		 Í	 	 	£ 	­¤	
À¥	Ã¥	 Ï¤	Ð§	Ô§	$Ù§	â¨	å¨	ë¨	%ð¨	þ«		±	±	³	²	³	«	¶	(«	+¼	4«	7¿	@«	CÅ	J«	RÈ	VÉ	_Ê	eË	gÎ	mÑ	p«	Ó	
Ó	Õ	Õ	Ö	Ö	Ø	Ø	¦Ø	.¨Ø	°×	¶Ù	·Ù	¿Ù	ÂÚ	ÊÚ	
v	Ê  g  nameg  compile-shell-switches CRCî       g  m
		,  g  filenamef  ice-9/command-line.scm		!
	3	*
	4	-		:	-		<	-		?	,
	@	2		F	2		H	2		K	1
¸	A
Æ	]
Ç	l	Í	l	Ï	l	Ò	k

  
õ ©
> ¸
+N À
 	+P
   C6 