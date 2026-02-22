clear
10 rem ----- quick hex dump every 8k, 256 bytes ------ 
11 for a=0 to 65535 step 8192
15 print "----- ";
16 let v=a/256:gosub 100
17 let v=a%256:gosub 100
18 print " -----"
20 for b=0 to 255
30 let v=peek(a+b): gosub 100
32 print "",
40 next b
50 print
60 next a
70 end

100 rem --- print byte value v in hex -----
101 push h,l
120 let h=(v/16)+48: if h>57 then let h=h+7
130 let l=(v%16)+48: if l>57 then let l=l+7
140 let h=usr(28, h), l=usr(28, l)
150 pop l,h: return
