// If vga_write is 1, it draws on the screen
// If 0, it sets vga_color_read to the color of the current pixel

vga_driver	out	62		vga_write
		out	63		vga_x1
		out	64		vga_y1
		out	65		vga_x2
		out	66		vga_y2
		out	67		vga_color
		out	60		num1		
vga_ack_loop	in	61		vga_ack
		bne	vga_ack_loop	vga_ack		num1		
		be	vga_read	vga_write 	num0		
vga_valid_dn	out	60		num0
		ret	vga_return			
vga_read	in 	68		vga_color_read
		be	vga_valid_dn	0		0

vga_ack		.data	0
