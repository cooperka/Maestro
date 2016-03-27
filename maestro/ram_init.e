// Initializes sdram using the SD card
// 2048 words per row, SD_YMAX rows are filled

ram_init	bne	sdr_w_skip	sdram_y		SD_YMAX
		be	sdr_w_rr	sdram_x		SD_XMAX
sdr_w_skip	call	sd_driver	sd_return
		cp	sdram_data_w	sd_data
		call	sdram_write	sdram_w_ret
		add	sdram_x		sdram_x		num1
		bne	ram_init	sdram_x		num2048
		cp	sdram_x		num0
		add	sdram_y		sdram_y		num1
		be	ram_init	0		0
sdr_w_rr	cp	sdram_x		num0
		cp	sdram_y		num0
		ret	ram_init_ret

ram_init_ret	.data	0
