// Post: in_mate is 1 if someone is in checkmate, otherwise it is 0

check_mate	cp	in_mate		num0
		call	find_king	find_king_ret
		call	check		check_ret
		be	check_mate_end	in_check	num0
		cp	in_mate		num1	
		cp	mate_i		num0	
mate_loop	cpfa 	piece_type	board		mate_i
		be	mate_skip	piece_type	num0
		call	color_check	color_check_ret	
		bne	mate_skip	turn		piece_col
		cp	outs_start_from	mate_i	
		call	check_outs	check_outs_ret	
mate_skip	add	mate_i		mate_i		num1
		be	check_mate_end	num0		in_mate
		bne	mate_loop	mate_i		num64
check_mate_end	ret	check_mate_ret		
		
check_outs	cp	outs_i		num0	
		call	convert_i	conv_i_ret	
		call	get_moves	get_moves_ret
		call	set_outs_board	set_outs_board_ret	
outs_loop	cpfa 	outs_temp	moves_board	outs_i
		be	outs_skip	outs_temp	num0
		cpta	num0		board		outs_start_from
		cpta	piece_type	board		outs_i
		call	find_king	find_king_ret
		call	check		check_ret
		call	reset_board	reset_board_ret	
		be	outs_skip	in_check	num1
		cp	in_mate		num0	
outs_skip	be	outs_end	in_mate		num0
		add	outs_i		outs_i		num1
		bne	outs_loop	outs_i		num64
outs_end	ret	check_outs_ret
	
reset_board	cp	rb_i		num0
rb_loop		cpfa	temp		outs_board	rb_i
		cpta	temp		board		rb_i
		add	rb_i		rb_i		num1
		bne	rb_loop	num64	rb_i
		ret	reset_board_ret					

set_outs_board	cp	sob_i		num0	
sob_loop	cpfa	temp		board		sob_i
		cpta	temp		outs_board	sob_i
		add	sob_i		sob_i		num1
		bne	sob_loop	num64		sob_i
		ret	set_outs_board_ret	
			
color_check	be	color2		piece_type	PIECE_B_PAWN
		be	color2		piece_type	PIECE_B_ROOK
		be	color2		piece_type	PIECE_B_KNIGHT
		be	color2		piece_type	PIECE_B_QUEEN
		be	color2		piece_type	PIECE_B_BISHOP
		be	color2		piece_type	PIECE_B_KING
		cp	piece_col	num1	
		ret	color_check_ret		
color2		cp	piece_col	num2	
		ret	color_check_ret
			
convert_i	div	temp		outs_start_from	num8
		add	row		temp		num1
		mult	temp1		temp		num8
		sub	temp		outs_start_from	temp1		// remainder
conv_i_sub	sub	temp		temp		num1
		add	conv_i		conv_i		num1
		blt	conv_i_end	temp		num0
		be	conv_i_sub	0		0
conv_i_end	cp	column		conv_i
		cp	conv_i		num0
		ret	conv_i_ret

conv_i_ret	.data	0			
check_outs_ret	.data	0
check_mate_ret	.data	0
rb_i		.data	0
reset_board_ret	.data	0							
piece_col	.data	0		
color_check_ret	.data	0				
sob_i		.data	0		
set_outs_board_ret	.data	0		
outs_i		.data	0		
outs_temp	.data	0		
outs_start_from	.data	0		
in_mate		.data	0		
mate_i		.data	0		
outs_board	.data	0		
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
