.equ SCREEN_WIDTH, 		640
.equ SCREEN_HEIGH, 		480
.equ BITS_PER_PIXEL,  	32


.globl doRectangulo
doRectangulo:  
// x1 -> x0
// x2 -> y0
// x3 -> ancho
// x4 -> alto
// x10 -> color


drawRow: 
	mov		x5, #SCREEN_WIDTH
	mul		x5, x2, x5

	//cmp		x1, #0
	//b.lt	fixsub

endfixsub:
	add		x5, x5, x1
	lsl		x5, x5, #2
	add		x5, x5, x20		//	x5 guardo (0,0) del cuadr		//x20 (0,0) del frambufer
	mov		x6, x3			// 	x6 copia ancho

	add		x22, x6, x1		// x9 tengo el punto final pasado de la raya
	cmp		x22, SCREEN_WIDTH
	b.gt	fixover

				

drawCol:
	stur	w10, [x5]		// xn registro de 64bit, wn de 32
	add		x5, x5, #4
	sub		x6, x6, #1
	cbnz 	x6, drawCol
	add 	x2, x2, #1
	sub 	x4, x4, #1
	cbnz 	x4, drawRow
end:	
	ret

fixover:
	mov		x7, SCREEN_WIDTH
	sub		x8, x9, x7 
	sub		x6, x6, x8
	b 		drawCol

fixsub:
	add		x3, x3, x1
	mov		x1, #0
	b 		endfixsub
