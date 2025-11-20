100 REM	-------------------------------------
101 REM	Simple benchmark - find primes < 1000
102 REM See http://www.mtmscientific.com/lalu.html
103 REM	-------------------------------------
104 REM https://archive.org/details/InterfaceAge198006/page/n131/mode/2up
105 REM   SW432   CPU (MHz)	Result (s)
106 REM   100     6.25		174.187
107 REM   101     12.5		87.343
108 REM   110     25.0		43.921
109 REM   111     100.		11.354
110 REM   -------------------------------------
130 PRINT "^GStarting.^M^J"
140 LET N = 1
141 IF N > 1000 THEN GOTO 250
150 	GOSUB 300
240 	LET N = N + 1
241 	GOTO 141
250 PRINT "^M^J^GFinished."
260 END
300 LET K = 2
301 IF K > 500 THEN GOTO 380
310 	M=N/K
312 	J=N-M*K
320 	IF K=N THEN GOTO 380
330 	IF M=0 THEN RETURN
340 	IF M=1 THEN GOTO 370
350 	IF J>0 THEN GOTO 370
360 	IF J=0 THEN RETURN
370 	LET K = K + 1
371 	GOTO 301
380 PRINT N,
390 RETURN
