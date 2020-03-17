%
o0001; (coded John Bush, 3/16/20)
G20; (inches positioning)
G94; (feed per minute)
G90; (absolute positioning)
G80; (cancel canned cycles)
G40; (cancel tool radius compensation)
G54; (work coordinate system)

M08; (coolant on)

M06 T8; (tool change #8, 2" shell cutter)
G43 H8; (tool length compensation tool #8)
M03 S400 F8.0; (spindle on 400rpm 8.0ipm)

G00; (rapid on)
Z1.0; (safe z)
X2.50; (safe x)
Y-0.25; 
Z0.0; 

G01; (ctrl feed)
X-2.50; (facing pass)
G00; (rapid)
Y0.25; 
G01; (ctrl feed)
X2.50; (facing pass)

M06 T10; (tool change #8 5/8" endmill)
G43 H10; (tool length compensation tool #8)
M03 S1200 F24.0; (spindle on 1200rpm 24.0 ipm)

G00; (rapid)
Z0.050; (safe z)
X1.125 Y1.75; (starting pt)
Z0.0; (set down to face)
(peripheral milling subroutine)
M97 P1000 L31; (peripheral milling sub, 31 loops)
G00; (rapid)
Z0.050; (safe z)

(drill corner holes)
M06 T1; (tool change #1, K twist drill)
G43 H1; (tool height compensation #1)
M03 S700 F7.0; (spindle on 700rpm, 7.0ipm)

G00; (rapid)
Z0.10; (safe z)
X1.00 Y0.75; (upper right hole)
(drill canned cycle)
G83 Q0.025 Z-1.70 R0.1;
Y-0.625; (lower right hole)
X-1.0; (lower left hole)
Y0.75; (upper left hole)
G80; (cancel canned cycle)

(counterbore)
M06 T2; (tool change #2, 13/32" counterbore)
G43 H2; (tool height compensation #2)
M03 S500 F5.0; (spindle on 500rpm, 5.0ipm)

G00; (rapid)
Z1.0; (safe z)
X1.00 Y0.75; (upper right hole)
(drill canned cycle) 
G83 Q0.025 Z-0.281 R0.1;
Y-0.625; (lower right hole)
X-1.0; (lower left hole)
Y0.75; (upper right hole)
G80; (cancel canned cycle)

G00; (rapid)
Z2.0; (raise z)
X-5.0; (move away)

M30; 

N1000; (peripheral milling routine)
G91; (incremental positioning)
G00; (rapid)
Z-0.050; (lower z)
G90; (absolute positioning)
G41 G01 Y1.0 D10; (cutter rad comp, tool #10, move to pt. B)
G02 X1.250 Y0.875 R0.125; 
G01 Y-0.750; 
G02 X1.125 Y-0.875 R0.125; 
G01 X0.875; 
G02 X0.750 Y-0.750 R0.125;
G01 Y-0.500; 
G02 X0.250 Y0.0 R0.500; 
G01 X-0.250; 
G02 X-0.750 Y-0.50 R0.500; 
G01 Y-0.750; 
G02 X-0.875 Y-0.875 R0.125; 
G01 X-1.125; 
G02 X-1.250 Y-0.750 R0.125; 
G01 Y0.875; 
G02 X-1.125 Y1.0 R0.125; 
G01 X1.125; 
G40 G00 Y1.75; (return to starting point)
M99; (end subroutine)
%
