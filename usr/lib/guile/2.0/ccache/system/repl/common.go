GOOF----LE-4-2.07      ] � 4    h|      ] g  guile�	 �	g  define-module*�	 �	 �	g  system�	g  repl�	g  common�		 �	
g  filenameS�	f  system/repl/common.scm�	g  importsS�	g  base�	g  syntax�	 �	 �	g  compile�	 �	 �	g  language�	 �	 �	g  message�	 �	 �	g  vm�	g  program�	 �	 �	g  ice-9�	g  control�	  �	!  �	"g  history�	#" �	$# �	%!$ �	&g  exportsS�	'g  <repl>�	(g  	make-repl�	)g  repl-language�	*g  repl-options�	+g  repl-tm-stats�	,g  repl-gc-stats�	-g  
repl-debug�	.g  repl-welcome�	/g  repl-prompt�	0g  	repl-read�	1g  repl-compile�	2g  repl-prepare-eval-thunk�	3g  	repl-eval�	4g  repl-expand�	5g  repl-optimize�	6g  
repl-parse�	7g  
repl-print�	8g  repl-option-ref�	9g  repl-option-set!�	:g  repl-default-option-set!�	;g  repl-default-prompt-set!�	<g  puts�	=g  ->string�	>g  
user-error�	?g  
*warranty*�	@g  	*copying*�	Ag  	*version*�	B'()*+,-./0123456789:;<=>?@A �	Cg  	autoloadsS�	Dg  tree-il�	Eg  optimize�	FDE �	Gg  	optimize!�	HG �	IFH �	Jg  set-current-module�	KJ �	LJ �	Mg  format�	Nf GNU Guile ~A
Copyright (C) 1995-2014 Free Software Foundation, Inc.

Guile comes with ABSOLUTELY NO WARRANTY; for details type `,show w'.
This program is free software, and you are welcome to redistribute it
under certain conditions; type `,show c' for details.�	Og  version�	Pf qGuile is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as
published by the Free Software Foundation, either version 3 of
the License, or (at your option) any later version.

Guile is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public
License along with this program. If not, see
<http://www.gnu.org/licenses/lgpl.html>.�	Qf 8Guile is distributed WITHOUT ANY WARRANTY. The following
sections from the GNU General Public License, version 3, should
make that clear.

  15. Disclaimer of Warranty.

  THERE IS NO WARRANTY FOR THE PROGRAM, TO THE EXTENT PERMITTED BY
APPLICABLE LAW.  EXCEPT WHEN OTHERWISE STATED IN WRITING THE COPYRIGHT
HOLDERS AND/OR OTHER PARTIES PROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY
OF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO,
THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
PURPOSE.  THE ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE PROGRAM
IS WITH YOU.  SHOULD THE PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF
ALL NECESSARY SERVICING, REPAIR OR CORRECTION.

  16. Limitation of Liability.

  IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MODIFIES AND/OR CONVEYS
THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES, INCLUDING ANY
GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE
USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED TO LOSS OF
DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY YOU OR THIRD
PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER PROGRAMS),
EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF
SUCH DAMAGES.

  17. Interpretation of Sections 15 and 16.

  If the disclaimer of warranty and limitation of liability provided
above cannot be given local legal effect according to their terms,
reviewing courts shall apply local law that most closely approximates
an absolute waiver of all civil liability in connection with the
Program, unless a warranty or assumption of liability accompanies a
copy of the Program in return for a fee.

