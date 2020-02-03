%
o0001; (coded John Bush 2/3/20)

G98; (feed per minute)
G20; (inches positioning)
G80; (cancel canned cycles)
G40; (cancel compensation)
G54; (work coordinate system)

M03 S2000 F10.0; (spindle on 2000rpm 10.0 ipm)

M08; (coolant on)

(end startup blocks)

(starting position)
G00; (rapid mode)
X 1.700; (safe x)
Z 0.050; (safe z)

(facing)
Z0.0;
G01; (ctrl feed)
X-0.050;

G00; (rapid)
Z0.050; (safe z)

(turn furthest outer diameter)
X1.625; (presumptive edge of material)
G01; (ctrl feed)
Z-2.100; (pass one)

X1.700; (safe x)
G00; (rapid)
Z0.050; (safe z)

X1.575; (pass 2)
G01; (ctrl feed)
Z-2.100; 
X1.700 (safe x)
G00; (rapid)
Z0.050; (safe z)

X1.525; (pass 3)
G01; (ctrl feed)
Z-2.100; 
X1.700; (safe x)
G00; (rapid)
Z0.050; (safe z)

X1.510; (pass 4, final rough pass)
G01; (ctrl feed)
Z-2.100; 
X1.700; (safe x)
G00; (rapid)
Z0.050; (safe z)

(turn inner diameter)
X1.460; (pass 1)
G01; (ctrl feed)
Z-1.000; 
X1.550; (safe x)
G00; (rapid)
Z0.050; (safe z)

X1.410; (pass 2)
G01; (ctrl feed)
Z-1.000; 
X1.550; (safe x)
G00; (rapid)
Z0.050; (safe z)

X1.360; (pass 3)
G01; (ctrl feed)
Z-1.000; 
X1.550; (safe x)
G00; (rapid)
Z0.050; (safe z)

X1.310; (pass 4)
G01; (ctrl feed)
Z-1.000; 
X1.550; (safe x)
G00; (rapid)
Z0.050 (safe z)

X1.260; (pass 5)
G01; (ctrl feed)
Z-1.000; 
X1.550; (safe x)
G00; (rapid)
Z0.050; (safe z)

X1.210; (pass 6)
G01; (ctrl feed)
Z-1.000; 
X1.550; (safe x)
G00; (rapid)
Z0.050; (safe z)

X1.160; (pass 7)
G01; (ctrl feed)
Z-1.000; 
X1.550; (safe x)
G00; (rapid)
Z0.050; (safe x)

X1.110; (pass 8)
G01; (ctrl feed)
Z-1.000; 
X1.550; (safe x)
G00; (rapid)
Z0.050; (safe z)

X1.060; (pass 9)
G01; (ctrl feed)
Z-1.000; 
X1.550; (safe x)
G00; (rapid)
Z0.050; (safe z)

X1.010; (pass 10 last rough pass)
G01; (ctrl feed)
Z-1.000; 


(turn first chamfer)
(still in ctrl feed)
X1.510 Z-1.050; (pass 1)
Z-1.000; 
X1.010; 

X1.510 Z-1.100; (pass 2)
Z-1.000; 
X1.010; 

X1.510 Z-1.150; (pass 3)
Z-1.000; 
X1.010; 

X1.510 Z-1.200; (pass 4)
Z-1.000; 
X1.010; 

X1.510 Z-1.250; (pass 5)
Z-1.000; 
X1.010; 

X1.510 Z-1.300; (pass 6)
Z-1.000; 
X1.010; 

X1.510 Z-1.350; (pass 7)
Z-1.000; 
X1.010; 

X1.510 Z-1.400; (pass 8)
Z-1.000; 
X1.010; 

X1.510 Z-1.450; (pass 9)
Z-1.000; 
X1.010; 

X1.510 Z-1.500; (pass 10, final rough pass)

(turn second chamfer)
G00; (rapid)
Z0.050; (safe z)

X0.510; (pass 1)
G01; (ctrl feed)
Z0.0;
X1.010 Z-0.050; 
G00; (rapid)
Z0.050; (safe z)

X0.510; (pass 2)
G01; (ctrl feed)
Z0.0;
X1.010 Z-0.100;
G00; (rapid)
Z0.050 (safe z)

X0.510; (pass 3)
G01; (ctrl feed)
Z0.0; 
X1.010 Z-0.150; 
G00; (rapid)
Z0.050; (safe z)

X0.510; (pass 4)
G01; (ctrl feed)
Z0.0; 
X1.010 Z-0.200; 
G00; (rapid)
Z0.050; (safe z)

X0.510; (pass 5, last rough pass)
G01; (ctrl feed)
Z0.0; 
X1.010 Z-0.250; 
G00; (rapid)
Z0.050; (safe z); 

(final countour pass)
X0.500;
G01; (ctrl feed)
Z0.0; 
X1.000 Z-0.250; (2nd chamfer)
Z-1.000; (second OD)
X1.500 Z-1.500; (1st chamfer)
Z-2.100; (1st OD)

X1.700; (safe x)
G00; (rapid)
Z6.00; (move away from workpiece)

M30; (end program)
%

 
