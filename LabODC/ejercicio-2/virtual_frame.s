.global virtual_frame.show_frame
virtual_frame.show_frame:
    movz    x11, 0x0004, lsl 16
    movk    x11, 0xB000, lsl 0

show_frame_loop:
        lsl     x12, x11, 2
        add     x12, x12, x20
        ldur    w14, [x12, 0]

        movz    x13, 0x0004, lsl 16
        movk    x13, 0xB004, lsl 0
        lsl     x13, x13, 2
        sub     x13, x12, x13
        stur    w14, [x13,  0]
        subs    x11, x11, 1
    b.ge show_frame_loop
    ret


.global virtual_frame.change_base_pos
virtual_frame.change_base_pos:
    add     sp, sp, 8
    stur    x11, [sp, 0]
    movz    x11, 0x0004, lsl 16
    movk    x11, 0xB004, lsl 0
	lsl     x11, x11, 2
	add     x20, x20, x11
    ldur    x11, [sp, 0]
    sub     sp, sp, 8
    ret