See <http://www.gnu.org/licenses/lgpl.html>, for more details.�	Rg  make-record-type�	Sf  <repl>�	Tg  options�	Ug  tm-stats�	Vg  gc-stats�	Wg  debug�	XTUVW �	Yg  record-constructor�	Zg  %compute-initargs�	[g  record-predicate�	\g  repl?�	]g  make-procedure-with-setter�	^g  record-accessor�	_g  record-modifier�	`g  	copy-tree�	ag  compile-options�	bg  %auto-compilation-options�	c �	dg  trace�	ed �	fg  interp�	gf �	hg  prompt�	ig  string?�	jg  thunk?�	kg  
procedure?�	lg  error�	mf  Invalid prompt�	ng  print�	of  Invalid print procedure�	pg  value-history�	qg  value-history-enabled?�	rg  enable-value-history!�	sg  disable-value-history!�	tg  ->bool�	ug  on-error�	vg  	backtrace�	wg  report�	xg  pass�	yf  )Bad on-error value ~a; expected one of ~a�	zWvwx �	{g  repl-default-options�	|g  
%make-repl�	}g  languageS�	~g  	language?�	g  lookup-language� �g  optionsS� �g  tm-statsS� �g  times� �g  gc-statsS� �g  debugS� �g  display� �g  newline� �f  Enter `,help' for help.
� �f  	~A@~A~A> � �g  language-name� �g  module-name� �g  current-module� �g  length� �g  *repl-stack*� �f   � �f   [~a]� �g  language-reader� �g  current-input-port� �g  repl-compile-options� �g  fromS� �g  toS� �g  objcode� �g  optsS� �g  envS� �g  	decompile� �g  language-parser� �g  language-evaluator� �g  make-program� �g  language-compilers� �g  default-prompt-handler� � � � � � � �g  default-prompt-tag� � � � � � � �g  run-hook� �g  before-print-hook� �g  write� �g  assq� �f  unknown repl option� �g  object->string� �g  throw�C 5       h�  �  ]4	
%&BCI5	 4L >  "  G   4MiN4Oi5 5ARP@RQ?R4RiSX5'RTUVW 4Yi'i5 Z  h   .   -  1  3 L4 L 5@  &       g  args
			  			


   C O  (R4[i'i5\R4]i4^i'i54_i'i55)R4]i4^i'iT54_i'iT55*R4]i4^i'iU54_i'iU55+R4]i4^i'iV54_i'iV55,R4]i4^i'iW54_i'iW55-R4`iabic��eghi     h   \   ]L C   T       g  repl
		  g  filenamef  system/repl/common.scm�
	v	&�� 		   Cjh   d   ]L 6   \       g  repl
		  g  filenamef  system/repl/common.scm�
	w	%��		w	4�� 		   Cklm   hH   �   ] $  <4 5$   O C4 5$   O C4 5$   C 6C  �       g  prompt
		F  g  filenamef  system/repl/common.scm�
	s	��		t	��			v	��		t	��		w	��	&	t	��	/	x	��	9	t	��	@	y	!��	D	y	�� 		F   C nklo  h    �   ] $  4 5$   C 6C}       g  print
		   g  filenamef  system/repl/common.scm�
	z	��		{	��			}	��		{	��		~	 ��		~	�� 		    C p4qi5 rst     h8   ~   ] $  4>   "  G  "  4>   "  G   6      v       g  x
		2  g  filenamef  system/repl/common.scm�
 �	��	 �		��		 �	��	 �	'��	2 �		�� 		2   C uWWvwxlyz h@   �   ] &  "   &  "   &  "   �$   C 6        g  x
		?  g  filenamef  system/repl/common.scm�
 �		��	
 �	��	2 �	��	9 �	��	= �	��	? �	�� 		?   C  5{R(i|R|}~�`{���V�   hP   �   - . , 3 #  4 5$   "  4 5454	5 
45 6
  �       g  lang
		N g  debug		N  g  filenamef  system/repl/common.scm�
 �
��	 �	��	$ �	��	+ �	��	4 �	��	= �	��	D �	��	N �	�� 			N  g  nameg  	make-repl� C(R�A��     h@   �   ]4>  "  G  4>   "  G  4>   "  G  6      �       g  repl
		:  g  filenamef  system/repl/common.scm�
 �
��	 �	��	 �	��	% �	��	8 �	��	: �	�� 		:  g  nameg  repl-welcome� C.R8hM��)������       hp   |  ]4 5$   644 55445 54	
[$  �"  5
�$  "  
456  t      g  repl
		n g  t		n g  t		:	M g  level		O	l  g  filenamef  system/repl/common.scm�
 �
��	 �	��		 �	��	 �	��	 �	��	 �	��	 �	��	 �	��	" �	*��	* �	��	+ �	��	. �	��	4 �	��	5 �	��	: �	!��	J �	(��	O �	��	O �	��	T �	��	Y �	��	[ �	 ��	` �	#��	e �	.��	i �	#��	n �	�� 		n  g  nameg  repl-prompt� C/R�)��     h    �   ]	44 5545 45 6  �       g  repl
		 g  reader		  g  filenamef  system/repl/common.scm�
 �
��	 �	��	 �	!��	 �	��	 �	��	 �	��	 �	!��	 �	�� 			  g  nameg  	repl-read� C0R8a h   �   ] 6      �       g  repl
		
  g  filenamef  system/repl/common.scm�
 �
��	 �	��	
 �	�� 		
  g  nameg  repl-compile-options� C�R)������� 
       h0   �   ]4 54 54	5 6	   �       g  repl
		- g  form		- g  from			- g  opts			-  g  filenamef  system/repl/common.scm�
 �
��	 �	��	
 �	��	 �	��	  �	#��	' �	��	- �	�� 		-	  g  nameg  repl-compile� C1R)����D���    h@   �   ]4 54 54	4
5 5	6      �       g  repl
		: g  form		: g  from			: g  opts			:  g  filenamef  system/repl/common.scm�
 �
��	 �	��	
 �	��	 �	��	 �	��	# �	.��	* �	��	0 �	��	4 �	��	: �	�� 		:	  g  nameg  repl-expand� C4R)��G��D���        hH     ]4 54 544	
