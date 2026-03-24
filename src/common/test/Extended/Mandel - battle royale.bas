new
1 REM = Adapted from https://github.com/lindoran/enhanced-micro-basic/blob/main/documents/examples/MANDEL.BAS =
2 REM Mandelbrot - Q8 fixed point, Enhanced Micro-Basic 2.2
3 REM Q8: 1.0=256  2.0=512  -2.5=-640
4 REM Escape: |z|^2 > 4  =>  P+Q > 1024
5 REM == CPU f (MHz)	Double-cache time (s)	==
6 REM == 6.25		115.892			==
7 REM == 12.5		58.720			==
8 REM == 25.0		30.135			==
9 REM == 100.0		8.696			==
10 REM ===================================================================
11 REM Background story: https://www.youtube.com/watch?v=kBjPeWMVYgU
12 REM IL instruction count: 20683576; Basic statement count: 271972
13 REM ===================================================================
20 let W=32, H=22, M=15
30 let A=-640, B=256, E=-256, F=256
40 let U=(B-A)/W, V=(F-E)/H
60 FOR K=0 TO H
70   let D=F-(K*V)
80   FOR J=0 TO W
90     	let C=A+(J*U)
100    	let X=0, Y=0, I=0
110    	let G=X, N=X:GOSUB 1000
111    	let P=R
120    	let G=Y, N=Y:GOSUB 1000
121    	let Q=R
130    	IF I>=M THEN 210            :REM WHILE... DO loop  A
140    	IF (P+Q)>1024 THEN 210      :REM WHILE... DO loop  B
150    	let T=P-Q+C
160    	let G=X, N=Y:GOSUB 1000
170    	let Y=R+R+D, X=T, I=I+1 : GOTO 110
210    	let O=USR(3, I, 7): REM O=I&7 END BOTH WHILE... Loops
215    	REM *** This is similar to a switch() case
220	goto O*10+300
300    	PRINT "^[[30m ";
301	GOTO 390
310    	PRINT "^[[31m.";
311	GOTO 390
320    	PRINT "^[[32m:";
321	GOTO 390
330    	PRINT "^[[33m-";
331	GOTO 390
340    	PRINT "^[[34m+";
341	GOTO 390
350    	PRINT "^[[35m*";
351	GOTO 390
360    	PRINT "^[[36m#";
361    	GOTO 390
370    	PRINT "^[[37m@";
390  NEXT J                          : REM SWITCH CASE EXITS HERE, GO TO NEXT J IN FOR LOOP
400  PRINT ""
410 NEXT K
420 PRINT "^G^[[0mDone. ";W;"x";H;" M=";M
430 END
435 REM *** Fixed Point Math routines for 8.8 Fixed point
440 REM =====================================================
450 REM fp_mul: R = (G*N)>>8  signed Q8 multiply
460 REM In:  G=a, N=b    Out: R = (a*b)>>8
470 REM Uses: S (sign), L (|G|), Z (|N|), R (temp al*bl)
480 REM Does NOT touch: A B C D E F I J K M O P Q T U V W X Y
490 REM =====================================================
1000 REM After here we look at numbers as unsigned, we just need to know the sign for the end result
1001 let S=1: if G<0 then let S=-1
1002 if N<0 then let S=-S
1010 let L=ABS(G), Z=ABS(N)
1031 let R=usr(3, L, 255)*usr(3, Z, 255)
1041 let R=((L/256)*(Z/256)*256)+((L/256)*usr(3, Z, 255))+(usr(3, L, 255)*(Z/256))+(R/256)
1050 let R=S*R : RETURN
