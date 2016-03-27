// redraws the entire board based on the 'board' array
// for each square, calls draw_piece after setting sdram_(x,y), dp_(x,y)0, and filling 'piece' array

disp_board	sub	vga_x1		board_col	num5	// black border
		sub	vga_y1		board_row	num5
		cp	vga_x2		num524
		cp	vga_y2		num409
		cp	vga_color	num0
		call	vga_driver	vga_return
		call	button_draw	bd_ret			// main menu and undo buttons
		call	rev_col		rev_col_ret
b_draw		call	rev_col		rev_col_ret
		add	b_i		b_i		num1
		cpfa	square		board		b_i
		bne	draw_pc		square		num0
draw_sq		cp	vga_x1		board_col		// draw a blank square
		cp	vga_y1		board_row
		add	vga_x2		board_col	num49
		add	vga_y2		board_row	num49
		call	vga_driver	vga_return
		be	d_next		0		0
		
draw_pc		call	set_sdram	set_sdram_ret		// draw a piece
		cp	sdram_x		sdr_x_start
		cp	sdram_y		sdr_y_start
		call	piece_array	pa_ret
		cp	dp_x0		board_col
		cp	dp_y0		board_row
		call	draw_piece	dp_return
d_next		add	board_col	board_col	num50
		be	b_end		board_row	num355
no_end		bne	b_draw		board_col	num520
		call	rev_col		rev_col_ret
		add	board_row	board_row	num50
		add	board_col	b_col_init	num0
		be	b_draw		0		0
b_end		bne	no_end		board_col	num520
		cp	board_row	b_row_init
		cp	board_col	b_col_init
		cp	b_i		num-1
		cp	just_drawn	num1
		ret	disp_board_ret
		
rev_col		bne	light		vga_color	COLOR_L		// Reverse colors
		add	vga_color	COLOR_D		num0
		ret	rev_col_ret
light		add	vga_color	COLOR_L		num0
		ret	rev_col_ret

board_row	.data	5
board_col	.data	120
b_row_init	.data	5
b_col_init	.data	120
rev_col_ret	.data	0
b_i		.data	-1
cp_i		.data	0
square		.data	0
copy_piece_ret	.data	0
disp_board_ret	.data	0
just_drawn	.data	0
