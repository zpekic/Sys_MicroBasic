100 REM See https://en.wikipedia.org/wiki/Rugg/Feldman_benchmarks#Sample_results
101 REM https://hackaday.io/project/204482-cpu-running-basic
102 REM Basic CPU, Extended TinyBasic, 1MHz clock: 7.479s
300 PRINT"S"
400 K=0
500 K=K+1
510 LET A=K/2*3+4-5
520 GOSUB 820
600 IF K<1000 THEN 500
700 PRINT"E"
800 END
820 RETURN