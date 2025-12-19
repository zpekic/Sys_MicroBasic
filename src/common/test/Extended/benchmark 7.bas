300 PRINT"S"
400 K=0
430 REM DIM M(5)
500 K=K+1
510 LET A=K/2*3+4-5
520 GOSUB 820
530 FOR L=1 TO 5
535 @(L)=A
540 NEXT L
600 IF K<1000 THEN 500
700 PRINT"E"
800 END
820 RETURN

1000 REM ------------------------------------------------------
1001 REM https://en.wikipedia.org/wiki/Rugg/Feldman_benchmarks#Sample_results
1003 REM ------------------------------------------------------
1005 REM   SW432    CPU (MHz) Result (s)
1006 REM   100     6.25		5.788	
1007 REM   101     12.5		2.892
1008 REM   110     25.0		1.448
1009 REM   111     100.		0.365
1010 REM ----------------------------------------------------
