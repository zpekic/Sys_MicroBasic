100 REM	-------------------------------------
101 REM	Simple benchmark - find primes < 1000
103 REM	-------------------------------------
104 REM https://archive.org/details/InterfaceAge198006/page/n131/mode/2up
105 REM   SW432    CPU (MHz) Result (s)
106 REM   100     6.25		144.710
107 REM   101     12.5		72.605
108 REM   110     25.0		36.552
109 REM   111     100.		9.512
110 REM   -------------------------------------
130 PRINT "^GStarting.^M^J"
140 LET N = 1
141 IF N > 1000 THEN GOTO 260 
150 	LET K = 2
151 	IF K > 500 THEN GOTO 230
160 		LET M = N/K
170 		LET L = N-(M*K)
175			IF K=N THEN GOTO 230
180 		IF M = 0 THEN GOTO 240
190 		IF M = 1 THEN GOTO 220 
200 		IF L > 0 THEN GOTO 220
210 		IF L = 0 THEN GOTO 240
220 		LET K = K + 1
221 		GOTO 151
230		PRINT N,
240		LET N = N + 1
241		GOTO 141
260 PRINT "^M^J^GFinished."
270 END
