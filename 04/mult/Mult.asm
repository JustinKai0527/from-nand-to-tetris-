// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.


//setting the begin value of num1 and num2
@R0
D = M
@FINAL            
D;JLE
@num1
M = D

@R1
D = M
@FINAL           
D;JLE
@num2
M = D
@temp
M = 0

@i
M = 0

//start loop
(loop)

@num1
D = M
@temp
M = D + M
@i
M = M + 1
D = M
@num2
D = D - M
@loop
D;JLT

//complete loop
@32768
D = M
@temp
D = D - M
@FINAL
D;JGT

@temp
D = M
@R2
M = D


(END)
@end
0;JMP

(FINAL)
@R2
M = 0
@END
0;JMP

