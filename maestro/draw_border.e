// draw a 2px wide green border around currently selected piece

draw_border	cp	db_y0		board_top		// find the corner y coordinate of the piece
		be	select_x	row		num1
		cp	db_y0		ROW1_y
		be	select_x	row		num2
		cp	db_y0		ROW2_y
		be	select_x	row		num3
		cp	db_y0		ROW3_y
		be	select_x	row		num4
		cp	db_y0		ROW4_y
		be	select_x	row		num5
		cp	db_y0		ROW5_y
		be	select_x	row		num6
		cp	db_y0		ROW6_y
		be	select_x	row		num7
		cp	db_y0		ROW7_y
		be	select_x	row		num8
			
select_x	cp	db_x0		board_left		// find the corner x coordinate of the piece
		be	draw_b		column		num1
		cp	db_x0		COL1_x
		be	draw_b		column		num2
		cp	db_x0		COL2_x
		be	draw_b		column		num3
		cp	db_x0		COL3_x
		be	draw_b		column		num4
		cp	db_x0		COL4_x
		be	draw_b		column		num5
		cp	db_x0		COL5_x
		be	draw_b		column		num6
		cp	db_x0		COL6_x
		be	draw_b		column		num7
		cp	db_x0		COL7_x
		be	draw_b		column		num8

draw_b		cp	vga_color	GREEN			// draw the border
		cp	vga_x1		db_x0
		add	vga_x2		vga_x1		num49
		cp	vga_y1		db_y0
		add	vga_y2		vga_y1		num1
		call	vga_driver	vga_return
		add	vga_x2		db_x0		num1
		add	vga_y2		db_y0		num49
		call	vga_driver	vga_return
		add	vga_y2		db_y0		num49
		sub	vga_y1		vga_y2		num1
		add	vga_x2		db_x0		num49
		call	vga_driver	vga_return
		add	vga_x2		db_x0		num49
		sub	vga_x1		vga_x2		num1
		cp	vga_y1		db_y0
		add	vga_y2		vga_y1		num49
		call	vga_driver	vga_return
			
		ret	draw_border_ret
			
db_y0		.data	0
db_x0		.data	0
draw_border_ret	.data	0
