
.equ COLOR_DINO_BODY1,  0x00
.equ COLOR_DINO_BODY2,  0x8f39
.equ COLOR_DINO_EYE,  0xffff


doDinoUpperBodyBASE:
	sub 	sp,sp, #8    
	str 	x30, [sp]   

	mov 	x8, x1
	mov 	x9, x2

	add 	x1, x8, #48
	add 	x2, x9, #4
	mov 	x3, #8
	mov 	x4, #8
	bl 		doRectangulo
	add 	x1, x1, #0
	add 	x2, x9, #32
	mov 	x3, #4	
	mov 	x4, #24	
	bl 		doRectangulo
	add 	x1, x8, #4
	add 	x2, x9, #40
	mov 	x3, #4	
	mov 	x4, #20
	bl 		doRectangulo
	add 	x1, x8, #8
	add 	x2, x9, #44
	mov 	x3, #4	
	mov 	x4, #20
	bl 		doRectangulo
	add 	x1, x8, #12
	add 	x2, x9, #48
	mov 	x3, #4	
	mov 	x4, #20
	bl 		doRectangulo
	add 	x1, x8, #16
	add 	x2, x9, #48
	mov 	x3, #24	
	mov 	x4, #20
	bl 		doRectangulo
	add 	x1, x8, #16
	add 	x2, x9, #68
	mov 	x3, #28	
	mov 	x4, #4
	bl 		doRectangulo
	add 	x1, x8, #40
	add 	x2, x9, #4
	mov 	x3, #8	
	mov 	x4, #64
	bl 		doRectangulo
	add 	x1, x8, #44
	add 	x2, x9, #0
	mov 	x3, #32
	mov 	x4, #4
	bl 		doRectangulo
	add 	x1, x8, #48
	add 	x2, x9, #12
	mov 	x3, #4
	mov 	x4, #52
	bl 		doRectangulo
	add 	x1, x8, #56
	add 	x2, x9, #4	
	mov 	x3, #24
	mov 	x4, #20
	bl 		doRectangulo
	add 	x1, x8, #36
	add 	x2, x9, #32
	mov 	x3, #4
	mov 	x4, #4
	bl 		doRectangulo
	add 	x1, x8, #20
	add 	x2, x9, #44
	mov 	x3, #20
	mov 	x4, #4
	bl 		doRectangulo
	add 	x1, x8, #24
	add 	x2, x9, #40
	mov 	x3, #16
	mov 	x4, #4
	bl 		doRectangulo
	add 	x1, x8, #32
	add 	x2, x9, #36
	mov 	x3, #8
	mov 	x4, #4
	bl 		doRectangulo
	add 	x1, x8, #52
	add 	x2, x9, #12
	mov 	x3, #4
	mov 	x4, #44
	bl 		doRectangulo
	add 	x1, x8, #56
	add 	x2, x9, #24
	mov 	x3, #4
	mov 	x4, #8
	bl 		doRectangulo
	add 	x1, x8, #60
	add 	x2, x9, #28
	mov 	x3, #12
	mov 	x4, #4
	bl 		doRectangulo
	add 	x1, x8, #56
	add 	x2, x9, #40
	mov 	x3, #8
	mov 	x4, #4
	bl 		doRectangulo
	add 	x1, x8, #60
	add 	x2, x9, #44
	mov 	x3, #4
	mov 	x4, #4
	bl 		doRectangulo
	mov 	x1,x8
	mov 	x2,x9
	
	ldr 	x30, [sp] 
	add 	sp, sp, #8
	
	ret 


