// sdram_write puts sdram_data_w onto sdram at sdram_(x, y)
// sdram_read reads data from sdram at sdram_(x, y) into sdram_data_r

sdram_write	out	32		num1		// do write
		out	33		sdram_x
		out	34		sdram_y
		out	35		sdram_data_w
		out	30		num1
sdram_w_ack	in	31		sdram_ack
		bne	sdram_w_ack	sdram_ack	num1
		out	30		num0
sdram_w_ack2	in	31		sdram_ack
		bne	sdram_w_ack2	sdram_ack	num0
		ret	sdram_w_ret

sdram_read	out	32		num0		// don't write
		out	33		sdram_x
		out	34		sdram_y
		out	30		num1
sdram_r_ack	in	31		sdram_ack
		bne	sdram_r_ack	sdram_ack	num1
		in	36		sdram_data_r
		out	30		num0
sdram_r_ack2	in	31		sdram_ack
		bne	sdram_r_ack2	sdram_ack	num0
		out	30		num0
		ret	sdram_r_ret

sdram_ack		.data	0
