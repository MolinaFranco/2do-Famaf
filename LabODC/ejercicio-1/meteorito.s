.equ YELLOW1, 0xff
.equ YELLOW2, 0xef08
.equ ORANGE1, 0xff
.equ ORANGE2, 0x9214
.equ ORANGE_DARK1, 0xde
.equ ORANGE_DARK2, 0x8123
.equ DARK_BROWN1, 0x4a
.equ DARK_BROWN2, 0x3917
.equ BROWN1, 0x78
.equ BROWN2, 0x5c25
.equ LIGHT_BROWN1, 0x91
.equ LIGHT_BROWN2, 0x6f2d

.globl doMeteorite
doMeteorite:
    // x1 -> x0
    // x2 -> y0
    // x10 -> Color

doYellowFire:
    sub 	sp,sp, #32    
	str 	x10, [sp, #24]   
	str 	x2, [sp, #16]   
	str 	x1, [sp, #8]   
	str 	x30, [sp, #0]
    mov 	x8, x1
	mov 	x9, x2
    movz 	x10, YELLOW1, lsl 16
	movk 	x10, YELLOW2, lsl 00
	add 	x1, x8, #0
	add 	x2, x9, #0
	mov 	x3, #4
	mov 	x4, #4
	bl 		doRectangulo
    sub 	x1, x8, #8
	add 	x2, x9, #4
	mov 	x3, #12
	mov 	x4, #4
	bl 		doRectangulo
    sub 	x1, x8, #32
	add 	x2, x9, #8
	mov 	x3, #32
	mov 	x4, #4
	bl 		doRectangulo
    sub 	x1, x8, #40
	add 	x2, x9, #12
	mov 	x3, #36
	mov 	x4, #4
	bl 		doRectangulo
    sub 	x1, x8, #56
	add 	x2, x9, #16
	mov 	x3, #52
	mov 	x4, #4
	bl 		doRectangulo
    sub 	x1, x8, #68
	add 	x2, x9, #20
	mov 	x3, #60
	mov 	x4, #4
	bl 		doRectangulo
    sub 	x1, x8, #72
	add 	x2, x9, #24
	mov 	x3, #56
	mov 	x4, #4
	bl 		doRectangulo
    sub 	x1, x8, #76
	add 	x2, x9, #28
	mov 	x3, #60
	mov 	x4, #8
	bl 		doRectangulo
    sub 	x1, x8, #76
	add 	x2, x9, #36
	mov 	x3, #56
	mov 	x4, #8
	bl 		doRectangulo
    sub 	x1, x8, #76
	add 	x2, x9, #44
	mov 	x3, #52
	mov 	x4, #4
	bl 		doRectangulo
    sub 	x1, x8, #76
	add 	x2, x9, #48
	mov 	x3, #48
	mov 	x4, #4
	bl 		doRectangulo
    sub 	x1, x8, #76
	add 	x2, x9, #52
	mov 	x3, #44
	mov 	x4, #8
	bl 		doRectangulo
    sub 	x1, x8, #76
	add 	x2, x9, #60
	mov 	x3, #40
	mov 	x4, #4
	bl 		doRectangulo
    sub 	x1, x8, #76
	add 	x2, x9, #64
	mov 	x3, #36
	mov 	x4, #4
	bl 		doRectangulo
    
    ldr 	x10, [sp, #24]   
	ldr 	x2, [sp, #16]   
	ldr 	x1,	[sp, #8]   
	ldr 	x30,[sp, #0] 
	add 	sp, sp, #32

doOrangeFire:
    sub 	sp,sp, #32    
	str 	x10, [sp, #24]   
	str 	x2, [sp, #16]   
	str 	x1, [sp, #8]   
	str 	x30, [sp, #0]
    mov 	x8, x1
	mov 	x9, x2
    movz 	x10, ORANGE1, lsl 16
	movk 	x10, ORANGE2, lsl 00
    sub 	x1, x8, #24
	add 	x2, x9, #12
	mov 	x3, #8
	mov 	x4, #4
	bl 		doRectangulo
    sub 	x1, x8, #28
	add 	x2, x9, #16
	mov 	x3, #8
	mov 	x4, #4
	bl 		doRectangulo
    sub 	x1, x8, #32
	add 	x2, x9, #20
	mov 	x3, #16
	mov 	x4, #4
	bl 		doRectangulo
    sub 	x1, x8, #44
	add 	x2, x9, #24
	mov 	x3, #24
	mov 	x4, #4
	bl 		doRectangulo
    sub 	x1, x8, #48
	add 	x2, x9, #28
	mov 	x3, #24
	mov 	x4, #4
	bl 		doRectangulo
    sub 	x1, x8, #48
	add 	x2, x9, #32
	mov 	x3, #20
	mov 	x4, #4
	bl 		doRectangulo
    sub 	x1, x8, #44
	add 	x2, x9, #36
	mov 	x3, #12
	mov 	x4, #4
	bl 		doRectangulo
    sub 	x1, x8, #40
	add 	x2, x9, #40
	mov 	x3, #4
	mov 	x4, #8
	bl 		doRectangulo
    movz 	x10, ORANGE_DARK1, lsl 16
	movk 	x10, ORANGE_DARK2, lsl 00
    sub 	x1, x8, #72
	add 	x2, x9, #32
	mov 	x3, #24
	mov 	x4, #4
	bl 		doRectangulo
    sub 	x1, x8, #72
	add 	x2, x9, #36
	mov 	x3, #28
	mov 	x4, #4
	bl 		doRectangulo
    sub 	x1, x8, #76
	add 	x2, x9, #40
	mov 	x3, #36
	mov 	x4, #20
	bl 		doRectangulo
    sub 	x1, x8, #76
	add 	x2, x9, #60
	mov 	x3, #32
	mov 	x4, #8
	bl 		doRectangulo

    ldr 	x10, [sp, #24]   
	ldr 	x2, [sp, #16]   
	ldr 	x1,	[sp, #8]   
	ldr 	x30,[sp, #0] 
	add 	sp, sp, #32

doStone:
    sub 	sp,sp, #32    
	str 	x10, [sp, #24]   
	str 	x2, [sp, #16]   
	str 	x1, [sp, #8]   
	str 	x30, [sp, #0]
    mov 	x8, x1
	mov 	x9, x2
    movz 	x10, DARK_BROWN1, lsl 16
	movk 	x10, DARK_BROWN2, lsl 00
    sub 	x1, x8, #68
	add 	x2, x9, #36
	mov 	x3, #16
	mov 	x4, #4
	bl 		doRectangulo
    sub 	x1, x8, #68
	add 	x2, x9, #40
	mov 	x3, #20
	mov 	x4, #4
	bl 		doRectangulo
    sub 	x1, x8, #68
	add 	x2, x9, #44
	mov 	x3, #24
	mov 	x4, #16
	bl 		doRectangulo
    movz 	x10, BROWN1, lsl 16
	movk 	x10, BROWN2, lsl 00
    sub 	x1, x8, #72
	add 	x2, x9, #40
	mov 	x3, #16
	mov 	x4, #4
	bl 		doRectangulo
    sub 	x1, x8, #76
	add 	x2, x9, #44
	mov 	x3, #24
	mov 	x4, #4
	bl 		doRectangulo
    sub 	x1, x8, #80
	add 	x2, x9, #48
	mov 	x3, #32
	mov 	x4, #16
	bl 		doRectangulo
    sub 	x1, x8, #76
	add 	x2, x9, #64
	mov 	x3, #24
	mov 	x4, #4
	bl 		doRectangulo
    sub 	x1, x8, #72
	add 	x2, x9, #68
	mov 	x3, #16
	mov 	x4, #4
	bl 		doRectangulo
    movz 	x10, LIGHT_BROWN1, lsl 16
	movk 	x10, LIGHT_BROWN2, lsl 00
    sub 	x1, x8, #76
	add 	x2, x9, #48
	mov 	x3, #16
	mov 	x4, #8
	bl 		doRectangulo
    sub 	x1, x8, #80
	add 	x2, x9, #56
	mov 	x3, #24
	mov 	x4, #8
	bl 		doRectangulo
    sub 	x1, x8, #76
	add 	x2, x9, #64
	mov 	x3, #20
	mov 	x4, #4
	bl 		doRectangulo
    sub 	x1, x8, #72
	add 	x2, x9, #68
	mov 	x3, #12
	mov 	x4, #4
	bl 		doRectangulo

    ldr 	x10, [sp, #24]   
	ldr 	x2, [sp, #16]   
	ldr 	x1,	[sp, #8]   
	ldr 	x30,[sp, #0] 
	add 	sp, sp, #32

    ret