45 5	45 56        g  repl
		F g  form		F g  from			F g  opts			F  g  filenamef  system/repl/common.scm�
 �
��	 �	��	
 �	��	 �	��	 �	��	 �	��	& �	9��	- �	)��	3 �	��	4 �	��	< �	��	@ �	��	F �	�� 		F	  g  nameg  repl-optimize� C5R�)     h    �   ]
44 55$  6C �       g  repl
		 g  form		 g  parser			  g  filenamef  system/repl/common.scm�
 �
��	 �	��	 �	!��	 �	��	 �	��	 �	��	 �	�� 			  g  nameg  
repl-parse� C6R�)�1�8f� h   \   ] LL 45 6   T       g  filenamef  system/repl/common.scm�
 �	��	 �	��	 �	�� 		
   C 	hh   C  ]44 55"  4 56$  844 55�$  "  	4 5$  
O C"���"���     ;      g  repl
		c g  form		c g  eval			c g  t		4	M  g  filenamef  system/repl/common.scm�
 �
��	 �	��	 �	#��	 �	��	 �	��	 �	��	! �	��	! �	��	( �	��	+ �	,��	3 �	��	4 �	��	4 �	��	B �	��	H �	'��	J �	��	Q �	�� 		c	  g  nameg  repl-prepare-eval-thunk� C2R2�� h   K   ] L 6   C       g  filenamef  system/repl/common.scm�	 �	�� 		
   C  h8   �   ]4 545 U   4O >   XCXFG@ �       g  repl
		7 g  form		7 g  thunk			7 g  handler			7 g  args		,	7  g  filenamef  system/repl/common.scm�
 �
��	 �	��	 �	��	 �	�� 		7	  g  nameg  	repl-eval� C3R��8n��    hP   �   ]
&  C4>  "  G  4 5$   64>  "  G  6   �       g  repl
		N g  val		N g  t		(	N  g  filenamef  system/repl/common.scm�
 �
��		 �	��	 �	��	  �	
��	& �	 ��	( �	
��	( �	��	8 �	��	9 �	
��	N �	
�� 		N	  g  nameg  
repl-print� C7R�*l�     h0   �   ]
44 55$  "  	45��C   �       g  repl
		- g  key		- g  t			*  g  filenamef  system/repl/common.scm�
 �
��	 �	��	 �	��	 �	��	 �	��	 �	��	# �	��	' �	��	+ �	�� 
		-	  g  nameg  repl-option-ref� C8R�*l�k       hP   U  ]44 55$  "  	45�4���5$  4���5"  �CM      g  repl
		P g  key		P g  val			P g  t			* g  spec		*	P  g  filenamef  system/repl/common.scm�
 �
��	 �	��	 �	��	 �	��	 �	��	 �	��	# �	��	' �	��	* �	��	/ �	��	0 �	��	5 �	��	9 �	��	= �	��	> �	��	A �	��	G �	��	N �	�� 		P	  g  nameg  repl-option-set!� C9R�{l�k  hP   9  ]
4 5$  "  	4 5�4���5$  4���5"  �C     1      g  key
		K g  val		K g  t			% g  spec		%	K  g  filenamef  system/repl/common.scm�
 �
��	 �	��	 �	��	 �	��	 �	��	" �	��	% �	��	* �	��	+ �	��	0 �	��	4 �	��	8 �	��	9 �	��	< �	��	B �	��	I �	�� 		K	  g  nameg  repl-default-option-set!� C:R:h    h   �   ] 6      �       g  prompt
		
  g  filenamef  system/repl/common.scm�
 �
��	 �	��	
 �	�� 		
  g  nameg  repl-default-prompt-set!� C;R��        h   |   ]4 >  "  G  6 t       g  x
		  g  filenamef  system/repl/common.scm�
 
��	 	��	 	�� 		  g  nameg  puts� C<R�� h   w   ] 6      o       g  x
		
  g  filenamef  system/repl/common.scm�

��	
	�� 		
  g  nameg  ->string� C=R�>      h   �   - 1 3  6   �       g  msg
			 g  args			  g  filenamef  system/repl/common.scm�

��			��		�� 			
  g  nameg  
user-error� C>RC    �      g  m
		0 g  slots
	t � g  constructor	t �  g  filenamef  system/repl/common.scm�		
��	1	)	��	8	)	��	9	.	7��	A	)	��	D	(
��	F	1
��	I	0
��	K	@
��	N	?
��	\	k
���	o	���	p	��k �	��A	p	��/	o	��2	n
��9 �
��w �
��u �
��
� �
��� �
��B �
��| �
��� �
��k �
��r �
��� �
��< �
��� �
��� �
��� �
��$ �
��� �
��� 
��*
���
�� &	�
   C6 