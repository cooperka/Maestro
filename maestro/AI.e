// Logic for artificial intelligence, doesn't quite work as well as we would like
// always works when there is a piece to attack or king to check, but the random moves appear to be illegal sometimes

AI		call	check		check_ret
		be	GET_OUT!	in_check	num1
		call	find_mate	find_mate_ret
		be	make_AI_move	move_found	num1
		call	find_check	find_check_ret
		be	make_AI_move	move_found	num1
		call	find_kill	find_kill_ret
		be	make_AI_move	move_found	num1
		call	move_random	move_random_ret
make_AI_move	cpfa	temp		board		AI_move_to	//move piece to new position
		be	AI_skip_capt	temp		num0
		cp	captured_piece	temp
		call	disp_capture	disp_capture_ret
AI_skip_capt	cpfa	temp		board		AI_move_from
		cpta	temp		board		AI_move_to
		cpta	num0		board		AI_move_from
		call	disp_board	disp_board_ret
		ret	AI_ret
//--------------------------------------------------------------------------------------				
GET_OUT!	call	check_mate	check_mate_ret	// if the AI king is in check find a move to
							// get it out of check
		cp	AI_move_from	outs_start_from	
		cp	AI_move_to	outs_i	
		be	make_AI_move	0		0	
//---------------------------------------------------------------------------------------					
move_random	cp	mr_i		num0
		cp	AI_move_count	num0
		cp	AI_piece_count	num0

mr_loop		cpfa 	piece_type	board		mr_i // counts off AI pieces until a random number is reached
		be	mr_skip	piece_type		num0
		call	color_check	color_check_ret	
		bne	mr_skip	piece_col turn
		add	AI_piece_count	num1		AI_piece_count
mr_skip		add	mr_i		mr_i		num1
		bne	check_piece_count mr_i		num64
		cp	mr_i		num0	
check_piece_count bne	mr_loop		AI_piece_count	rand1-16

find_valid_loop cp	AI_move_from	mr_i		//makes sure the selected piece has a valid move
		cp	convert_from	mr_i
		call	convert_AI	convert_AI_ret
		call	get_moves	get_moves_ret
		call	check_for_move	check_for_move_ret
		be	piece_ok	valid_found	num1
		add	mr_i		mr_i		num1
		cpfa 	piece_type	board		mr_i
		be	find_valid_loop	0		0
	
piece_ok	cp	AI_move_from	mr_i
		cp	mr_i		num0
mr_loop2	cpfa	temp		moves_board	mr_i // counts valid moves until a random number is reached
		bne	mr_skip2	temp		num1
		add	AI_move_count	AI_move_count	num1
mr_skip2	be	mr_end		AI_move_count	rand0-6
		add	mr_i		mr_i		num1
		bne	mr_loop2	mr_i		num64
		cp	mr_i		num0
		be	mr_loop2	0		0
		
mr_end		cp	AI_move_to	mr_i	
		ret	move_random_ret		
//------------------------------------------------------------------------------------------	
find_kill 	cp	fk_i		num0	// finds an opposing piece which can be captured
		cp	move_found	num0	
fk_loop		cpfa	piece_type	board		fk_i // loops through the board to check all AI pieces
		be	fk_skip	piece_type		num0
		call	color_check	color_check_ret	
		bne	fk_skip	turn	piece_col
		cp	convert_from	fk_i
		call	convert_AI	convert_AI_ret
		call	get_moves	get_moves_ret	
		cp	fk_i2		num0	
fk_loop2	cpfa	temp		moves_board	fk_i2 // checks the valid moves of the selected piece to see if it is occupied
		be	fk_skip2	temp		num0
		cpfa	piece_type	board		fk_i2
		be	fk_skip2	piece_type	num0
		call	color_check	color_check_ret	
		be	fk_skip2	piece_col	turn
		cp	move_found	num1
		cp	AI_move_from	fk_i	
		cp	AI_move_to	fk_i2	
		be	fk_end		0		0
fk_skip2	add	fk_i2		fk_i2		num1
		bne	fk_loop2	num64		fk_i2
fk_skip		add	fk_i		fk_i		num1
		bne	fk_loop	num64	fk_i
fk_end		ret	find_kill_ret
//---------------------------------------------------------------------------------------------
find_mate	call	set_ret_board	set_ret_board_ret	
		cp	fm_i		num0	
		cp	move_found	num0	
fm_loop		cpfa	piece_type	board		fm_i // loops through all AI pieces
		be	fm_skip		piece_type	num0
		call	color_check	color_check_ret	
		bne	fm_skip	turn	piece_col
		cp	convert_from	fm_i
		call	convert_AI	convert_AI_ret
		call	get_moves	get_moves_ret	
		cp	fm_i2		num0	
