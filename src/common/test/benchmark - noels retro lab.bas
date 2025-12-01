10 for i=1 to 10
20 let s=0
30 for j=1 to 1000
40 let s=s+j
50 next j
60 print ".";
70 next i
80 print s
90 end
100 REM	------------------------------------------------------
101 REM	NL retro lab benchmark - sum from 1 to 1000, ten times
103 REM	------------------------------------------------------
104 REM https://www.youtube.com/watch?v=H05hM_Guoqk
105 REM   SW432    CPU (MHz) Result (s)
106 REM   100     6.25		6.183
107 REM   101     12.5		3.960
108 REM   110     25.0		1.552
109 REM   111     100.		0.395
110 REM   ----------------------------------------------------
