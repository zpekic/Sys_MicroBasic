100 print "^GStart"
101 let r=0, v=251
110 for h=0 to 59 
120 	for j=0 to 59
130		for i = 0 to 59
200			let r=r+v
201			let r=r+v
202			let r=r+v
203			let r=r+v
204			let r=r+v
205			let r=r+v
206			let r=r+v
207			let r=r+v
208			let r=r+v
209			let r=r+v
210			let r=r+v
211			let r=r+v
212			let r=r+v
213			let r=r+v
214			let r=r+v
215			let r=r+v
216			let r=r+v
217			let r=r+v
218			let r=r+v
219			let r=r+v
220			let r=r+v
221			let r=r+v
222			let r=r+v
223			let r=r+v
224			let r=r+v
225			let r=r+v
226			let r=r+v
227			let r=r+v
228			let r=r+v
229			let r=r+v
230			let r=r+v
231			let r=r+v
240		next i
250	next j
260 next h
270 print "^GResult:",r
280 end
300 REM ==========================================
302 REM See: https://www.youtube.com/watch?v=uAK9vAZOo3U
304 REM ==========================================
305 REM == CPU f (MHz)	time (s, with IL cache)	==
306 REM == 6.25		1666.389		==
307 REM == 12.5		833.201			==
308 REM == 25.0		416.617			==
309 REM == 100.0	104.161			==
310 REM ==========================================
