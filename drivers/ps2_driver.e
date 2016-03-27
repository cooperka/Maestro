ps2_driver 	in 	20 		ps2_valid
		//be 	ps2_driver 	ps2_valid	zero 
		be ps2_ret ps2_valid zero
		in 	23 		ps2_ascii
		out 	21 		one
ps2_check 	in 	20 		ps2_valid
		be 	ps2_check 	ps2_valid 	one
		out 	21 		zero
ps2_driver2 	in 	20 		ps2_valid
		be 	ps2_driver2 	ps2_valid	zero
		out 	21 		one
ps2_check2 	in 	20 		ps2_valid
		be 	ps2_check2 	ps2_valid	one
		out 	21 		zero
		//out 	4 		ps2_ascii 
ps2_ret		ret 	ps2_ra
		
ps2_valid	.data 0
ps2_ascii	.data 0
ps2_ra		.data 0
