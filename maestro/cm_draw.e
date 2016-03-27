// draws the "checkmate!" text in the middle bottom of the screen

cm_draw		cp	sdram_x		num416			// SDRAM location of image
		cp	sdram_y		num128

cm_loop		bne	cm_skip		sdram_y		SD_YMAX
		be	cm_rr		sdram_x		SD_XMAX
cm_skip		bne	cm_skip2	cm_x		num100
		cp	cm_x		num0
		add	cm_y		cm_y		num1
cm_skip2	call	sdram_read	sdram_r_ret
		add	vga_x1		cm_x		num270
		add	vga_y1		cm_y		num420
		cp	vga_x2		vga_x1
		cp	vga_y2		vga_y1
		cp	vga_color	sdram_data_r
		call	vga_driver	vga_return
		add	cm_x		cm_x		num1
		add	sdram_x		sdram_x		num1
		bne	cm_loop		sdram_x		num2048
		cp	sdram_x		num0
		add	sdram_y		sdram_y		num1
		be	cm_loop	0		0
cm_rr		cp	cm_x		num0
		cp	cm_y		num0
		ret	cm_draw_ret
		
cm_x		.data	0
cm_y		.data	0
cm_draw_ret	.data	0
