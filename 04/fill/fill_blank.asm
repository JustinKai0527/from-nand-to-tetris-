@SCREEN
D = A

@arr
M = 0

@i
M = D

@KBD
D = A

@boundary
M = D

(LOOP)
@i
D = M

@arr
A = D
M = -1
@i
M = M+1
D = M

@boundary
D = D - M

@LOOP
D;JLE

(END)
@END
0;JMP