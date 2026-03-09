clear
100 rem -- Demo to marqee string between brackets below
110 rem [Hello World! ]
120 rem -- pEek and pOke function calls
130 let e=20
140 let o=24

150 gosub 1000
160 print "Found marquee string at ";f;", press CTRL/C to end demo"
165 let a=1536
170 let c=f+1
175 let z=usr(e,c)
177 if z = 93 then goto 170
180 gosub 2000
190 let c=c+1
210 goto 175

2000 rem go through all 8 masks
2010 let m=128
2020 gosub 3000
2030 let m=m/2
2040 if m=0 then return
2050 goto 2020

3000 rem paint screen for character c and mask m/2
3010 let y=7
3015 let b=a+(64*y)
3016 let p=usr(e, 8*z+y+53248)
3020 let x=0
3030 if x<63 then goto 3040
3031 let d=z
3032 if usr(3, p, m)=0 then let d=32
3035 d=usr(o, b+63, d)
3039 goto 3065
3040 let d=usr(o, b+x, usr(e, b+x+1))
3050 let x=x+1
3060 goto 3030
3065 let y=y-1
3070 if y<0 then return
3090 goto 3015 

1000 rem -- find [ and return position in F
1010 let f=128
1020 let f=f+2
1030 if usr(e, f) = 91 then return
1040 if usr(e, f) = 13 then goto 1050
1041 let f = f+1
1042 goto 1030
1050 let f=f+1
1051 goto 1020


