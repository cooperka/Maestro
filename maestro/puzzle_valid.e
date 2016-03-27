// Pre: p_index_global is set to the index of board_puzzles the game is currently at
// Post: puz_valid_yes is 1 if the current board matches board_puzzles from [p_index_global] to [p_index_global + 64]

puzzle_valid	cp	pv_i		p_index_global
		add	pv_end		pv_i		num64
pv_loop		cpfa	temp		board_puzzles	pv_i
		cpfa	temp1		board		pv_k
		bne	pv_no		temp		temp1
		add	pv_i		pv_i		num1
		add	pv_k		pv_k		num1
		bne	pv_loop		pv_i		pv_end
		cp	puz_valid_yes	num1
		cp	pv_k		num0
		ret	pv_ret
		
pv_no		cp	puz_valid_yes	num0
		cp	pv_k		num0
		ret	pv_ret

pv_ret		.data	0
pv_i		.data	0
pv_k		.data	0
pv_end		.data	0
puz_valid_yes	.data	0
