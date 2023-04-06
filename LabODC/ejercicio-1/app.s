
.equ SCREEN_WIDTH, 		640
.equ SCREEN_HEIGH, 		480
.equ BITS_PER_PIXEL,  	32


.equ SKY_COLOR1, 		0x76
.equ SKY_COLOR2, 		0xadd0

.equ FLOOR_COLOR1,		0xf3
.equ FLOOR_COLOR2,		0xd3ad

.globl main
main:
	// X0 contiene la direccion base del framebuffer
 	mov x20, x0	// Save framebuffer base address to x20


	movz 	x10, SKY_COLOR1, lsl 16
	movk 	x10, SKY_COLOR2, lsl 00
	mov 	x1, #0
	mov 	x2, #0
	mov 	x3, #640
	mov 	x4, #480
	bl 		doRectangulo

	mov		x1, #320
	mov		x2, #286
	bl		doMountain

	movz 	x10, FLOOR_COLOR1, lsl 16
	movk 	x10, FLOOR_COLOR2, lsl 00
	mov 	x1, #0
	mov 	x2, #480-150
	mov 	x3, #640
	mov 	x4, #150
	bl 		doRectangulo

	mov		x1, #100
	mov		x2, #270
	mov		x19, #1
	bl 		doDinoT
	
	mov 	x1, #300
	mov 	x2, #250
	mov 	x18, #1
	bl 		doCactusT

	mov		x1, #100
	mov		x2, #400
	bl		doStone

	mov		x1, #400
	mov		x2, #250
	mov		x18, #2
	bl 		doCactusT

	mov 	x1, #500
	mov 	x2, #250		
	mov 	x18, #3
	bl 		doCactusT

	mov 	x1, #400
	mov 	x2, #100
	bl 		doCloud	

	mov 	x1, #200
	mov 	x2, #50
	bl 		doMeteorite


	// Infinite Loop
EndLopp:
	b 		EndLopp

