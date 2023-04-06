.equ CACTUS_COLOR1, 0x00
.equ CACTUS_COLOR2, 0x8000



doCactus1:
    // x1 -> x0
    // x2 -> y0
    // x10 -> Color

    sub 	sp,sp, #32    
	str 	x10, [sp, #24]   
	str 	x2, [sp, #16]   
	str 	x1, [sp, #8]   
	str 	x30, [sp, #0]   
	
    mov 	x8, x1
	mov 	x9, x2

	add 	x1, x8, #0
	add 	x2, x9, #36
	mov 	x3, #12
	mov 	x4, #36
	bl 		doRectangulo
	add 	x1, x8, #4
	add 	x2, x9, #32
	mov 	x3, #4
	mov 	x4, #4
	bl 		doRectangulo
	add 	x1, x8, #12
	add 	x2, x9, #68
	mov 	x3, #4
	mov 	x4, #4
	bl 		doRectangulo
	add 	x1, x8, #4
	add 	x2, x9, #72
	mov 	x3, #16
	mov 	x4, #4
	bl 		doRectangulo
	add 	x1, x8, #8
	add 	x2, x9, #76
	mov 	x3, #12
	mov 	x4, #4
	bl 		doRectangulo
	add 	x1, x8, #20
	add 	x2, x9, #4
	mov 	x3, #16
	mov 	x4, #104
	bl 		doRectangulo
	add 	x1, x8, #24
	add 	x2, x9, #0
	mov 	x3, #8
	mov 	x4, #4
	bl 		doRectangulo
    add 	x1, x8, #36
    add 	x2, x9, #68
	mov 	x3, #12
	mov 	x4, #8
	bl 		doRectangulo
	add 	x1, x8, #44
	add 	x2, x9, #28
	mov 	x3, #4
	mov 	x4, #40
	bl 		doRectangulo
	add 	x1, x8, #48
	add 	x2, x9, #24
	mov 	x3, #4
	mov 	x4, #48
	bl 		doRectangulo
    

	ldr 	x10, [sp, #24]   
	ldr 	x2, [sp, #16]   
	ldr 	x1,	[sp, #8]   
	ldr 	x30,[sp, #0] 
	add 	sp, sp, #32
	ret





doCactus2:
    // x1 -> x0
    // x2 -> y0
    // x10 -> Color

    sub 	sp,sp, #32    
	str 	x10, [sp, #24]   
	str 	x2, [sp, #16]   
	str 	x1, [sp, #8]   
	str 	x30, [sp, #0]   
	mov 	x8, x1
	mov 	x9, x2

	add 	x1, x8, #0
	add 	x2, x9, #60
	mov 	x3, #4
	mov 	x4, #28
	bl 		doRectangulo
	add 	x1, x8, #4
	add 	x2, x9, #84
	mov 	x3, #4
	mov 	x4, #4
	bl 		doRectangulo
	add 	x1, x8, #4
	add 	x2, x9, #88
	mov 	x3, #20
	mov 	x4, #4
	bl 		doRectangulo
	add 	x1, x8, #24
	add 	x2, x9, #64
	mov 	x3, #4
	mov 	x4, #24
	bl 		doRectangulo
	add 	x1, x8, #12
	add 	x2, x9, #48
	mov 	x3, #4
	mov 	x4, #60
	bl 		doRectangulo
	add 	x1, x8, #16
	add 	x2, x9, #52
	mov 	x3, #4
	mov 	x4, #56
	bl 		doRectangulo
	ldr 	x10, [sp, #24]   
	ldr 	x2, [sp, #16]   
	ldr 	x1,	[sp, #8]   
	ldr 	x30,[sp, #0] 
	add 	sp, sp, #32
	ret

doCactus3:
    // x1 -> x0
    // x2 -> y0
    // x10 -> Color

    sub 	sp,sp, #32    
	str 	x10, [sp, #24]   
	str 	x2, [sp, #16]   
	str 	x1, [sp, #8]   
	str 	x30, [sp, #0]   
	
    mov 	x8, x1
	mov 	x9, x2
	add 	x1, x8, #0
	add 	x2, x9, #44
	mov 	x3, #8
	mov 	x4, #32
	bl 		doRectangulo
	add 	x1, x8, #4
	add 	x2, x9, #72
	mov 	x3, #24
	mov 	x4, #8
	bl 		doRectangulo
	add 	x1, x8, #16
	add 	x2, x9, #8
	mov 	x3, #12
	mov 	x4, #100
	bl 		doRectangulo
	add 	x1, x8, #20
	add 	x2, x9, #4
	mov 	x3, #4
	mov 	x4, #4
	bl 		doRectangulo
	add 	x1, x8, #28
	add 	x2, x9, #44
	mov 	x3, #4
	mov 	x4, #8
	bl 		doRectangulo
	add 	x1, x8, #32
	add 	x2, x9, #20
	mov 	x3, #4
	mov 	x4, #32
	bl 		doRectangulo
	add 	x1, x8, #36
	add 	x2, x9, #16
	mov 	x3, #4
	mov 	x4, #32
	bl 		doRectangulo
	
	ldr 	x10, [sp, #24]   
	ldr 	x2, [sp, #16]   
	ldr 	x1,	[sp, #8]   
	ldr 	x30,[sp, #0] 
	add 	sp, sp, #32
	ret

.globl doCactusT
doCactusT:
	sub 	sp,sp, #16    
	str 	x18, [sp, #8]   
	str 	x30, [sp, #0]   
		
    movz 	x10, CACTUS_COLOR1, lsl 16
	movk 	x10, CACTUS_COLOR2, lsl 00


	cmp		x18, #2
	b.eq	doCactus2 	 
	cmp		x18, #3
	b.eq	doCactus3 	 

	b		doCactus1
		
cactusExit:

	ldr 	x18, [sp, #8] 
	ldr 	x30, [sp, #0] 
	add 	sp, sp, #8
	ret
