sd_driver	in  80 sd_valid				//sd_valid is read from port 50 (valid).
		be  sd_driver sd_valid zero		//If sd_valid is 0, go to sd_driver to repeat until valid = 1.
		in  82 sd_data					//Sd_data is now set to the value of port 52 (data).
		out 81 one 						//Port 51 (ack) is now set to 1.
sd_check	in  80 sd_valid				//Sd_valid is read from port 50 (valid) (Unneccesary, but whatevs).
		be  sd_check sd_valid one		//If sd_valid is equal to one, go to sd_check.
		out 81 zero						//Else set Port 51 (ack) is set to 0.
		ret sd_driver_ra				//The value is now returned.

sd_driver_reset	out 135 one
sd_driver_wait	in 80 sd_valid
		be sd_driver_wait sd_valid zero
		out 81 one //set ack to one
sd_driver_wait2	in 80 sd_valid
		be sd_driver_wait2 sd_valid one		
		out 81 zero
		out 135 zero
		ret sd_driver_ra

sd_valid	 	.data 	0
sd_data			.data 	0
sd_driver_ra 		.data 	0
