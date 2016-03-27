fft_driver_send in 111 fft_send_ack
	bne fft_driver_send fft_send_ack zero
	out 112 fft_send_real
	//out 113 fft_send_imaginary //not used
	//out 114 fft_send_inverse //not used
	//out 115 fft_send_end //used?
	out 110 one //data is valid
fft_send_waiting in 111 fft_send_ack
	bne fft_send_waiting fft_send_ack one
	out 110 zero //data is done
	ret fft_driver_ra

fft_driver_receive in 120 fft_receive_valid
	be fft_driver_receive fft_receive_valid zero
	in 122 fft_receive_real
	in 123 fft_receive_imaginary
	out 121 one //fft_receive_ack
fft_receive_waiting in 120 fft_receive_valid
	be fft_driver_receive fft_receive_valid one
	out 121 zero //fft_receive_ack
	ret fft_driver_ra


fft_send_ack		.data 0
fft_send_end		.data 0
fft_send_inverse	.data 0
fft_send_imaginary	.data 0
fft_send_real		.data 0

fft_driver_ra		.data 0
fft_receive_valid	.data 0
fft_receive_imaginary	.data 0
fft_receive_real	.data 0
