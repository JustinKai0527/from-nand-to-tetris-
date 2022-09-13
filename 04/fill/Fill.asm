// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

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
M = D

@i
M = D

(LOOP)

@color
D = M

@arr
A = M
M = D

@i
M = M + 1
D = M

@arr
M = D

@KBD
D = D - A

@LOOP
D;JLT

@CHECK
0;JMP