new
1 S = 8190
2 rem DIM FLAGS(8191) - Tiny Basic only supports single array @(..)
3 PRINT "Only 1 iteration, S=",s
5 C = 0
6 FOR I = 0 TO S
7 @(I) = 1
8 NEXT I
9 FOR I = 0 TO S
10 IF @(I) = 0 THEN 18
11 let P = I+I+3
12 let K = I + P
13 IF K > S THEN 17
14 @(K) = 0
15 let K = K + P
16 GOTO 13
17 let C = C + 1
18 NEXT I
19 PRINT C," PRIMES"
100 rem ------------------------------
101 rem modified from https://en.wikipedia.org/wiki/Byte_Sieve
102 rem ------------------------------
103 rem Comparison results: https://archive.org/details/byte-magazine-1981-09/page/192/mode/2up


