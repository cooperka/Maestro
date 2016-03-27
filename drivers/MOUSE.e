get_valid	in	70	mouse_valid
	be	get_valid	mouse_valid	num0	// Wait till valid
	in	72	mouse_dx					// Read in data
	in	73	mouse_dy
	in	74	mouse_b1
	in	75	mouse_b2
	in	76	mouse_b3
	out	71	num1						// Ack
get_valid2	in	70	mouse_valid
	be	get_valid2	mouse_valid	num1	// Wait till un-valid
	out	71	num0						// Un-Ack
	ret	mouse_return					// Return
	
mouse_valid		.data	0
mouse_ack		.data	0
mouse_dx		.data	0
mouse_dy		.data	0
mouse_b1		.data	0
mouse_b2		.data	0
mouse_b3		.data	0
mouse_return	.data	0
num0			.data	0
num1			.data	1

// 70	in 	bit 0: mouse_valid
// 71	out	bit 0: mouse_ack
// 72	in 	bits 15-0: mouse_deltax
// 73	in 	bits 15-0: mouse_deltay
// 74	in 	bit 0: mouse_button1
// 75	in 	bit 0: mouse_button2
// 76	in 	bit 0: mouse_button3 