// sets 'row' and 'column' to the correct value based on the piece you have selected
// row and column are then used by get_moves.e
// if you have clicked on a button rather than a piece, calls the corresponding function

get_coord	blt	end		COL8_x		click_1x
		blt	end		click_1x	board_left
		blt	end		click_1y	board_top
		blt	below		ROW8_y		click_1y	
		blt	set_row1	click_1y	ROW1_y
		blt	set_row2	click_1y	ROW2_y
		blt	set_row3	click_1y	ROW3_y
		blt	set_row4	click_1y	ROW4_y
		blt	set_row5	click_1y	ROW5_y
		blt	set_row6	click_1y	ROW6_y
		blt	set_row7	click_1y	ROW7_y
		blt	set_row8	click_1y	ROW8_y
set_row1	cp	row		num1	
		be	set_col		0		0
set_row2	cp	row		num2	
		be	set_col		0		0
set_row3	cp	row		num3	
		be	set_col		0		0
set_row4	cp	row		num4	
		be	set_col		0		0
set_row5	cp	row		num5
		be	set_col		0		0	
set_row6	cp	row		num6	
		be	set_col		0		0
set_row7	cp	row		num7	
		be	set_col		0		0
set_row8	cp	row		num8		
set_col		blt	set_col1	click_1x	COL1_x
		blt	set_col2	click_1x	COL2_x
		blt	set_col3	click_1x	COL3_x
		blt	set_col4	click_1x	COL4_x
		blt	set_col5	click_1x	COL5_x
		blt	set_col6	click_1x	COL6_x
		blt	set_col7	click_1x	COL7_x
		blt	set_col8	click_1x	COL8_x
set_col1	cp	column		num1
		be	set_coord	0		0	
set_col2	cp	column		num2	
		be	set_coord	0		0
set_col3	cp	column		num3	
		be	set_coord	0		0
set_col4	cp	column		num4	
		be	set_coord	0		0
set_col5	cp	column		num5	
		be	set_coord	0		0
set_col6	cp	column		num6	
		be	set_coord	0		0
set_col7	cp	column		num7	
		be	set_coord	0		0
set_col8	cp	column		num8	
set_coord 	ret	get_coord_ret
end		cp	row		num-1	
		cp	column		num-1	
		ret	get_coord_ret	
		
below		blt	end		num465		click_1y	// buttons
		blt	end		click_1y	num423
		blt	end		num470		click_1x
		blt	end		click_1x	num170
		blt	call_undo	num390		click_1x
		blt	call_mm		click_1x	num250
		be	end		0		0
call_undo	//be	call_mm		p_checkmate	num1		// don't allow undo if the game is over (commented out purposely)
		call	undo_move	undo_move_ret
		//ret	player_move_ret
		ret	get_coord_ret
call_mm		be	one_ret		mode		MODE_ONE	// return using the correct address
		be	two_ret		mode		MODE_TWO
		be	puzz_ret	mode		MODE_PUZZ
one_ret		ret	one_player_mode_ret
two_ret		ret	two_player_mode_ret
puzz_ret	ret	puzzle_mode_ret
		
row		.data	0
column		.data	0
ROW1_y		.data	55
ROW2_y		.data	105
ROW3_y		.data	155
ROW4_y		.data	205
ROW5_y		.data	255
ROW6_y		.data	305
ROW7_y		.data	355
ROW8_y		.data	405
COL1_x		.data	170
COL2_x		.data	220
COL3_x		.data	270
COL4_x		.data	320
COL5_x		.data	370
COL6_x		.data	420
COL7_x		.data	470
COL8_x		.data	520
board_left	.data	120
board_top	.data	5
get_coord_ret	.data	0
