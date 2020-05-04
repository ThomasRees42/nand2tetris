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
(LOOP)
    @SCREEN
    D=A

    @i
    M=D

    @KBD
    D=M

    @BLACK
    D;JNE

    @colour
    M=0

    @FILL
    0;JMP
    
(BLACK)
    
    @colour
    M=-1

(FILL)

    @colour
    D=M

    @i
    A=M
    M=D
    
    @i
    M=M+1
    D=M

    @KBD
    D=D-A

    @FILL
    D;JNE

(UNPRESSED)
    @LOOP
    0;JMP


