// converts a pawn to a queen once it reaches the end of the board
// called by player_move.e

promote_pawn	cp	promote_possible	num1
		cp	pawn_index		gi_index
		cp	change_num		num4			// set up to be able to change to whatever you want, but modified to only change to queen
		call	make_promotion		make_promotion_ret	
promote_end	cp	promote_possible	num0
		ret	promote_pawn_ret
				
make_promotion	blt	promote_w	pawn_index	num8
		blt	promote_b	num55		pawn_index
		be	promote_end	0		0

promote_loop	call	draw_mouse	draw_mouse_ret
		be	promote_loop	0		0
			
promote_w	call	get_index	get_index_ret
		bne	promote_end	gi_index	pawn_index
		call	change_w	change_w_ret
		be	promote_loop	0		0
				
change_w	be	change_w_rook	change_num	num1
		be	change_w_knight change_num	num2
		be	change_w_bishop change_num	num3
		be	change_w_queen	change_num	num4
				
change_w_rook	cpta	PIECE_W_ROOK 	board		pawn_index
		call	disp_board	disp_board_ret
		ret	change_w_ret
change_w_knight	cpta	PIECE_W_KNIGHT	board		pawn_index
		call	disp_board	disp_board_ret
		ret	change_w_ret
change_w_bishop	cpta	PIECE_W_BISHOP	board		pawn_index
		call	disp_board	disp_board_ret
		ret	change_w_ret
change_w_queen	cpta	PIECE_W_QUEEN	board		pawn_index	// turns pawn into queen
		call	disp_board	disp_board_ret
		ret	change_w_ret
				
promote_b	call	get_index	get_index_ret
		bne	promote_end	gi_index	pawn_index
		call	change_b	change_b_ret
		be	promote_loop	0		0
				
change_b	be	change_b_rook	change_num	num1
		be	change_b_knight change_num	num2
		be	change_b_bishop change_num	num3
		be	change_b_queen	change_num	num4
				
change_b_rook	cpta	PIECE_B_ROOK	board		pawn_index
		call	disp_board	disp_board_ret
		ret	change_b_ret
change_b_knight	cpta	PIECE_B_KNIGHT	board		pawn_index
		call	disp_board	disp_board_ret
		ret	change_b_ret
change_b_bishop	cpta	PIECE_B_BISHOP	board		pawn_index
		call	disp_board	disp_board_ret
		ret	change_b_ret
change_b_queen	cpta	PIECE_B_QUEEN	board		pawn_index	// turns pawn into queen
		call	disp_board	disp_board_ret
		ret	change_b_ret

promote_pawn_ret	.data	0
make_promotion_ret	.data	0
change_w_ret		.data	0
change_b_ret		.data	0
pawn_index		.data	0
change_num		.data	0
