// draw the home screen (from SDRAM)

draw_main	cp	p_checkmate	num0		// reset some flags
		cp	turn		TURN_WHITE
		cp	vga_x1		num0		// draw big rectangle
		cp	vga_y1		num0
		cp	vga_x2		num639
		cp	vga_y2		num479
		cp	vga_color	COLOR_L
		call	vga_driver	vga_return
		cp	sdram_x		num416		// beginning of title image on SDRAM
		cp	sdram_y		num33

home_loop	bne	home_skip	sdram_y		num128	// draw from SDRAM
		be	home_rr		sdram_x		num416
home_skip	bne	home_skip2	home_x		num640
		cp	home_x		num0
		add	home_y		home_y		num1
home_skip2	call	sdram_read	sdram_r_ret
		cp	vga_x1		home_x
		cp	vga_y1		home_y
		cp	vga_x2		vga_x1
		cp	vga_y2		vga_y1
		cp	vga_color	sdram_data_r
		call	vga_driver	vga_return
		add	home_x		home_x		num1
		add	sdram_x		sdram_x		num1
		bne	home_loop	sdram_x		num2048
		cp	sdram_x		num0
		add	sdram_y		sdram_y		num1
		be	home_loop	0		0
home_rr		cp	home_x		num0
		cp	home_y		num0
		ret	draw_main_ret
		
draw_main_ret	.data	0
home_x		.data	0
home_y		.data	0
