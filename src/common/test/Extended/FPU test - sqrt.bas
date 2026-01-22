clear
100 print "i","status","sqrt(i)"
110 for i=-10 to 200 step 5
118 	rem push 32-bit signed integer and print it as decimal
119 	rem let v=usr(26, 65520, 25165824) 
120 	print usr(26, 65520, i),
130 	poke 65524, 28: rem FLTD 32‑bit fixed → float
140 	poke 65524, 1: rem SQRT (TOS <= SQRT(TOS))
149 	rem check the status
150 	let s=peek(65524)
151 	if usr(3, s, 128) <> 0 then 150 : rem check for BUSY flag
152 	if usr(3, s, 64) <> 0 then print "S";
153 	if usr(3, s, 32) <> 0 then print "Z";
154 	if usr(3, s, 1) <> 0 then print "C";
155 	if usr(3, s, 30) <> 0 then 170
160	print " ",
165 	goto 200
170	print "ERROR"
199 	rem pop 32-bit float and display as hex string
200	poke 65524, 23 : rem PTOF (duplicate NOS → TOS (float))
204 	let v= usr(22, 65520) : gosub 9100
205 	let v= usr(22, 65520) : gosub 9400
210 next i
220 end

9000 rem print var v as 8-digit hex value
9001 for d=7 to 0 step -1
9010 	let @(d)=v%16, v=v/16
9020 next d
9025 for d=0 to 7
9030 	if @(d)>9 then let @(d)= usr(28,55+@(d),0) : goto 9090
9040 	let @(d)= usr(28,48+@(d),0)
9090 next d
9091 print " ",
9095 return

9100 rem print var v as decoded Am9511 floating point format
9105 gosub 9200
9110 let s=50000000: gosub 9300
9120 if v>=0 then print " .";m;"*2^^";e,
9130 if v<0 then print "-.";m;"*2^^";e,
9140 return

9200 rem extract binary exponent from v
9201 let e=usr(3, v, 2130706432), e=e/16777216: if e>63 then e=e-128
9209 return

9300 rem extract mantissa from v
9301 let m=0, t=8388608
9302 if t=0 then return
9303 	if usr(3, t, v) <> 0 then let m=m+s
9304 	let t=t/2, s=s/2 : goto 9302

9400 rem print var v as decoded Am9511 floating point format
9410 gosub 9200
9420 rem estimate decimal exponent d by multiplying it with log(2)
9580 if e=0 then let d=0, s=50000000: goto 9600
9581 if e=1 then let d=1, s=10000000: goto 9600
9582 if e=2 then let d=1, s=20000000: goto 9600
9583 if e=3 then let d=1, s=40000000: goto 9600
9584 if e=4 then let d=2, s=80000000: goto 9600
9585 if e=-1 then let d=-1, s=25000000: goto 9600
9586 if e=-2 then let d=-1, s=12500000: goto 9600
9587 if e=-3 then let d=-1, s=62500000: goto 9600
9588 if e=-4 then let d=-2, s=31250000: goto 9600
9590 stop
9600 print "[";e;" ";d;"] ";
9601 gosub 9300
9605 if v>=0 then print " .";m;"E";d
9606 if v<0 then print "-.";m;"E";d
9609 return


