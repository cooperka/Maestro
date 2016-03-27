// Pre: puzzle_num is a random number [0-2]
// Post: board is populated with the puzzle start positions

copy_puzzle	cpfa	cpp_i		PUZZLE_START	puzzle_num
		cpfa	p_end_global	PUZZLE_END	puzzle_num
		add	cpp_end		cpp_i		num64
		cp	p_index_global	cpp_end
cp_loop		cpfa	temp		board_puzzles	cpp_i
		cpta	temp		board		cpp_k
		cpta	temp		board_undo	cpp_k		// also copy to undo, so weird results don't happen
		add	cpp_i		cpp_i		num1
		add	cpp_k		cpp_k		num1
		bne	cp_loop		cpp_i		cpp_end
		cp	cpp_k		num0
		ret	copy_puzzle_ret

cpp_i		.data	0
cpp_k		.data	0
cpp_end		.data	0
copy_puzzle_ret	.data	0
p_index_global	.data	0
p_end_global	.data	0
