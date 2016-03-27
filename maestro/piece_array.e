// Pre: sdram_(y, x) and sdr_(x, y)_end assigned to the start and end values from SDRAM
// Post: 2500-index 'piece' array is filled with color pixels corresponding to the piece about to be drawn

piece_array	be	sdr_r_next	sdram_y		sdr_y_end
		be	sdr_r_skip	0		0
sdr_r_next	be	sdr_r_rr	sdram_x		sdr_x_end
sdr_r_skip	call	sdram_read	sdram_r_ret
		cpta	sdram_data_r	piece		sdr_r_i		// save to piece array
		add	sdr_r_i		sdr_r_i		num1
		add	sdram_x		sdram_x		num1
		bne	piece_array	sdram_x		num2048
		cp	sdram_x		num0
		add	sdram_y		sdram_y		num1
		be	piece_array	0		0
sdr_r_rr	cp	sdr_r_i		num0
		ret	pa_ret
sdr_r_i		.data	0
pa_ret		.data	0
