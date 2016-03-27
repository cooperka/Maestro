vga_driver_write in 61 vga_ack
	bne vga_driver_write vga_ack zero
	out 63 vga_x1
	out 65 vga_x2
	out 64 vga_y1
	out 66 vga_y2
	out 62 one
 	out 67 vga_color_write
	out 60 one
vga_waiting	in 61 vga_ack
	bne vga_waiting vga_ack one
	out 60 zero
	ret vga_driver_write_ra

vga_driver_read in 61 vga_ack
	bne vga_driver_read vga_ack zero
	out 63 vga_x1
	out 64 vga_y1
	out 62 zero
	out 60 one
vga_waiting2	in 61 vga_ack
	bne vga_waiting2 vga_ack one
	in 68 vga_color_read
	out 60 zero
	//ret vga_driver_read_ra

vga_driver_read_ra .data 0
vga_driver_write_ra  .data 0
vga_color_read .data 0
vga_color_write .data 1
vga_valid .data 0
vga_ack .data 0
vga_x1 .data 120
vga_x2 .data 520
vga_y1 .data 40
vga_y2 .data 440
vga_write .data 100
zero .data 0
one .data 1