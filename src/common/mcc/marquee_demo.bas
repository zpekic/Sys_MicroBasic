100 rem -- Demo to marqee string between brackets below
110 rem [Hello World! ]
120 rem -- pEek and pOke function calls
130 let e=20
140 let o=24
150 gosub 1000
160 print "Found string between ",f,l
for c = F to L
		mask = 128
		for x = 0 to 63
			for y = 0 to 7
				if x < 63 then
					m[64*y + x] = m[64*y + x + 1]
				else
					if (mask and r(c*8+y)) then
						m[64*y+63] = m[c]
					else
						m[64*y+63] = 32
					end if
				end if
			next y
		next x
		mask = mask / 2
		if mask > 0 then x_loop
next c
goto 165

1000 rem -- find marquee string and return in F,L vars
1010 let f=128
1020 let f=f+2
1030 if usr(e, f) = 91 then goto 1060
1040 if usr(e, f) = 13 then goto 1050
1041 let f = f+1
1042 goto 1030
1050 let f=f+3
1051 goto 1030
1060 let l=f+1
1070 if usr(e, l) = 93 then return
1080 if usr(e, l) = 13 then stop
1081 let l=l+1
1085 goto 1070
