%

o0002; (second part)
(coded by John Bush, 3/16/20)

G20; (inches positioning)
G94; (feed per minute)
G90; (absolute positioning)
G80; (cancel canned cycles)
G40; (cancel compensation)
G54; (work coordinate system)
M08; (coolant on)

M06 T8; (tool change to 2" shell mill)
G43 H8; (tool length compensation #8)
M03 S400 F8.0; (spindle on 400rpm, 8.0ipm)

G00; (rapid on)
Z1.0; (safe z)
X2.50; (safe x)
Y-0.25; 
Z0.0; 

M97 P1000 L10; (gosub final facing)
(each loop removes 0.050")

G00; (rapid)
Z1.0; (safe z)
X-5.0; (move away)
M30; 

N1000; (facing subroutine)
G91; (incremental positioning)
G00 Z-0.050; (increment z)
G90; (absolute positioning)
G01; (ctrl feed)
X-2.50; (first pass)
G00; (rapid)
Y0.250; 
G01; (ctrl feed)
X2.50; 
G00; (rapid)
Y-0.250; (return to start)
M99; 
%
