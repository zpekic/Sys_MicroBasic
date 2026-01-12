clear
100 print "i","status","sqrt(i)"
110 for i=-10 to 200 step 10
119 	rem push 32-bit signed integer and print it as decimal
120 	print usr(26, 65520, i),
129 	rem FLTD (convert from 32-bit integer to 32-bit floating point)
130 	poke 65524, 28
139 	rem SQRT (get square root)
140 	poke 65524, 1
149 	rem check the status
150 	let s=peek(65524)
151 	if usr(3, s, 128) <> 0 then 150
152 	if usr(3, s, 30) = 0 then 180 
160 	print "^GFPU ERROR: ";s/2
165 	goto 210
180 	print s,
199 	rem pop 32-bit float and display as hex string
200 	let v= usr(22, 65520)
205 	gosub 1000
206 	print
210 next i
220 end

1000 for d=7 to 0 step -1
1010 	let @(d)=v%16, v=v/16
1020 next d
1025 for d=0 to 7
1030 	if @(d)>9 then goto 1040+(2*@(d))
1040 	print @(d);
1045 	goto 1090
1050 	end
1060 	print "A";
1061 	goto 1090
1062 	print "B";
1063 	goto 1090
1064 	print "C";
1065 	goto 1090
1066 	print "D";
1067 	goto 1090
1068 	print "E";
1069 	goto 1090
1070 	print "F";
1090 next d
1099 return
