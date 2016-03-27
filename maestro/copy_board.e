// initializes the starting positions of pieces for two- or one- player mode

copy_board	cp	cpb_i			num0
cp_board_loop	cpfa	temp			board_start	cpb_i
		cpta	temp			board		cpb_i
		cpta	temp			board_undo	cpb_i		// also save to undo, so clicking the button won't cause weird results
		add	cpb_i			num1		cpb_i
		bne	cp_board_loop		num64		cpb_i
		ret	copy_board_ret
		
cpb_i		.data	0
copy_board_ret	.data	0
