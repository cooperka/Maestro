// Reads from SD card 1 word per call, in order, into sd_data

sd_driver	in	80		sd_valid	
		bne	sd_driver 	sd_valid	num1
		in	82		sd_data
		out 	81		num1
sd_get_invalid 	in	80		sd_valid
		bne	sd_get_invalid	sd_valid	num0
		out 	81		num0
		ret	sd_return

sd_valid	.data	0
