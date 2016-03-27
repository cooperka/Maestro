// Gets mouse_(dx, dy, b1, b2, b3) used by draw_mouse

mouse_driver	in	70		mouse_valid
		bne	mouse_driver	mouse_valid	num1	// Wait till valid
		in	72		mouse_dx		// Read in data
		in	73		mouse_dy
		in	74		mouse_b1
		in	75		mouse_b2
		in	76		mouse_b3
		out	71		num1			// Ack
mouse_uv_loop	in	70		mouse_valid
		bne	mouse_uv_loop	mouse_valid	num0	// Wait till un-valid
		out	71		num0			// Un-Ack
		ret	mouse_return				// Return

mouse_valid	.data	0
mouse_ack	.data	0
