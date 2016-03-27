// lights up squares, green if they are blank or red if they have an enemy piece
// uses moves_board, which is a 64-index array of 0 (invalid move) or 1 (valid move) filled by get_moves.e

show_moves	add	show_move_i	show_move_i	num1
		cpfa	move_type	moves_board	show_move_i
		bne	draw_color	move_type	num0
sm_next		add	sm_col		sm_col		num50
		be	sm_end		sm_row		num355
sm_no_end	bne	show_moves	sm_col		num520
		add	sm_row		sm_row		num50
		add	sm_col		sm_col_init	num0
		be	show_moves	0		0
sm_end		bne	sm_no_end	sm_col		num520
		cp	sm_row		sm_row_init
		cp	sm_col		sm_col_init
		cp	show_move_i	num-1
		ret	show_moves_ret
draw_color	add	vga_x1		sm_col		num0
		add	vga_y1		sm_row		num0
		add	vga_x2		sm_col		num49
		add	vga_y2		sm_row		num49
		cpfa 	temp		board		show_move_i
		cp	dr_x0		sm_col
		cp	dr_y0		sm_row
		bne	draw_red	temp		num0
draw_green	cp	vga_color	num0				// make a green rectangle
		call	vga_driver	vga_return
		add	vga_x1		vga_x1		num1
		add	vga_y1		vga_y1		num1
		sub	vga_x2		vga_x2		num1
		sub	vga_y2		vga_y2		num1
		cp	vga_color	GREEN
		call	vga_driver	vga_return
		be	sm_next		0		0
draw_red	add	vga_x1		dr_x		dr_x0		// draw red over pixels that are the color of the board ONLY
		add	vga_y1		dr_y		dr_y0
		cp	vga_x2		vga_x1
		cp	vga_y2		vga_y1
		cp	vga_write	num0
		call	vga_driver	vga_return
		cp	vga_write	num1
		be	red_pixel	vga_color_read	COLOR_L
		be	red_pixel	vga_color_read	num65489	// sometimes VGA reads COLOR_L as this number
		be	red_pixel	vga_color_read	COLOR_D
draw_red_cont	add	dr_x		dr_x		num1
		be	red_end		num50		dr_x
no_red_end	bne	draw_red	num50		dr_x
		add	dr_y		dr_y		num1
		cp	dr_x		num0
		be	draw_red	0		0
red_end		bne	no_red_end	dr_y		num49
		cp	dr_x		num0
		cp	dr_y		num0
		be	sm_next		0		0
red_pixel	cp	vga_color	RED
		call	vga_driver	vga_return
		be	draw_red_cont	0		0

dr_x		.data	0
dr_y		.data	0
dr_x0		.data	0
dr_y0		.data	0
sm_row		.data	5
sm_col		.data	120
sm_row_init	.data	5
sm_col_init	.data	120
show_move_i	.data	-1
move_type	.data	0
