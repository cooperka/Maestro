// Undoes the last move, using the board_undo array

undo_move		cp	in_mate			num0		// reset flags
			cp	in_check		num0
			cp	undo_i			num0		// index
			cp	undo_board_pieces	num0		// individual square (from previous board), loops 0-63
			cp	board_pieces		num0		// individual square (current board), loops 0-63
undo_pc_count		cpfa	temp			board_undo		undo_i
			be	undo_pc_count_skip	temp			num0
			add	undo_board_pieces 	undo_board_pieces 	num1
undo_pc_count_skip	add	undo_i			num1			undo_i
			bne	undo_pc_count		num64			undo_i
			cp	undo_i			num0
board_pc_count		cpfa	temp			board			undo_i
			be	board_pc_count_skip	temp			num0
			add	board_pieces 		board_pieces 		num1
board_pc_count_skip	add	undo_i			num1			undo_i
			bne	board_pc_count		num64			undo_i
			cp	undo_i			num0
undo_move_loop		cpfa	temp			board_undo		undo_i
			cpta	temp			board			undo_i
			add	undo_i			num1			undo_i
			bne	undo_move_loop		num64			undo_i
			cp	undo_i			num0
			be	undo_move_end		undo_board_pieces	board_pieces
			be	uc			in_check		num0
			call	switch_turn		switch_turn_ret
uc			call	undo_capture		undo_capture_ret			// required for bug fixing
undo_move_end		be	no_switch		mode			MODE_ONE
			call	switch_turn		switch_turn_ret
no_switch		call	disp_board		disp_board_ret				// refresh the board to show the undone move
			ret	undo_move_ret

undo_move_ret		.data	0
undo_board_pieces 	.data	0
board_pieces		.data	0
