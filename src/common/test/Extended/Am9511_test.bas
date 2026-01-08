clear
10 input "^MEnter FP number:",v
22 let p=0
30 gosub 1500
35 gosub 1800
36 print "^Mval=";
37 print "^M^M"
40 gosub 1000
41 print
50 goto 10 

1000 rem convert v to decimal string
1001 rem ---------------------------
1002 let e=0
1005 gosub 1300
1006 if x = 0 then 1110
1020 rem e = int(float(x)*log(2.0)+-1.0)
1030 let x=usr(26, 65520, x)
1035 poke 65524, 28
1020 let f=usr(26, 65520, 2140807321)
1040 poke 65524, 18
1041 if x >= 0 then let f=usr(26, 65520, 25165824)
1042 if x < 0 then let f=usr(26, 65520, -2122317824)
1043 poke 65524, 16
1045 poke 65524, 30
1050 let e=usr(22, 65520)
1060 rem v = v / (10^e)
1070 gosub 1250
1085 let v=usr(26, 65520, v)
1090 poke 65524, 25
1095 poke 65524, 19
1100 let v=usr(22, 65520)
1102 gosub 1300
1110 rem we have the exponent in e, get the mantissa
1115 if abs(x) > 1 then print "^GERROR: v=";v;" e=";e;" x=";x;"^M^M^M"
1116 if abs(x) > 1 then end
1119 let m=0, b=8388608
1120 if x=0 then  let s=050000000
1122 if x=1 then  let s=100000000, e=e+1
1124 if x=-1 then let s=025000000, e=e-1
1130 for f=0 to 23
1140 if usr(3, b, v) = 0 then 1160
1150 let m=m+s
1160 let s=s/2, b=b/2
1170 next f
1200 rem get the sign and print
1210 if v >= 0 then print " .";m;"E";e;
1220 if v < 0 then print  "-.";m;"E";e; 
1230 return

1250 rem 10^float(e)
1251 let f=usr(26, 65520, 77594624)
1252 let e=usr(26, 65520, e)
1263 poke 65524, 28
1264 poke 65524, 11
1265 return 

1300 rem extract 2^x from floating point value v
1305 x=usr(3, v, 2130706432) / 16777216
1310 if x > 64 then let x = x - 128
1320 return

1400 rem accept string and store as ASCII bytes starting at location p. Break on CTRL/C, return on ENTER
1401 rem -----------------------------------------------------------------------------------------------
1420 d=usr(28, usr(23, 0))
1421 poke p,d
1422 let p=p+1
1424 if d=8 then let p=p-2
1425 if d=3 then 1445
1430 if d<>13 then 1420
1435 poke p,0
1440 return
1445 print "^BREAK"
1446 end

1500 rem parse floating point, starting with memory position p
1501 rem -----------------------------------------------------
1510 gosub 1700
1511 let v=0, f=0, e=0, d=0
1515 let c=peek(p)
1520 if c=69 then 1580
1525 if c=101 then 1580
1530 if c>57 then 1600
1535 if c<43 then 1600
1540 if c=43 then 1575
1545 if c=44 then 1600
1550 if c=45 then 1590
1555 if c=46 then 1585
1560 if c=47 then 1600
1565 rem DIGITS 0..9
1566 if f=0 then let f=1
1570 if usr(3, f, 4)<>0 then let e=10*e+(c-48) 
1571 if usr(3, f, 4)<>0 then 1575
1572 if usr(3, f, 2)<>0 then let d=d-1
1574 gosub 1650
1575 let p=p+1
1576 goto 1515
1580 rem E or e
1581 if f=0 then error
1582 let f=usr(4, f, 4)
1583 goto 1575
1585 rem DOT
1586 let f=usr(4, f, 2)
1587 goto 1575
1590 rem MINUS
1591 if usr(3, f, 4)<>0 then let f=usr(4, f, 512) 
1592 if usr(3, f, 4)<>0 then 1575
1593 if usr(3, f, 3)<>0 then error
1594 let f=usr(4, f, 256)
1595 goto 1575
1600 rem convert to FP using Am9511
1605 if f=0 then error
1610 if usr(3, f, 256)<>0 then let v=(0-v)
1615 if usr(3, f, 512)<>0 then let e=(0-e)
1616 let e=e+d
1620 print "v=";v;" e=";e;" f=";f;"^M"
1621 gosub 1250
1625 let v=usr(26, 65520, v)
1630 poke 65524, 28
1631 if usr(3, peek(65524), 128)<>0 then 1631
1632 poke 65524, 18
1633 if usr(3, peek(65524), 128)<>0 then 1633
1636 let v=usr(22, 65520)
1639 return

1650 rem v=10*v+float(c-48)
1655 let v=usr(26, 65520, v)
1655 let v=usr(26, 65520, 77594624)
1670 poke 65524, 18
1675 let v=usr(26, 65520, c-48)
1680 poke 65524, 28
1680 poke 65524, 16
1685 let v=usr(22, 65520)
1690 return
 
1700 rem skip leading spaces
1701 let c=peek(p)
1705 if c=32 then 1730
1710 if c=9 then 1730
1720 return
1730 let p=p+1
1740 goto 1701

1800 rem print v as 32-bit hex
1801 let @(0)=v
1802 for i=8 to 1 step -1
1805 let @(i)=48+usr(3, @(0), 15)
1806 if @(i)>57 then @(i)=@(i)+7
1810 let @(0)=@(0)/16
1820 next i
1825 print "dec=";v;" hex=";
1830 for i=1 to 8
1835 d=usr(28, @(i))
1840 next i
1845 print
1845 return
