.equ MOUNTAIN_COLOR1, 0xc7
.equ MOUNTAIN_COLOR2, 0xb695
.equ STONE_BLACK1, 0x2f
.equ STONE_BLACK2, 0x2f2f
.equ STONE_GREY1, 0x55
.equ STONE_GREY2, 0x5555
.equ STONE_GREY_LIGHT1, 0xa3
.equ STONE_GREY_LIGHT2, 0xa3a3

.global doMountain
doMountain:
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
    movz 	x10, MOUNTAIN_COLOR1, lsl 16
	movk 	x10, MOUNTAIN_COLOR2, lsl 00
    add 	x1, x8, #0
	add 	x2, x9, #0
	mov 	x3, #16
	mov 	x4, #4
    bl      doRectangulo
    sub 	x1, x8, #4
	add 	x2, x9, #4
	mov 	x3, #28
	mov 	x4, #4
    bl      doRectangulo
    sub 	x1, x8, #8
	add 	x2, x9, #8
	mov 	x3, #40
	mov 	x4, #4
    bl      doRectangulo
    sub 	x1, x8, #12
	add 	x2, x9, #12
	mov 	x3, #52
	mov 	x4, #4
    bl      doRectangulo
    sub 	x1, x8, #16
	add 	x2, x9, #16
	mov 	x3, #64
	mov 	x4, #4
    bl      doRectangulo
    sub 	x1, x8, #20
	add 	x2, x9, #20
	mov 	x3, #76
	mov 	x4, #4
    bl      doRectangulo
    sub 	x1, x8, #24
	add 	x2, x9, #24
	mov 	x3, #88
	mov 	x4, #4
    bl      doRectangulo
    sub 	x1, x8, #28
	add 	x2, x9, #28
	mov 	x3, #100
	mov 	x4, #4
    bl      doRectangulo
    sub 	x1, x8, #32
	add 	x2, x9, #32
	mov 	x3, #112
	mov 	x4, #4
    bl      doRectangulo
    sub 	x1, x8, #36
	add 	x2, x9, #36
	mov 	x3, #124
	mov 	x4, #4
    bl      doRectangulo
    sub 	x1, x8, #40
	add 	x2, x9, #40
	mov 	x3, #136
	mov 	x4, #4
    bl      doRectangulo
    sub 	x1, x8, #132
	sub 	x2, x9, #24
	mov 	x3, #16
	mov 	x4, #4
    bl      doRectangulo
    sub 	x1, x8, #136
	sub 	x2, x9, #20
	mov 	x3, #28
	mov 	x4, #4
    bl      doRectangulo
    sub 	x1, x8, #140
	sub 	x2, x9, 16
	mov 	x3, #40
	mov 	x4, #4
    bl      doRectangulo
    sub 	x1, x8, #144
	sub 	x2, x9, #12
	mov 	x3, #52
	mov 	x4, #4
    bl      doRectangulo
    sub 	x1, x8, #148
	sub 	x2, x9, #8
	mov 	x3, #64
	mov 	x4, #4
    bl      doRectangulo
    sub 	x1, x8, #152
	sub 	x2, x9, #4
	mov 	x3, #76
	mov 	x4, #4
    bl      doRectangulo
    sub 	x1, x8, #156
	sub 	x2, x9, #0
	mov 	x3, #88
	mov 	x4, #4
    bl      doRectangulo
    sub 	x1, x8, #160
	add 	x2, x9, #4
	mov 	x3, #100
	mov 	x4, #4
    bl      doRectangulo
    sub 	x1, x8, #164
	add 	x2, x9, #8
	mov 	x3, #112
	mov 	x4, #4
    bl      doRectangulo
    sub 	x1, x8, #168
	add 	x2, x9, #8
	mov 	x3, #124
	mov 	x4, #4
    bl      doRectangulo
    sub 	x1, x8, #172
	add 	x2, x9, #12
	mov 	x3, #136
	mov 	x4, #4
    bl      doRectangulo
    sub 	x1, x8, #176
	add 	x2, x9, #16
	mov 	x3, #148
	mov 	x4, #4
    bl      doRectangulo
    sub 	x1, x8, #180
	add 	x2, x9, #20
	mov 	x3, #160
	mov 	x4, #4
    bl      doRectangulo
    sub 	x1, x8, #184
	add 	x2, x9, #24
	mov 	x3, #172
	mov 	x4, #4
    bl      doRectangulo
    sub 	x1, x8, #188
	add 	x2, x9, #28
	mov 	x3, #184
	mov 	x4, #4
    bl      doRectangulo
    sub 	x1, x8, #192
	add 	x2, x9, #32
	mov 	x3, #196
	mov 	x4, #4
    bl      doRectangulo
    sub 	x1, x8, #196
	add 	x2, x9, #36
	mov 	x3, #200
	mov 	x4, #4
    bl      doRectangulo
    sub 	x1, x8, #200
	add 	x2, x9, #40
	mov 	x3, #212
	mov 	x4, #4
    bl      doRectangulo

	ldr 	x10, [sp, #24]   
	ldr 	x2, [sp, #16]   
	ldr 	x1,	[sp, #8]   
	ldr 	x30,[sp, #0] 
	add 	sp, sp, #32
	ret

.global doStone
doStone:
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
    movz 	x10, STONE_BLACK1, lsl 16
	movk 	x10, STONE_BLACK2, lsl 00
    sub 	x1, x8, #0
	add 	x2, x9, #0
	mov 	x3, #12
	mov 	x4, #4
    bl      doRectangulo
    sub 	x1, x8, #4
	add 	x2, x9, #4
	mov 	x3, #20
	mov 	x4, #4
    bl      doRectangulo
    sub 	x1, x8, #8
	add 	x2, x9, #8
	mov 	x3, #32
	mov 	x4, #4
    bl      doRectangulo
    sub 	x1, x8, #12
	add 	x2, x9, #12
	mov 	x3, #40
	mov 	x4, #12
    bl      doRectangulo
    sub 	x1, x8, #12
	add 	x2, x9, #24
	mov 	x3, #36
	mov 	x4, #4
    bl      doRectangulo
    sub 	x1, x8, #8
	add 	x2, x9, #28
	mov 	x3, #32
	mov 	x4, #4
    bl      doRectangulo
    movz 	x10, STONE_GREY_LIGHT1, lsl 16
	movk 	x10, STONE_GREY_LIGHT2, lsl 00
    sub 	x1, x8, #0
	add 	x2, x9, #4
	mov 	x3, #8
	mov 	x4, #4
    bl      doRectangulo
    sub 	x1, x8, #0
	add 	x2, x9, #8
	mov 	x3, #4
	mov 	x4, #4
    bl      doRectangulo
    sub 	x1, x8, #4
	add 	x2, x9, #12
	mov 	x3, #4
	mov 	x4, #4
    bl      doRectangulo
    sub 	x1, x8, #8
	add 	x2, x9, #16
	mov 	x3, #4
	mov 	x4, #4
    bl      doRectangulo
    movz 	x10, STONE_GREY1, lsl 16
	movk 	x10, STONE_GREY2, lsl 00
    add 	x1, x8, #4
	add 	x2, x9, #8
	mov 	x3, #8
	mov 	x4, #4
    bl      doRectangulo
    add 	x1, x8, #0
	add 	x2, x9, #12
	mov 	x3, #20
	mov 	x4, #4
    bl      doRectangulo
    sub 	x1, x8, #4
	add 	x2, x9, #16
	mov 	x3, #28
	mov 	x4, #4
    bl      doRectangulo
    sub 	x1, x8, #8
	add 	x2, x9, #20
	mov 	x3, #28
	mov 	x4, #4
    bl      doRectangulo
    sub 	x1, x8, #4
	add 	x2, x9, #24
	mov 	x3, #24
	mov 	x4, #4
    bl      doRectangulo

	ldr 	x10, [sp, #24]   
	ldr 	x2, [sp, #16]   
	ldr 	x1,	[sp, #8]   
	ldr 	x30,[sp, #0] 
	add 	sp, sp, #32
	ret