doDinoUpperBody1:
	sub 	sp,sp, #32    
	str 	x10, [sp, #24]   
	str 	x2, [sp, #16]   
	str 	x1, [sp, #8]   
	str 	x30, [sp, #0]   
	mov 	x8, x1
	mov 	x9, x2
	bl doDinoUpperBodyBASE
	movz 	x10, COLOR_DINO_EYE, lsl 16
	movk 	x10, COLOR_DINO_EYE, lsl 00
	add 	x1, x8, #48
	add 	x2, x9, #4
	mov 	x3, #4
	mov 	x4, #4
	bl 		doRectangulo
	ldr 	x10, [sp, #24]   
	ldr 	x2, [sp, #16]   
	ldr 	x1,	[sp, #8]   
	ldr 	x30,[sp, #0] 
	add 	sp, sp, #32
	ret

doDinoUpperBody2:
	sub 	sp,sp, #32    
	str 	x10, [sp, #24]   
	str 	x2, [sp, #16]   
	str 	x1, [sp, #8]   
	str 	x30, [sp, #0]   
	mov 	x8, x1
	mov 	x9, x2
	bl doDinoUpperBodyBASE

	movz 	x10, COLOR_DINO_EYE, lsl 16
	movk 	x10, COLOR_DINO_EYE, lsl 00
	add 	x1, x8, #48
	add 	x2, x9, #4
	mov 	x3, #8
	mov 	x4, #8
	bl 		doRectangulo
	movz 	x10, COLOR_DINO_BODY1, lsl 16
	movk 	x10, COLOR_DINO_BODY2, lsl 00
	add 	x1, x8, #60
	add 	x2, x9, #24
	mov 	x3, #20
	mov 	x4, #4
	bl 		doRectangulo

	ldr 	x10, [sp, #24]   
	ldr 	x2, [sp, #16]   
	ldr 	x1,	[sp, #8]   
	ldr 	x30,[sp, #0] 
	add 	sp, sp, #32
	ret


doDinoLowerBody1:
	sub 	sp,sp, #32    
	str 	x10, [sp, #24]   
	str 	x2, [sp, #16]   
	str 	x1, [sp, #8]   
	str 	x30, [sp, #0]   
	mov 	x8, x1
	mov 	x9, x2
	movz 	x10, COLOR_DINO_BODY1, lsl 16
	movk 	x10, COLOR_DINO_BODY2, lsl 00
	add 	x1, x8, #20
	add 	x2, x9, #72
	mov 	x3, #12
	mov 	x4, #4
	bl 		doRectangulo
	add 	x1, x8, #20
	add 	x2, x9, #76
	mov 	x3, #8
	mov 	x4, #4
	bl 		doRectangulo
	add 	x1, x8, #20
	add 	x2, x9, #80
	mov 	x3, #4
	mov 	x4, #8
	bl 		doRectangulo
	add 	x1, x8, #24
	add 	x2, x9, #84
	mov 	x3, #4
	mov 	x4, #4
	bl 		doRectangulo
	add 	x1, x8, #36
	add 	x2, x9, #72
	mov 	x3, #4
	mov 	x4, #4
	bl 		doRectangulo
	add 	x1, x8, #40
	add 	x2, x9, #72
	mov 	x3, #4
	mov 	x4, #16
	bl 		doRectangulo
	add 	x1, x8, #44
	add 	x2, x9, #84
	mov 	x3, #4
	mov 	x4, #4
	bl 		doRectangulo
	ldr 	x10, [sp, #24]   
	ldr 	x2, [sp, #16]   
	ldr 	x1,	[sp, #8]   
	ldr 	x30,[sp, #0] 
	add 	sp, sp, #32
	ret

doDinoLowerBody2:
	sub 	sp,sp, #32    
	str 	x10, [sp, #24]   
	str 	x2, [sp, #16]   
	str 	x1, [sp, #8]   
	str 	x30, [sp, #0]   
	mov 	x8, x1
	mov 	x9, x2
	movz 	x10, COLOR_DINO_BODY1, lsl 16
	movk 	x10, COLOR_DINO_BODY2, lsl 00
	add 	x1, x8, #20
	add 	x2, x9, #72
	mov 	x3, #12
	mov 	x4, #4
	bl 		doRectangulo
	add 	x1, x8, #20
	add 	x2, x9, #76
	mov 	x3, #8
	mov 	x4, #4
	bl 		doRectangulo
	add 	x1, x8, #20
	add 	x2, x9, #80
	mov 	x3, #4
	mov 	x4, #8
	bl 		doRectangulo
	add 	x1, x8, #24
	add 	x2, x9, #84
	mov 	x3, #4
	mov 	x4, #4
	bl 		doRectangulo
	add 	x1, x8, #40
	add 	x2, x9, #72
	mov 	x3, #8
	mov 	x4, #4
	bl 		doRectangulo
	ldr 	x10, [sp, #24]   
	ldr 	x2, [sp, #16]   
	ldr 	x1,	[sp, #8]   
	ldr 	x30,[sp, #0] 
	add 	sp, sp, #32
	ret

doDinoLowerBody3:
	sub 	sp,sp, #32    
	str 	x10, [sp, #24]   
	str 	x2, [sp, #16]   
	str 	x1, [sp, #8]   
	str 	x30, [sp, #0]   
	mov 	x8, x1
	mov 	x9, x2
	movz 	x10, COLOR_DINO_BODY1, lsl 16
	movk 	x10, COLOR_DINO_BODY2, lsl 00
	add 	x1, x8, #36
	add 	x2, x9, #72
	mov 	x3, #4
	mov 	x4, #4
	bl 		doRectangulo
	add 	x1, x8, #20
	add 	x2, x9, #72
	mov 	x3, #8
	mov 	x4, #4
	bl 		doRectangulo
	add 	x1, x8, #24
	add 	x2, x9, #76
	mov 	x3, #8
	mov 	x4, #4
	bl 		doRectangulo
	add 	x1, x8, #40
	add 	x2, x9, #72
	mov 	x3, #4
	mov 	x4, #16
	bl 		doRectangulo
	add 	x1, x8, #44
	add 	x2, x9, #84
	mov 	x3, #4
	mov 	x4, #4
	bl 		doRectangulo
	ldr 	x10, [sp, #24]   
	ldr 	x2, [sp, #16]   
	ldr 	x1,	[sp, #8]   
	ldr 	x30,[sp, #0] 
	add 	sp, sp, #32
	ret

doDino1:

	sub 	sp,sp, #8    
	str 	x30, [sp]   
	movz 	x10, COLOR_DINO_BODY1, lsl 16
	movk 	x10, COLOR_DINO_BODY2, lsl 00
	bl 		doDinoUpperBody1
	bl 		doDinoLowerBody1
	ldr 	x30, [sp] 
	add 	sp, sp, #8
	ret	

doDino2:

	sub 	sp,sp, #8    
	str 	x30, [sp]   
	movz 	x10, COLOR_DINO_BODY1, lsl 16
	movk 	x10, COLOR_DINO_BODY2, lsl 00
	bl 		doDinoUpperBody1
	bl 		doDinoLowerBody2
	ldr 	x30, [sp] 
	add 	sp, sp, #8
	ret	

doDino3:

	sub 	sp,sp, #8    
	str 	x30, [sp]   
	movz 	x10, COLOR_DINO_BODY1, lsl 16
	movk 	x10, COLOR_DINO_BODY2, lsl 00
	bl 		doDinoUpperBody1
	bl 		doDinoLowerBody3
	ldr 	x30, [sp] 
	add 	sp, sp, #8
	ret	

doDino4:

	sub 	sp,sp, #8    
	str 	x30, [sp]   
	movz 	x10, COLOR_DINO_BODY1, lsl 16
	movk 	x10, COLOR_DINO_BODY2, lsl 00
	bl 		doDinoUpperBody2
	bl 		doDinoLowerBody1
	ldr 	x30, [sp] 
	add 	sp, sp, #8
	ret	

.globl doDinoT
doDinoT:

	sub 	sp,sp, #16    
	str 	x19, [sp, #8]   
	str 	x30, [sp, #0]   
	cmp		x19, #2
	b.eq	doDino2 	 
	b.eq 	dinoExit
	cmp		x19, #3
	b.eq	doDino3 	 
	b.eq 	dinoExit
	cmp		x19, #4
	b.eq	doDino4 	 
	b.eq 	dinoExit
	b	doDino1 
		
dinoExit:

	ldr 	x19, [sp, #8] 
	ldr 	x30, [sp, #0] 
	add 	sp, sp, #8
	ret
