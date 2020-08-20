%
o0001; (program code, JohnB 1/8/20)

G98; (feed per minute)
G20; (inches positioning)
G80; (cancel canned cycles)
G40; (cancel compensation)
G54; (Work Coordinate System)

M03 S2000 F10.0; (activate spinde, 2000 rpm, 10 ipm)

(end startup blocks)

(go to starting position)
G00; (rapid mode)
X1.4; (safe x position)
Z0; (pt 1)

(face)
G01; (controlled feed)
X-0.050; (facing, pt 2)

(prepare to turn OD)
Z0.050; (safe z, pt 3)
G00; (rapid)
X1.325; (pt 4)

(OD first pass)
G01; (controlled feed)
Z-1.100; (pt 5)

(ready second pass)
X1.400; (safe x, pt 6)
G00; (rapid)
Z0.050; (safe z, pt 7)
X1.275; (pt 8)

(second pass)
G01; (controlled feed)
Z-1.100; (pt 9)

(ready third pass)
X1.400; (safe x, pt 10)
G00; (rapid)
Z0.050; (safe z, pt 11)
X1.250; (pt 12) 

(OD third pass)
G01; (controlled feed)
Z-1.100; (pt 13)

(ready chamfer)
X1.400; (safe x, pt 14)
Z0.050; (safe z, pt 15)
X0.750; (pt 16)

(chamfer) 
G01; (controlled feed)
Z0; (pt 17)
X1.250 Z-0.050; (pt 18)

(ready pass two)
G00; (rapid)
Z0.050; (safe z, pt 19)
X0.750; (pt 20)

(chamfer pass two)
G01; (controlled feed)
Z0; (pt 21)
X1.250 Z-0.100; (pt 22)

(ready pass three)
G00; (rapid)
Z0.050; (safe z pt 23)
X0.750; (pt 24)

(chamfer pass three)
G01; (controlled feed)
Z0; (pt 25)
X1.250 Z-0.150; (pt 26)

(ready pass four)
G00; (rapid)
Z0.050; (safe z pt 27)
X0.750; (pt 28)

(chamfer pass four)
G01; (controlled feed)
Z0; (pt 29)
X1.250 Z-0.200; (pt 30)

(ready pass 5)
G00; (rapid) 
Z0.050; (safe z, pt 31)
X0.750; (pt 32)

(chamfer pass five)
G01; (controlled feed)
Z0; (pt 33)
X1.250 Z-0.250; (pt 34)

(end)
G00; (rapid)
Z0.050; (safe z)
Z6.00; (move away from workpiece)

M30; (end program)
%

