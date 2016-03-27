// draws the "main menu" and "undo!" buttons on the game board from SDRAM

button_draw	cp	sdram_x		num608				// starting coords of image on SDRAM
		cp	sdram_y		num29

bmm_loop	bne	bmm_skip	sdram_y		num31		// Draw Main Menu
		be	bmm_rr		sdram_x		num512
bmm_skip	bne	bmm_skip2	bd_x		num80
		cp	bd_x		num0
		add	bd_y		bd_y		num1
bmm_skip2	call	sdram_read	sdram_r_ret
		add	vga_x1		bd_x		num170
		add	vga_y1		bd_y		num420
		cp	vga_x2		vga_x1
		cp	vga_y2		vga_y1
		cp	vga_color	sdram_data_r
		call	vga_driver	vga_return
		add	bd_x		bd_x		num1
		add	sdram_x		sdram_x		num1
		bne	bmm_loop	sdram_x		num2048
		cp	sdram_x		num0
		add	sdram_y		sdram_y		num1
		be	bmm_loop	0		0
bmm_rr		cp	bd_x		num0
		cp	bd_y		num0

u_loop		bne	u_skip		sdram_y		num33		// Draw Undo
		be	u_rr		sdram_x		num416
u_skip		bne	u_skip2		bd_x		num80
		cp	bd_x		num0
		add	bd_y		bd_y		num1
u_skip2		call	sdram_read	sdram_r_ret
		add	vga_x1		bd_x		num390
		add	vga_y1		bd_y		num420
		cp	vga_x2		vga_x1
		cp	vga_y2		vga_y1
		cp	vga_color	sdram_data_r
		call	vga_driver	vga_return
		add	bd_x		bd_x		num1
		add	sdram_x		sdram_x		num1
		bne	u_loop		sdram_x		num2048
		cp	sdram_x		num0
		add	sdram_y		sdram_y		num1
		be	u_loop		0		0
u_rr		cp	bd_x		num0
		cp	bd_y		num0
		ret	bd_ret

bd_x		.data	0
bd_y		.data	0
bd_ret		.data	0
