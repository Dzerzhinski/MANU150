%
o0001; (coded John Bush, 2/10/20)
G20; (inches positioning)
G94; (feed per minute)
G90; (absolute positioning)
G80; (cancel canned cycles)
G40; (cancel tool radius compensation)
G54; (work coordinate system)

M08; (coolant on)

M06 T8; (tool change #8, 2" shell cutter)
G43 H8; (tool length compensation tool #8)
M03 S1200 F14.4; (spindle  on 1200rpm 14.4ipm)

G00; (rapid on)
Z1.0; (safe z)
X2.5; (safe x)
Y0.0; 
Z0.0; 

G01; (ctrl feed)
X-2.5; (facing pass)

G00; 
Z0.050; (safe z)

M06 T10; (tool change #8 5/8" endmill)
G43 H10; (tool length compensation tool #8)
M03 S3600 F14.4; (spindle on 3600rpm 3.6ipm, double check)

G00; (rapid)
Z0.050; (safe z)
X0.75 Y1.5; (go to pt. 0)
Z0.0; (set down to face)
(peripheral milling subroutine)
M97 P1000 L26; (peripheral milling subroutine, 26 loops)
G00 Z0.050; (rapid to safe z)

(drill center hole)
M06 T4; (tool change #10, 1/4" twist drill)
G43 H4; (tool height compensation #4)
M03 S3200 F3.2; (spindle on 3200rpm 3.2ipm)

G00; (rapid)
Z0.10; (safe z)
X0.0; 
Y0.0; 
(drill canned cycle)
G83 Q0.025 Z-1.350 R0.1; 
G80;

G00; (rapid)
Z1.0; (raise z)
X-3.0; (move away)


M30;

N1000; (peripheral milling subroutine)
G91; (incremental positioning)
G00; (rapid)
Z-0.050; (lower z)
G90; (absolute positioning)
G41 G01 Y0.75 D10; (cutter radius comp, tool #10, move to pt. 1)
G02 X1.0 Y0.50 R0.25; (clockwise arc radius 0.25)
G01 Y-0.50;
G02 X0.75 Y-0.75 R0.25;
G01 X-0.75; 
G02 X-1.0 Y-0.50 R0.25; 
G01 Y0.50; 
G02 X-0.75 Y0.75 R0.25; 
G01 X0.75;
G40 G00 Y1.5; (return to pt 0)
M99; (end subroutine)

%
