// Pre: piece is a 2500-index array of color pixels set in piece_array.e
// Post: draws a piece starting at top left of the square (dp_x0 and dp_y0, set in disp_board.e)

draw_piece	add	vga_x1		dp_x		dp_x0
		add	vga_y1		dp_y		dp_y0	
		cp	vga_x2		vga_x1
		cp	vga_y2		vga_y1
		cpfa	vga_color	piece		pixel
		call	vga_driver	vga_return
		add	pixel		pixel		num1
		add	dp_x		dp_x		num1
		be	piece_end	num50		dp_x
no_piece_end	bne	draw_piece	num50		dp_x
		add	dp_y		dp_y		num1
		cp	dp_x		num0
		be	draw_piece	0		0
piece_end	bne	no_piece_end	dp_y		num49
		cp	pixel		num0
		cp	dp_x		num0
		cp	dp_y		num0
		ret	dp_return
		
dp_x	.data	0
dp_y	.data	0
pixel	.data	0
