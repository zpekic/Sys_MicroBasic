100 REM See https://en.wikipedia.org/wiki/Rugg/Feldman_benchmarks#Sample_results
300 PRINT"S"
400 K=0
500 K=K+1
530 A=K*K
540 REM B=LOG(K)
541 K=usr(26, 65520, K)
542 poke 65524, 28
543 poke 65524, 8
544 B=usr(22, 65520)
550 REM C=SIN(K)
551 K=usr(26, 65520, K)
552 poke 65524, 28
553 poke 65524, 2
554 C=usr(22, 65520)
600 IF K<100 THEN 500
700 PRINT"E"
800 END

900 REM Benchmark results (Am9511 CLK = const. = 1.5625MHz)
902 REM Basic CPU CLK	Run time (s)
903 REM ----------------------------
904 REM	6.25 MHz	0.998		
905 REM	12.5 MHz	0.802
906 REM	25.0 MHz	0.718
907 REM	100  MHz	0.657
908 REM ----------------------------
910 REM Inverse model prediction t[s] = 0.6436 + 2.213 / f[MHz]



