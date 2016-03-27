// used by AI
// Post: valid_found is 1 if the piece has any valid moves, using moves_board from get_moves.e

check_for_move	cp	cfm_i		num0
		cp	valid_found	num0
cfm_loop	cpfa	temp		moves_board	cfm_i
		be	cfm_skip	num0		temp
		cp	valid_found	num1
		be	cfm_end		0		0
cfm_skip	add	cfm_i		cfm_i		num1
		bne	cfm_loop	num64		cfm_i
cfm_end		ret	check_for_move_ret

check_for_move_ret	.data	0
cfm_i			.data	0
valid_found		.data	0
