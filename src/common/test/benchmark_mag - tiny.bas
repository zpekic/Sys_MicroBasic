100 REM	-------------------------------------
101 REM	Simple benchmark - find primes < 1000
103 REM	-------------------------------------
104 REM https://archive.org/details/InterfaceAge198006/page/n131/mode/2up
105 REM   SW210    CPU (MHz) Result (s)
106 REM   100     01.5625 52m23   3143
107 REM   101     03.1250 26m12   1572
108 REM   110     06.2500 13m06   786
109 REM   111     25.0000 3m17    197
110 REM   -------------------------------------
130 PRINT "^GStarting."
140 LET N = 1
141 IF N > 1000 THEN GOTO 260 
150 	LET K = 2
151 	IF K > 500 THEN GOTO 230
160 		LET L = N/K
170 		LET M = N-K*L
180 		IF L = 0 THEN GOTO 230
190 		IF L = 1 THEN GOTO 220 
200 		IF M > L THEN GOTO 220
210 		IF M = L THEN GOTO 240
220 		LET K = K + 1
221 		GOTO 151
230		PRINT N,"";
240		LET N = N + 1
241		GOTO 141
260 PRINT "^GFinished."
270 STOP
