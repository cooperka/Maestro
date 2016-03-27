speaker_driver	out	42	speaker_sample     //this directly outputs a signal to the speakers
		out	40	one 			//I am storing whatever is in speaker_valid in to out port 40
speaker_check	in	41	speaker_ack
		be	speaker_check	speaker_ack	zero  //if speaker ack is equal to 0, go to speaker_driver
		out	40	zero
		ret	speaker_ra

speaker_ack	.data	0
speaker_sample	.data	0
speaker_ra	.data	0
