.equ CLOUD_COLOR1, 0xff
.equ CLOUD_COLOR2, 0xffff


.globl doCloud
doCloud:
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
	movz 	x10, CLOUD_COLOR1, lsl 16
	movk 	x10, CLOUD_COLOR2, lsl 00
	add 	x1, x8, #0
	add 	x2, x9, #48
	mov 	x3, #8
	mov 	x4, #4
	bl 		doRectangulo
    add 	x1, x8, #4
	add 	x2, x9, #44
	mov 	x3, #8
	mov 	x4, #4
	bl 		doRectangulo
    add 	x1, x8, #16
	add 	x2, x9, #44
	mov 	x3, #8
	mov 	x4, #4
	bl 		doRectangulo
    add 	x1, x8, #20
	add 	x2, x9, #36
	mov 	x3, #8
	mov 	x4, #4
	bl 		doRectangulo
    add 	x1, x8, #20
	add 	x2, x9, #40
	mov 	x3, #4
	mov 	x4, #4
	bl 		doRectangulo
    add 	x1, x8, #24
	add 	x2, x9, #32
	mov 	x3, #32
	mov 	x4, #4
	bl 		doRectangulo
    add 	x1, x8, #52
	add 	x2, x9, #28
	mov 	x3, #8
	mov 	x4, #4
	bl 		doRectangulo
    add 	x1, x8, #56
	add 	x2, x9, #24
	mov 	x3, #16
	mov 	x4, #4
	bl 		doRectangulo
    add 	x1, x8, #68
	add 	x2, x9, #12
	mov 	x3, #4
	mov 	x4, #12
	bl 		doRectangulo
    add 	x1, x8, #72
	add 	x2, x9, #12
	mov 	x3, #8
	mov 	x4, #4
	bl 		doRectangulo
    add 	x1, x8, #76
	add 	x2, x9, #8
	mov 	x3, #8
	mov 	x4, #4
	bl 		doRectangulo
    add 	x1, x8, #80
	add 	x2, x9, #4
	mov 	x3, #24
	mov 	x4, #4
	bl 		doRectangulo
    add 	x1, x8, #100
	add 	x2, x9, #0
	mov 	x3, #16
	mov 	x4, #4
	bl 		doRectangulo
    add 	x1, x8, #112
	add 	x2, x9, #4
	mov 	x3, #12
	mov 	x4, #4
	bl 		doRectangulo
    add 	x1, x8, #120
	add 	x2, x9, #8
	mov 	x3, #8
	mov 	x4, #4
	bl 		doRectangulo
    add 	x1, x8, #120
	add 	x2, x9, #24
	mov 	x3, #4
	mov 	x4, #4
	bl 		doRectangulo
    add 	x1, x8, #124
	add 	x2, x9, #12
	mov 	x3, #4
	mov 	x4, #12
	bl 		doRectangulo
    add 	x1, x8, #128
	add 	x2, x9, #16
	mov 	x3, #12
	mov 	x4, #4
	bl 		doRectangulo
    add 	x1, x8, #136
	add 	x2, x9, #20
	mov 	x3, #24
	mov 	x4, #4
	bl 		doRectangulo
    add 	x1, x8, #156
	add 	x2, x9, #24
	mov 	x3, #4
	mov 	x4, #8
	bl 		doRectangulo
    add 	x1, x8, #160
	add 	x2, x9, #28
	mov 	x3, #12
	mov 	x4, #4
	bl 		doRectangulo
    add 	x1, x8, #168
	add 	x2, x9, #32
	mov 	x3, #4
	mov 	x4, #4
	bl 		doRectangulo
    add 	x1, x8, #168
	add 	x2, x9, #36
	mov 	x3, #12
	mov 	x4, #4
	bl 		doRectangulo
    add 	x1, x8, #176
	add 	x2, x9, #40
	mov 	x3, #4
	mov 	x4, #4
	bl 		doRectangulo
    add 	x1, x8, #180
	add 	x2, x9, #44
	mov 	x3, #4
	mov 	x4, #4
	bl 		doRectangulo
    add 	x1, x8, #36
	add 	x2, x9, #44
	mov 	x3, #4
	mov 	x4, #4
	bl 		doRectangulo
    add 	x1, x8, #40
	add 	x2, x9, #48
	mov 	x3, #144
	mov 	x4, #4
	bl 		doRectangulo

	ldr 	x10, [sp, #24]   
	ldr 	x2, [sp, #16]   
	ldr 	x1,	[sp, #8]   
	ldr 	x30,[sp, #0] 
	add 	sp, sp, #32
	ret

