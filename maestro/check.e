// Determine (for every piece) if enemy king's position in the piece's moves_board is 1
// Post: in_check is 1 if king is in check or checkmate, 0 if safe

check		blt	next_piece	check_i		num64
check_loop2	cpfa	check_current	moves_board	king_loc
		be	check	check_current	num0
		be	check_yes	0		0
next_piece	cpfa	piece_type	board		check_b_i
		call	convert_num	conv_num_ret
		add	check_b_i	check_b_i	num1
		be	check_end	check_b_i	num64
		be	blank!		piece_type	num0
		call	get_moves	get_moves_ret
blank_back	add	check_i		check_i		num1
		be	check_loop2	0		0
check_yes	cp	in_check	num1				// king is in check
		be	check_end2	0		0
check_end	cp	in_check	num0				// king is not in check
check_end2	cp	check_i		num0
		cp	check_b_i	num0
		cp	check_current	num0
		ret	check_ret
		
find_king	cpfa	temp		board		find_i
		be	king_white	temp		num11
		be	king_black	temp		num12
		add	find_i		find_i		num1
		blt	find_king	find_i		num64
		be	fk_ERROR	0		0
king_white	be	king_found	turn		TURN_WHITE
		add	find_i		find_i		num1
		be	find_king	0		0
king_black	be	king_found	turn		TURN_BLACK
		add	find_i		find_i		num1
		be	find_king	0		0
king_found	cp	king_loc	find_i
		cp	find_i		num0
		ret	find_king_ret
		
fk_ERROR	out	1		31				// There are no kings on board

convert_num	div	temp		check_b_i	num8
		add	row		temp		num1
		mult	temp1		temp		num8
		sub	temp		check_b_i	temp1		// remainder
conv_sub	sub	temp		temp		num1
		add	conv_i		conv_i		num1
		blt	conv_end	temp		num0
		be	conv_sub	0		0
conv_end	cp	column		conv_i
		cp	conv_i		num0
		ret	conv_num_ret

blank!		cpta	num0		moves_board	blank_i		// get_moves does not work for blank squares, so fill moves_board with 0
		add	blank_i		blank_i		num1
		blt	blank!		blank_i		num64
		cp	blank_i		num0
		be	blank_back	0		0

check_i		.data	0
check_b_i	.data	0
find_i		.data	0
blank_i		.data	0
check_current	.data	0
king_loc	.data	0
check_ret	.data	0
in_check	.data	0
conv_num_ret	.data	0
conv_i		.data	0
find_king_ret	.data	0
