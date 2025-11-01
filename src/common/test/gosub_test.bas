100 print "level base"
110 gosub 1000
120 print "back to base"
130 end

1000 print "entering level 1000"
1010 gosub 2000
1020 print "back to level 1000"
1030 return

2000 print "entering level 2000"
2010 gosub 3000
2020 print "back to level 2000"
2030 return

3000 print "entering level 3000"
3010 gosub 4000
3020 print "back to level 3000"
3030 return

4000 print "entering level 4000"
4010 rem go on... (until stack overflow)
4020 print "leaving level 4000"
4030 return
