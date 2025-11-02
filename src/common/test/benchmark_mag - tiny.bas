100 REM	-------------------------------------
101 REM	Simple benchmark - find primes < 1000
103 REM	-------------------------------------
104 REM https://archive.org/details/InterfaceAge198006/page/n131/mode/2up
105 REM   SW432    CPU (MHz) Result (s)
106 REM   100     6.25		422.181 (cached = 297.761, faster)
107 REM   101     ?
108 REM   110     ?
109 REM   111     100.00	26.925 (cached = 19.149, 40% faster)
110 REM   -------------------------------------
130 PRINT "^GStarting.^M^J"
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
230		PRINT N,
240		LET N = N + 1
241		GOTO 141
260 PRINT "^M^J^GFinished."
270 END
