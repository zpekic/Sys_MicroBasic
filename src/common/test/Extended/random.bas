100 let l=10
110 for i=0 to 5
120 for j=0 to 24
130 ? rnd(l),
140 next j
150 let l=l*10 : ?
155 ?
160 next i
170 end
175 rem --- internal tiny basic algorithm ---
190 rem 487.684s at 4.096kHz
191 rem 0.545s at 6.25MHz
192 rem 0.479s at 12.5MHz
193 rem 0.445s at 25MHz
194 rem 0.421s at 100MHz
200 rem --- new hardware algorithm ---
201 rem 416.179s at 4.096kHz
202 rem 0.528s at 6.25MHz
203 rem 0.469s at 12.5MHz
204 rem 0.440s at 25MHz
205 rem 0.420s at 100MHz

