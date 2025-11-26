100 REM	-------------------------------------
101 REM	Simple benchmark - find primes < 1000
103 REM	-------------------------------------
104 REM https://archive.org/details/InterfaceAge198006/page/n131/mode/2up
105 REM   SW432    CPU (MHz) Result (s)
106 REM   100     6.25		144.144
107 REM   101     12.5		72.321
108 REM   110     25.0		36.409
109 REM   111     100.		9.477
110 REM   -------------------------------------
130 PRINT "^GStarting.^M^J"
140 FOR N = 1 TO 1000
150 	FOR K = 2 TO 500
160 		LET M = N/K, L = N-(M*K)
175			IF K=N THEN 230
180 		IF M = 0 THEN 240
190 		IF M = 1 THEN 220 
200 		IF L > 0 THEN 220
210 		IF L = 0 THEN 240
220 	NEXT K
230		PRINT N,
240	NEXT N
260 PRINT "^M^J^GFinished."
270 END
