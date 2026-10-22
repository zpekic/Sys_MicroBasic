100 REM See https://en.wikipedia.org/wiki/Rugg/Feldman_benchmarks#Sample_results
101 REM https://hackaday.io/project/204482-cpu-running-basic
102 REM Basic CPU, Extended TinyBasic, 1MHz clock: 18.229
300 PRINT"S"
400 K=0
430 rem DIM M(5) - @(I) array is always defined, DIM is not supported
500 K=K+1
510 LET A=K/2*3+4-5
520 GOSUB 820
530 FOR L=1 TO 5
540 NEXT L
600 IF K<1000 THEN 500
700 PRINT"E"
800 END
820 RETURN