fm_loop2	cpfa	temp		moves_board	fm_i2	//checks all valid moves to see if any will checkmate opponent
		be	fm_skip2	temp		num0
		cpta	piece_type	board		fm_i2
		cpta	num0		board		fm_i
		call	switch_turn	switch_turn_ret
			call		check_mate	check_mate_ret
		call	switch_turn	switch_turn_ret
		call	reset_ret_board	reset_ret_board_ret
		be	fm_skip2	in_mate	num0
		cp	move_found	num1	
		cp	AI_move_from	fm_i	
		cp	AI_move_to	fm_i2	
		be	fm_end		0		0
fm_skip2	add	fm_i2		fm_i2		num1
		bne	fm_loop2	num64		fm_i2
fm_skip		add	fm_i		fm_i		num1
		bne	fm_loop	num64	fm_i
fm_end		ret	find_mate_ret				
//------------------------------------------------------------------------------------------------
find_check	call	set_ret_board	set_ret_board_ret
		cp	fc_i		num0	
		cp	move_found	num0
		call	switch_turn	switch_turn_ret
		call	find_king	find_king_ret
		call	switch_turn	switch_turn_ret	
fc_loop		cpfa	piece_type	board		fc_i // loops through all AI pieces
		be	fc_skip		piece_type	num0
		call	color_check	color_check_ret	
		bne	fc_skip	turn	piece_col
		cp	convert_from	fc_i
		call	convert_AI	convert_AI_ret
		call	get_moves	get_moves_ret	
		cp	fc_i2		num0	
fc_loop2	cpfa	temp		moves_board	fc_i2 //checks all valid moves
		be	fc_skip2	temp		num0
		cpta	piece_type	board		fc_i2
		cpta	num0		board		fc_i
		cp	convert_from	fc_i2
		call	convert_AI	convert_AI_ret
		call	get_moves	get_moves_ret
		cp	fc_i3		num0
fc_loop3	cpfa	temp		moves_board	fc_i3 // checks if any move from new position check the king
		be	fc_skip3	temp		num0
		bne	fc_skip3	fc_i3		king_loc
		cp	move_found	num1	
		cp	AI_move_from	fc_i	
		cp	AI_move_to	fc_i2	
		be	fc_end		0		0
fc_skip3	add	fc_i3		fc_i3		num1
		bne	fc_loop3	num64		fc_i3	
		call	reset_ret_board	reset_ret_board_ret
		cp	convert_from	fc_i
		call	convert_AI	convert_AI_ret
		call	get_moves	get_moves_ret
fc_skip2	add	fc_i2		fc_i2		num1
		bne	fc_loop2	num64		fc_i2
fc_skip		add	fc_i		fc_i		num1
		bne	fc_loop		num64		fc_i
fc_end		call	reset_ret_board	reset_ret_board_ret
		ret	find_check_ret	
//---------------------------------------------------------------------------------------------
convert_AI	div	temp		convert_from	num8	//converts a given AI index into row and column coordinates
		add	row		temp		num1
		mult	temp1		temp		num8
		sub	temp		convert_from	temp1		// remainder
conv_AI_sub	sub	temp		temp		num1
		add	conv_AI_i	conv_AI_i	num1
		blt	conv_AI_end	temp		num0
		be	conv_AI_sub	0		0
conv_AI_end	cp	column		conv_AI_i
		cp	conv_AI_i	num0
		ret	convert_AI_ret
//--------------------------------------------------------------------------------------------------
set_ret_board	cp	srb_i		num0	// stores a copy of the game board
srb_loop	cpfa	temp		board		srb_i
		cpta	temp		ret_board	srb_i
		add	srb_i		srb_i		num1
		bne	srb_loop	num64		srb_i
		ret	set_ret_board_ret
//---------------------------------------------------------------------------------------------------
reset_ret_board	cp	rrb_i		num0	// copies ret_board to game board
rrb_loop	cpfa	temp		ret_board	rrb_i
		cpta	temp		board		rrb_i
		add	rrb_i		rrb_i		num1
		bne	rrb_loop	num64		rrb_i
		ret	reset_ret_board_ret
//-------------------------------------------------------------------------------------------------
AI_ret		.data	0
find_mate_ret	.data	0
find_check_ret	.data	0
find_kill_ret	.data	0
move_random_ret	.data	0
AI_move_to	.data	0
AI_move_from	.data	0
mr_i		.data	0
AI_piece_count	.data	0
AI_move_count	.data	0
fk_i		.data	0
fk_i2		.data	0
fm_i		.data	0
fm_i2		.data	0
fc_i		.data	0
fc_i2		.data	0
fc_i3		.data	0
convert_from	.data	0
conv_AI_i	.data	0
convert_AI_ret	.data	0
srb_i		.data	0
rrb_i		.data	0
move_found	.data	0
set_ret_board_ret	.data	0
reset_ret_board_ret	.data	0
ret_board	.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
		.data	0
