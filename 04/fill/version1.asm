@color
M = 0
D = M


(CHECK)
@color
D = M
M = !M
@WtoB
D;JEQ
@BtoW
D;JMP

(WtoB)

@KBD
D = M
@START
D;JNE
@WtoB
0;JMP

(BtoW)
@KBD
D = M
@START
D;JEQ
@BtoW
0;JMP

(START)
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
@CHECK
0;JMP




//