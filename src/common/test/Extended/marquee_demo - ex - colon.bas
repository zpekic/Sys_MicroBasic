new
100 rem -- Demo to marqee string between brackets below
110 rem [Hello World from Extended Tiny Basic! ]

150 gosub 1000
160 print "Found marquee string at ";f
161 gosub 1100
162 print "Found chargen at ";g;", press CTRL/C to end demo"
165 let a=1536 
170 let c=f+1
175 let z=peek(c) : if z = 93 then 170
180 gosub 2000
190 let c=c+1 : goto 175

2000 rem go through all 8 masks
2010 let m=128
2020 gosub 3000
2030 let m=m/2 : if m=0 then return
2050 goto 2020

3000 rem paint screen for character c and mask m/2
3010 for y= 7 to 0 step -1
3015 	let b=a+(64*y), p=peek(8*z+y+g): rem chargen at address g
3020 	let x=0
3030 	if x<63 then goto 3040
3032 	let d=z : if usr(3, p, m)=0 then let d=32
3035 	poke b+63, d : goto 3065
3040 	poke b+x, peek(b+x+1)
3050 	let x=x+1 : goto 3030
3065 next y
3070 return

1000 rem -- find [ and return position in F
1010 let f=128
1020 let f=f+2
1030 if peek(f) = 91 then return
1040 if peek(f) = 13 then 1050
1041 let f=f+1 : goto 1030
1050 let f=f+1 : goto 1020

1100 rem -- find chargen and return start position in G
1110 for i=1 to 31
1115    rem look for chargen in every 2k block except lowest which must be RAM
1120    let g=i*2048
1130    if peek(g+127*8+0) <> 85 then 1150
1131    if peek(g+127*8+1) <> 170 then 1150 
1140    rem found signature of 0x55, 0xAA for ASCII code 127
1141    return
1150 next i
1160 print "^GChargen not found."
1170 end


