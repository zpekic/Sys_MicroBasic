10 rem ds1302 test - mapped to 0xC000 to 0xC03F
11 let p=-1
12 let s=peek(49152)
13 if s=p then 12
14 let p=s
15 for a=49152 to 49152+6
20 print peek(a),
30 next a
40 print "^M";
50 goto 12
