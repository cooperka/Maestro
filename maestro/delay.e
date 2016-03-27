// does a bunch of useless calculations so that it takes a while
// used in puzzle and one player to have a delay before computer turns

delay		call	take_long	take_long_ret			// does 60 operations each time (one '+30' add, 29 '-1' subtracts, twice)
		sub	delay_i		delay_i		num1
		call	take_long	take_long_ret
		bne	delay		delay_i		DELAY_MAX	// calls delay 65000 times
		cp	delay_i		num0
		ret	delay_ret

take_long	add	delay_i		delay_i		num30
		sub	delay_i		delay_i		num1
		sub	delay_i		delay_i		num1
		sub	delay_i		delay_i		num1
		sub	delay_i		delay_i		num1
		sub	delay_i		delay_i		num1
		sub	delay_i		delay_i		num1
		sub	delay_i		delay_i		num1
		sub	delay_i		delay_i		num1
		sub	delay_i		delay_i		num1
		sub	delay_i		delay_i		num1
		sub	delay_i		delay_i		num1
		sub	delay_i		delay_i		num1
		sub	delay_i		delay_i		num1
		sub	delay_i		delay_i		num1
		sub	delay_i		delay_i		num1
		sub	delay_i		delay_i		num1
		sub	delay_i		delay_i		num1
		sub	delay_i		delay_i		num1
		sub	delay_i		delay_i		num1
		sub	delay_i		delay_i		num1
		sub	delay_i		delay_i		num1
		sub	delay_i		delay_i		num1
		sub	delay_i		delay_i		num1
		sub	delay_i		delay_i		num1
		sub	delay_i		delay_i		num1
		sub	delay_i		delay_i		num1
		sub	delay_i		delay_i		num1
		sub	delay_i		delay_i		num1
		sub	delay_i		delay_i		num1
		ret	take_long_ret

delay_ret	.data	0
take_long_ret	.data	0
delay_i		.data	0
