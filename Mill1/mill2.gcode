%
o0002; (second part)
(Coded John Bush, 2/12/20)

G20; (inches positioning)
G94; (feed per minute)
G90; (absolute positioning)
G80; (cancel canned cycles)
G40; (cancel compensation)
G54; (work coordinate system)
M08; (coolant on)

M06 T8; (tool change #8 shell mill)
G43 H8; (tool length compensation #8)
M03 S1200 F14.4; (spindle on 1200rpm 14.4ipm)

G00; (rapid on)
Z1.0; (safe z)
X2.5; (safe x)
Y0.0; 
Z0.0; 

M97 P1000 L5; (gosub final facing)
(each loop takes 2 passes of 0.050 inches)

G00; (rapid)
Z1.0; (safe z)
X-3.0; (move away)
M30; 

N1000; (facing subroutine)
G91; (incremental positioning)
G00 Z-0.050; (increment z)
G90; (absolute positioning)
G01; (ctrl feed)
X-2.5; (first pass)

G91; (incremental positioning)
G00 Z-0.050; (increment z)
G90; (absolute positioning)
G01; (control feed)
X2.5; (second pass)
M99; 

%
