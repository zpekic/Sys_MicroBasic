100 input "from, to, step:", f, t, s
110 if s = 0 then gosub 200
120 if s <> 0 then gosub 300
130 goto 100

200 for v = f to t
210 print v, f, t
220 next v
230 return

300 for v = f to t step s
310 print v, f, t, s
320 next v
330 return
