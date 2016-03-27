lcd_driver in 11 lcd_ack
	bne lcd_driver lcd_ack zero
	out 12 lcd_x
	out 13 lcd_y
	out 14 lcd_ascii
	out 10 one //lcd_valid
lcd_waiting	in 11 lcd_ack
	bne lcd_waiting lcd_ack one
	out 10 zero
	ret lcd_driver_ra
	
lcd_ascii	.data	0
lcd_x		.data	0
lcd_y		.data	0
lcd_ack		.data	0
lcd_driver_ra	.data	0
