.equ NUMBER_COLOR1, 0x00
.equ NUMBER_COLOR2, 0x0000



n_0:

    sub 	sp,sp, #32    
	str 	x10, [sp, #24]   
	str 	x2, [sp, #16]   
	str 	x1, [sp, #8]   
	str 	x30, [sp, #0]   
	
    mov 	x8, x1
	mov 	x9, x2

	add 	x1, x8, #0
	add 	x2, x9, #0
	mov 	x3, #12
	mov 	x4, #4
	bl 		doRectangulo
	add 	x1, x8, #0
	add 	x2, x9, #12
	mov 	x3, #12
	mov 	x4, #4
	bl 		doRectangulo
	add 	x1, x8, #0
	add 	x2, x9, #0
	mov 	x3, #4
	mov 	x4, #16
	bl 		doRectangulo
	add 	x1, x8, #8
	add 	x2, x9, #0
	mov 	x3, #4
	mov 	x4, #16
	bl 		doRectangulo

	ldr 	x10, [sp, #24]   
	ldr 	x2, [sp, #16]   
	ldr 	x1,	[sp, #8]   
	ldr 	x30,[sp, #0] 
	add 	sp, sp, #32
	b 		cifra

n_1:

    sub 	sp,sp, #32    
	str 	x10, [sp, #24]   
	str 	x2, [sp, #16]   
	str 	x1, [sp, #8]   
	str 	x30, [sp, #0]   
	
    mov 	x8, x1
	mov 	x9, x2

	add 	x1, x8, #0
	add 	x2, x9, #0
	mov 	x3, #8
	mov 	x4, #4
	bl 		doRectangulo
	add 	x1, x8, #4
	add 	x2, x9, #0
	mov 	x3, #4
	mov 	x4, #20
	bl 		doRectangulo
	add 	x1, x8, #0
	add 	x2, x9, #16
	mov 	x3, #12
	mov 	x4, #4
	bl 		doRectangulo

	ldr 	x10, [sp, #24]   
	ldr 	x2, [sp, #16]   
	ldr 	x1,	[sp, #8]   
	ldr 	x30,[sp, #0] 
	add 	sp, sp, #32
	b 		cifra

n_2:

    sub 	sp,sp, #32    
	str 	x10, [sp, #24]   
	str 	x2, [sp, #16]   
	str 	x1, [sp, #8]   
	str 	x30, [sp, #0]   
	
    mov 	x8, x1
	mov 	x9, x2

	add 	x1, x8, #0
	add 	x2, x9, #0
	mov 	x3, #12
	mov 	x4, #4
	bl 		doRectangulo
	add 	x1, x8, #0
	add 	x2, x9, #8
	mov 	x3, #12
	mov 	x4, #4
	bl 		doRectangulo
	add 	x1, x8, #0
	add 	x2, x9, #16
	mov 	x3, #12
	mov 	x4, #4
	bl 		doRectangulo
	add 	x1, x8, #8
	add 	x2, x9, #4
	mov 	x3, #4
	mov 	x4, #4
	bl 		doRectangulo
	add 	x1, x8, #0
	add 	x2, x9, #12
	mov 	x3, #4
	mov 	x4, #4
	bl 		doRectangulo

	ldr 	x10, [sp, #24]   
	ldr 	x2, [sp, #16]   
	ldr 	x1,	[sp, #8]   
	ldr 	x30,[sp, #0] 
	add 	sp, sp, #32
	b  		cifra

n_3:

    sub 	sp,sp, #32    
	str 	x10, [sp, #24]   
	str 	x2, [sp, #16]   
	str 	x1, [sp, #8]   
	str 	x30, [sp, #0]   
	
    mov 	x8, x1
	mov 	x9, x2

	add 	x1, x8, #0
	add 	x2, x9, #0
	mov 	x3, #12
	mov 	x4, #4
	bl 		doRectangulo
	add 	x1, x8, #4
	add 	x2, x9, #8
	mov 	x3, #8
	mov 	x4, #4
	bl 		doRectangulo
	add 	x1, x8, #0
	add 	x2, x9, #16
	mov 	x3, #12
	mov 	x4, #4
	bl 		doRectangulo
	add 	x1, x8, #8
	add 	x2, x9, #4
	mov 	x3, #4
	mov 	x4, #4
	bl 		doRectangulo
	add 	x1, x8, #8
	add 	x2, x9, #12
	mov 	x3, #4
	mov 	x4, #4
	bl 		doRectangulo

    ldr 	x10, [sp, #24]   
	ldr 	x2, [sp, #16]   
	ldr 	x1,	[sp, #8]   
	ldr 	x30,[sp, #0] 
	add 	sp, sp, #32
	b 		cifra

n_4:

    sub 	sp,sp, #32    
	str 	x10, [sp, #24]   
	str 	x2, [sp, #16]   
	str 	x1, [sp, #8]   
	str 	x30, [sp, #0]   
	
    mov 	x8, x1
	mov 	x9, x2

	add 	x1, x8, #0
	add 	x2, x9, #0
	mov 	x3, #4
	mov 	x4, #12
    bl      doRectangulo
	add 	x1, x8, #8
	add 	x2, x9, #0
	mov 	x3, #4
	mov 	x4, #20
    bl      doRectangulo
	add 	x1, x8, #4
	add 	x2, x9, #8
	mov 	x3, #4
	mov 	x4, #4
    bl      doRectangulo

    ldr 	x10, [sp, #24]   
	ldr 	x2, [sp, #16]   
	ldr 	x1,	[sp, #8]   
	ldr 	x30,[sp, #0] 
	add 	sp, sp, #32
	b 		cifra     

n_5:

    sub 	sp,sp, #32    
	str 	x10, [sp, #24]   
	str 	x2, [sp, #16]   
	str 	x1, [sp, #8]   
	str 	x30, [sp, #0]   
	
    mov 	x8, x1
	mov 	x9, x2

	add 	x1, x8, #0
	add 	x2, x9, #0
	mov 	x3, #12
	mov 	x4, #4
    bl      doRectangulo
	add 	x1, x8, #0
	add 	x2, x9, #8
	mov 	x3, #12
	mov 	x4, #4
    bl      doRectangulo
	add 	x1, x8, #0
	add 	x2, x9, #16
	mov 	x3, #12
	mov 	x4, #4
    bl      doRectangulo
	add 	x1, x8, #0
	add 	x2, x9, #4
	mov 	x3, #4
	mov 	x4, #4
    bl      doRectangulo
	add 	x1, x8, #8
	add 	x2, x9, #12
	mov 	x3, #4
	mov 	x4, #4
    bl      doRectangulo

    ldr 	x10, [sp, #24]   
	ldr 	x2, [sp, #16]   
	ldr 	x1,	[sp, #8]   
	ldr 	x30,[sp, #0] 
	add 	sp, sp, #32
	b 		cifra     

n_6:

    sub 	sp,sp, #32    
	str 	x10, [sp, #24]   
	str 	x2, [sp, #16]   
	str 	x1, [sp, #8]   
	str 	x30, [sp, #0]   
	
    mov 	x8, x1
	mov 	x9, x2

	add 	x1, x8, #0
	add 	x2, x9, #0
	mov 	x3, #12
	mov 	x4, #4
    bl      doRectangulo
	add 	x1, x8, #0
	add 	x2, x9, #8
	mov 	x3, #12
	mov 	x4, #4
    bl      doRectangulo
	add 	x1, x8, #0
	add 	x2, x9, #16
	mov 	x3, #12
	mov 	x4, #4
    bl      doRectangulo
	add 	x1, x8, #0
	add 	x2, x9, #4
	mov 	x3, #4
	mov 	x4, #4
    bl      doRectangulo
	add 	x1, x8, #8
	add 	x2, x9, #12
	mov 	x3, #4
	mov 	x4, #4
    bl      doRectangulo
	add 	x1, x8, #0
	add 	x2, x9, #12
	mov 	x3, #4
	mov 	x4, #4
    bl      doRectangulo

    ldr 	x10, [sp, #24]   
	ldr 	x2, [sp, #16]   
	ldr 	x1,	[sp, #8]   
	ldr 	x30,[sp, #0] 
	add 	sp, sp, #32
	b 		cifra     

n_7:

    sub 	sp,sp, #32    
	str 	x10, [sp, #24]   
	str 	x2, [sp, #16]   
	str 	x1, [sp, #8]   
	str 	x30, [sp, #0]   
	
    mov 	x8, x1
	mov 	x9, x2

	add 	x1, x8, #0
	add 	x2, x9, #0
	mov 	x3, #12
	mov 	x4, #4
    bl      doRectangulo
	add 	x1, x8, #8
	add 	x2, x9, #0
	mov 	x3, #4
	mov 	x4, #20
    bl      doRectangulo
	
    ldr 	x10, [sp, #24]   
	ldr 	x2, [sp, #16]   
	ldr 	x1,	[sp, #8]   
	ldr 	x30,[sp, #0] 
	add 	sp, sp, #32
	b		cifra     

n_8:

    sub 	sp,sp, #32    
	str 	x10, [sp, #24]   
	str 	x2, [sp, #16]   
	str 	x1, [sp, #8]   
	str 	x30, [sp, #0]   
	
    mov 	x8, x1
	mov 	x9, x2

	add 	x1, x8, #0
	add 	x2, x9, #0
	mov 	x3, #12
	mov 	x4, #4
    bl      doRectangulo
	add 	x1, x8, #0
	add 	x2, x9, #8
	mov 	x3, #12
	mov 	x4, #4
    bl      doRectangulo
	add 	x1, x8, #0
	add 	x2, x9, #16
	mov 	x3, #12
	mov 	x4, #4
    bl      doRectangulo
	add 	x1, x8, #0
	add 	x2, x9, #4
	mov 	x3, #4
	mov 	x4, #4
    bl      doRectangulo
	add 	x1, x8, #8
	add 	x2, x9, #12
	mov 	x3, #4
	mov 	x4, #4
    bl      doRectangulo
	add 	x1, x8, #0
	add 	x2, x9, #12
	mov 	x3, #4
	mov 	x4, #4
    bl      doRectangulo
	add 	x1, x8, #8
	add 	x2, x9, #4
	mov 	x3, #4
	mov 	x4, #4
    bl      doRectangulo

    ldr 	x10, [sp, #24]   
	ldr 	x2, [sp, #16]   
	ldr 	x1,	[sp, #8]   
	ldr 	x30,[sp, #0] 
	add 	sp, sp, #32
	b		cifra     

n_9:

    sub 	sp,sp, #32    
	str 	x10, [sp, #24]   
	str 	x2, [sp, #16]   
	str 	x1, [sp, #8]   
	str 	x30, [sp, #0]   
	
    mov 	x8, x1
	mov 	x9, x2

	add 	x1, x8, #0
	add 	x2, x9, #0
	mov 	x3, #12
	mov 	x4, #4
    bl      doRectangulo
	add 	x1, x8, #0
	add 	x2, x9, #8
	mov 	x3, #8
	mov 	x4, #4
    bl      doRectangulo
	add 	x1, x8, #0
	add 	x2, x9, #4
	mov 	x3, #4
	mov 	x4, #4
    bl      doRectangulo
	add 	x1, x8, #8
	add 	x2, x9, #0
	mov 	x3, #4
	mov 	x4, #20
    bl      doRectangulo

    ldr 	x10, [sp, #24]   
	ldr 	x2, [sp, #16]   
	ldr 	x1,	[sp, #8]   
	ldr 	x30,[sp, #0] 
	add 	sp, sp, #32
	b		cifra     

cifra: 
	


.globl doNumber
doNumber:
    // utiliza los  1,2,8,9,10, 12, 13, 14, 15, 16, 17
    // modifica x8, x9

	mov x5, 0 	//utilizo para determinar en que cifra estoy

    sub 	sp,sp, #32    
	str 	x30, [sp, #0]   
	str 	x1,  [sp, #8]   
	str 	x2,  [sp, #16]   
	str 	x10, [sp, #24]   
	
    mov 	x8, x1
	mov 	x9, x2

    movz 	x10, NUMBER_COLOR1, lsl 16
	movk 	x10, NUMBER_COLOR2, lsl 00


    mov     x18, 4
    mov     x19, 8


    cmp		x18, #0
	b.eq	n_0 	 
    cmp		x18, #1
	b.eq	n_1 	 
    cmp		x18, #2
	b.eq	n_2 	 
    cmp		x18, #3
	b.eq	n_3 
    cmp		x18, #4
	b.eq	n_4 	 
    cmp		x18, #5
	b.eq	n_5 	 
    cmp		x18, #6
	b.eq	n_6	 
    cmp		x18, #7
	b.eq	n_7 	 
    cmp		x18, #8
	b.eq	n_8 	 
    cmp		x18, #9
	b.eq	n_9 	 
    
