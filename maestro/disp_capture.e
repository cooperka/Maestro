// displays colums of captured pieces on the sides of the board (called from player_move.e)

disp_capture	be	black_captured	turn		TURN_WHITE
		cp	vga_color	COLOR_L
		cp	square		captured_piece
		call	set_sdram	set_sdram_ret		// get coordinates of piece image on sdram
		cp	sdram_x		sdr_x_start
		cp	sdram_y		sdr_y_start
		call	piece_array	pa_ret			// fill 'piece' array with pixels
		cp	dp_x0		w_captured_x
		cp	dp_y0		w_captured_y
		call	draw_piece	dp_return		// finally draw the piece
		add	w_captured_y	w_captured_y	num50
		blt	w_next_col	ROW7_y		w_captured_y
		ret	disp_capture_ret
		
w_next_col	add	w_captured_x	w_captured_x	num50		// start a new column
		cp	w_captured_y	board_top
		ret	disp_capture_ret
		
black_captured	cp	vga_color	COLOR_L
		cp	square		captured_piece
		call	set_sdram	set_sdram_ret		// get coordinates of piece image on sdram
		cp	sdram_x		sdr_x_start
		cp	sdram_y		sdr_y_start
		call	piece_array	pa_ret			// fill 'piece' array with pixels
		cp	dp_x0		b_captured_x
		cp	dp_y0		b_captured_y
		call	draw_piece	dp_return		// finally draw the piece
		add	b_captured_y	b_captured_y	num50
		blt	b_next_col	ROW7_y		b_captured_y
		ret	disp_capture_ret
		
b_next_col	sub	b_captured_x	b_captured_x	num50		// start a new column
		cp	b_captured_y	board_top
		ret	disp_capture_ret
		
w_captured_y	.data	5
w_captured_x	.data	0
b_captured_y	.data	5
b_captured_x	.data	589
//captured_piece	.data	0
disp_capture_ret	.data	0
