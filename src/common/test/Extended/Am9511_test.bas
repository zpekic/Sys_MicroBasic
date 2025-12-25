clear
rem print pi*1000000
? usr(26, 65520, 1000000)
poke 65524, 28
poke 65524, 26
poke 65524, 18
poke 65524, 30
? usr(22, 65520)

100 for i=-10 to 100 step 10
119 rem push 32-bit signed integer and print it as decimal
120 print usr(26, 65520, i),
129 rem FLTD (convert from 32-bit integer to 32-bit floating point)
130 poke 65524, 28
139 rem SQRT (get square root)
140 poke 65524, 1
149 rem check the status
150 let s=peek(65524)
159 rem status 0 is good, but for zero we will get status flag zero (32)
160 if s=0 then 190
170 print "status=";s
180 goto 210
189 rem FIXD (convert from 32-bit floating point to 32-bit integer)
190 poke 65524, 30
199 rem pop 32-bit signed integer and display as decimal
200 print usr(22, 65520)
210 next i
220 end
