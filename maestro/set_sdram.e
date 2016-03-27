// Pre: square is set to the piece value of the individual square being currently looked at to draw
// Post: Assigns manually determined values to sdr_(x, y)_(start, end) in order to read image from SDRAM

set_sdram	be	select_light	vga_color	COLOR_L
		be	select_dark	vga_color	COLOR_D

select_light	be	cp_b_bishop_l	square		PIECE_B_BISHOP
		be	cp_w_bishop_l	square		PIECE_W_BISHOP
		be	cp_b_knight_l	square		PIECE_B_KNIGHT
		be	cp_w_knight_l	square		PIECE_W_KNIGHT
		be	cp_b_castle_l	square		PIECE_B_ROOK
		be	cp_w_castle_l	square		PIECE_W_ROOK
		be	cp_b_king_l	square		PIECE_B_KING
		be	cp_w_king_l	square		PIECE_W_KING
		be	cp_b_queen_l	square		PIECE_B_QUEEN
		be	cp_w_queen_l	square		PIECE_W_QUEEN
		be	cp_b_pawn_l	square		PIECE_B_PAWN
		be	cp_w_pawn_l	square		PIECE_W_PAWN
		ret	set_sdram_ret
		
select_dark	be	cp_b_bishop_d	square		PIECE_B_BISHOP
		be	cp_w_bishop_d	square		PIECE_W_BISHOP
		be	cp_b_knight_d	square		PIECE_B_KNIGHT
		be	cp_w_knight_d	square		PIECE_W_KNIGHT
		be	cp_b_castle_d	square		PIECE_B_ROOK
		be	cp_w_castle_d	square		PIECE_W_ROOK
		be	cp_b_king_d	square		PIECE_B_KING
		be	cp_w_king_d	square		PIECE_W_KING
		be	cp_b_queen_d	square		PIECE_B_QUEEN
		be	cp_w_queen_d	square		PIECE_W_QUEEN
		be	cp_b_pawn_d	square		PIECE_B_PAWN
		be	cp_w_pawn_d	square		PIECE_W_PAWN
		ret	set_sdram_ret

cp_b_bishop_l	cp	sdr_x_start	num452
		cp	sdr_y_start	num1
		cp	sdr_x_end	num904
		cp	sdr_y_end	num2
		ret	set_sdram_ret
	
cp_b_bishop_d	cp	sdr_x_start	num0
		cp	sdr_y_start	num0
		cp	sdr_x_end	num452
		cp	sdr_y_end	num1
		ret	set_sdram_ret
		
cp_b_knight_l	cp	sdr_x_start	num212
		cp	sdr_y_start	num6
		cp	sdr_x_end	num664
		cp	sdr_y_end	num7
		ret	set_sdram_ret
	
cp_b_knight_d	cp	sdr_x_start	num1808
		cp	sdr_y_start	num4
		cp	sdr_x_end	num212
		cp	sdr_y_end	num6
		ret	set_sdram_ret
			
cp_b_castle_l	cp	sdr_x_start	num876
		cp	sdr_y_start	num13
		cp	sdr_x_end	num1328
		cp	sdr_y_end	num14
		ret	set_sdram_ret
	
cp_b_castle_d	cp	sdr_x_start	num424
		cp	sdr_y_start	num12
		cp	sdr_x_end	num876
		cp	sdr_y_end	num13
		ret	set_sdram_ret
			
cp_b_king_l	cp	sdr_x_start	num1356
		cp	sdr_y_start	num3
		cp	sdr_x_end	num1808
		cp	sdr_y_end	num4
		ret	set_sdram_ret
	
cp_b_king_d	cp	sdr_x_start	num904
		cp	sdr_y_start	num2
		cp	sdr_x_end	num1356
		cp	sdr_y_end	num3
		ret	set_sdram_ret
		
cp_b_queen_l	cp	sdr_x_start	num2020
		cp	sdr_y_start	num10
		cp	sdr_x_end	num424
		cp	sdr_y_end	num12
		ret	set_sdram_ret
	
cp_b_queen_d 	cp	sdr_x_start	num1568
		cp	sdr_y_start	num9
		cp	sdr_x_end	num2020
		cp	sdr_y_end	num10
		ret	set_sdram_ret
				
cp_b_pawn_l	cp	sdr_x_start	num1116
		cp	sdr_y_start	num8
		cp	sdr_x_end	num1568
		cp	sdr_y_end	num9
		ret	set_sdram_ret
	
cp_b_pawn_d	cp	sdr_x_start	num664
		cp	sdr_y_start	num7
		cp	sdr_x_end	num1116
		cp	sdr_y_end	num8
		ret	set_sdram_ret
			
cp_w_bishop_l 	cp	sdr_x_start	num1780
		cp	sdr_y_start	num15
		cp	sdr_x_end	num184
		cp	sdr_y_end	num17
		ret	set_sdram_ret
	
cp_w_bishop_d	cp	sdr_x_start	num1328
		cp	sdr_y_start	num14
		cp	sdr_x_end	num1780
		cp	sdr_y_end	num15
		ret	set_sdram_ret
			
cp_w_knight_l	cp	sdr_x_start	num1540
		cp	sdr_y_start	num20
		cp	sdr_x_end	num1992
		cp	sdr_y_end	num21
		ret	set_sdram_ret
	
cp_w_knight_d	cp	sdr_x_start	num1088
		cp	sdr_y_start	num19
		cp	sdr_x_end	num1540
		cp	sdr_y_end	num20
		ret	set_sdram_ret
			
cp_w_castle_l	cp	sdr_x_start	num156
		cp	sdr_y_start	num28
		cp	sdr_x_end	num608
		cp	sdr_y_end	num29
		ret	set_sdram_ret
	
cp_w_castle_d	cp	sdr_x_start	num1752
		cp	sdr_y_start	num26
		cp	sdr_x_end	num156
		cp	sdr_y_end	num28
		ret	set_sdram_ret
			
cp_w_king_l	cp	sdr_x_start	num636
		cp	sdr_y_start	num18
		cp	sdr_x_end	num1088
		cp	sdr_y_end	num19
		ret	set_sdram_ret
	
cp_w_king_d	cp	sdr_x_start	num184
		cp	sdr_y_start	num17
		cp	sdr_x_end	num636
		cp	sdr_y_end	num18
		ret	set_sdram_ret
			
cp_w_queen_l	cp	sdr_x_start	num1300
		cp	sdr_y_start	num25
		cp	sdr_x_end	num1752
		cp	sdr_y_end	num26
		ret	set_sdram_ret
	
cp_w_queen_d 	cp	sdr_x_start	num848
		cp	sdr_y_start	num24
		cp	sdr_x_end	num1300
		cp	sdr_y_end	num25
		ret	set_sdram_ret
			
cp_w_pawn_l	cp	sdr_x_start	num396
		cp	sdr_y_start	num23
		cp	sdr_x_end	num848
		cp	sdr_y_end	num24
		ret	set_sdram_ret
	
cp_w_pawn_d	cp	sdr_x_start	num1992
		cp	sdr_y_start	num21
		cp	sdr_x_end	num396
		cp	sdr_y_end	num23
		ret	set_sdram_ret

set_sdram_ret	.data	0
