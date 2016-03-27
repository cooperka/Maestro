microphone_driver	in  50 microphone_valid  
		be  microphone_driver microphone_valid zero
		in  52 microphone_sample
		out 51 one //microphone_ack
microphone_check		in  50 microphone_valid  
		be  microphone_check microphone_valid one
		out 51 zero
		ret microphone_driver_ra

microphone_valid 	.data	0
microphone_driver_ra	.data	0
microphone_sample	.data	0
