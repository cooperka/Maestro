// removes a piece from the side of the board if you undo after capturing it

undo_capture	be	u_black_captured	turn			num2
		cp	vga_color		COLOR_L				// white was captured
		sub	w_captured_y		w_captured_y		num50
		cp	vga_y1			w_captured_y
		add	vga_y2			vga_y1			num50
		blt	w_prev_col		w_captured_y		board_top
		cp	vga_x1			w_captured_x
		add	vga_x2			w_captured_x		num50
w_cont_undo	call	vga_driver		vga_return
		ret	undo_capture_ret
		
w_prev_col	sub	w_captured_x		w_captured_x		num50
		cp	w_captured_y		ROW7_y
		be	w_cont_undo		0			0
		
u_black_captured cp	vga_color		COLOR_L				// black was captured
		sub	b_captured_y		b_captured_y		num50
		cp	vga_y1			b_captured_y
		add	vga_y2			vga_y1			num50
		blt	b_prev_col		b_captured_y		board_top
		cp	vga_x1			b_captured_x
		add	vga_x2			b_captured_x		num50
b_cont_undo	call	vga_driver		vga_return
		ret	undo_capture_ret
		
b_prev_col	add	b_captured_x		b_captured_x		num50
		cp	b_captured_y		ROW7_y
		be	b_cont_undo		0			0
		
undo_capture_ret .data	0
