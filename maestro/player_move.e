// lots of logic concerning piece moves

player_move	call	draw_mouse		draw_mouse_ret			// calls draw_mouse infinitely, until draw_mouse calls make_move
		be	player_move		0			0
		
make_move	be	sp_end			row			num-1
		call	get_index		get_index_ret
		be	move_piece		step			num2
select_piece	cpfa	piece_type		board			gi_index
		be	sp_end			piece_type		num0
		call	check_color		check_color_ret
		be	sp_end			num0			right_color
		call	get_moves		get_moves_ret
		call	show_moves		show_moves_ret
		call	draw_border		draw_border_ret
		cp	step			num2
		cp	selected_i		gi_index
sp_end		ret	make_move_ret
move_piece	cpfa	temp			moves_board		gi_index
		be	comp_move		temp			num1
		call	disp_board		disp_board_ret
		cp	step			num1
		ret	make_move_ret
comp_move	call	shift_boards		shift_boards_ret
		cpfa 	temp			board			gi_index
		be	skip_capt		temp			num0
		cp	captured_piece		temp
		call	disp_capture		disp_capture_ret			// display piece on side of board
skip_capt	cpta	piece_type		board			gi_index
		cpta	num0			board			selected_i
		cp	step			num1
		call	disp_board		disp_board_ret
		be	promotion		piece_type		PIECE_W_PAWN
		be	promotion		piece_type		PIECE_B_PAWN
comp_move_end	ret	player_move_ret

promotion	call	promote_pawn		promote_pawn_ret			// turns pawn into queen at end of board
		be	comp_move_end		0			0

get_index	cp	temp_col		column
		cp	temp_row		row
		sub	temp_row		temp_row		num1
		sub	temp_col		temp_col		num1
		mult	gi_index		temp_row		num8
		add	gi_index		gi_index		temp_col
		ret	get_index_ret
		
shift_boards	cp	undo_i			num0
shift_boards_loop cpfa	temp			board			undo_i
		cpta	temp			board_undo		undo_i
		add	undo_i			num1			undo_i
		bne	shift_boards_loop	num64			undo_i
		ret	shift_boards_ret
check_color	be	black_moving		turn			TURN_BLACK		// attacking enemy pieces OK, attacking your own piece not legal
		be	move_ok			piece_type		PIECE_W_PAWN
		be	move_ok			piece_type		PIECE_W_ROOK
		be	move_ok			piece_type		PIECE_W_BISHOP
		be	move_ok			piece_type		PIECE_W_KNIGHT
		be	move_ok			piece_type		PIECE_W_KING
		be	move_ok			piece_type		PIECE_W_QUEEN
		be	move_not_ok		0			0
black_moving	be	move_ok			piece_type		PIECE_B_PAWN
		be	move_ok			piece_type		PIECE_B_ROOK
		be	move_ok			piece_type		PIECE_B_BISHOP
		be	move_ok			piece_type		PIECE_B_KNIGHT
		be	move_ok			piece_type		PIECE_B_KING
		be	move_ok			piece_type		PIECE_B_QUEEN
		be	move_not_ok		0			0
move_ok		cp	right_color		num1
		ret	check_color_ret
move_not_ok	cp	right_color		num0
		ret	check_color_ret
		
get_index_ret 	.data 	0
step		.data 	1
piece_type	.data	0
gi_index	.data	0
check_color_ret	.data	0
right_color	.data	0
get_moves_ret	.data	0
show_moves_ret	.data	0
selected_i	.data	0
make_move_ret	.data	0
shift_boards_ret .data	0
player_move_ret	.data	0
temp_col	.data	0
temp_row	.data	0
undo_i		.data	0
captured_piece	.data	0
moves_i		.data	0
moves_board	.data	0
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
