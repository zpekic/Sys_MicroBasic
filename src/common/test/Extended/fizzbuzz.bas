new
10 for i=1 to 100
20 if i%15<>0 then 30
21 ? "FizzBuzz",
22 goto 70
30 if i%3<>0 then 40
31 ? "Fizz",
32 goto 70
40 if i%5<>0 then 50
41 ? "Buzz",
42 goto 70
50 ? i,
70 next i
80 end
