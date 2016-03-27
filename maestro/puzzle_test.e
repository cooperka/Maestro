// Contains the code for puzzle mode
// Implements the same flow as AI mode, only loads the next puzzle from file rather than "deciding" what to do
// see AI_test.e for comments

puzzle_mode	add	vga_x1		num0		num0
		add	vga_y1		num0		num0
		add	vga_x2		num639		num0
		add	vga_y2		num479		num0
		add	vga_color	COLOR_L		num0
		call	vga_driver	vga_return
		
		//cp	rand0-6		num0		// for testing only
		cp	puzzle_num	rand0-6		// rand0-6 is a random number created in draw_mouse.e
		
		call	copy_puzzle	copy_puzzle_ret
		call	button_draw	bd_ret
		call	disp_board	disp_board_ret
//------------------------------------------------------------------------------------------			
puzzle_start	be	do_player	turn		TURN_WHITE
		be	do_puzzle	turn		TURN_BLACK
do_player	call	player_move	player_move_ret
		call	puzzle_valid	pv_ret
		be	puzzle_go_undo	puz_valid_yes	num0
		call	switch_turn	switch_turn_ret			// (function found in player_test.e)
		be	puzzle_start	0		0
puzzle_go_undo	call	delay		delay_ret
		call	delay		delay_ret
		call	undo_move	undo_move_ret
		call	switch_turn	switch_turn_ret
		call	disp_board	disp_board_ret
		be	puzzle_start	0		0
do_puzzle	add	p_index_global	p_index_global	num64
		blt	next_puzz	p_index_global	p_end_global
		//ret	puzzle_mode_ret
		call	cm_draw		cm_draw_ret
		cp	p_checkmate	num1
puzzle_wait	call	draw_mouse	draw_mouse_ret
		be	puzzle_wait	0		0
		
next_puzz	call	delay		delay_ret
		call	delay		delay_ret
		cp	np_i		p_index_global
		add	np_end		np_i		num64
		cp	p_index_global	np_end
np_loop		cpfa	temp		board_puzzles	np_i
		cpta	temp		board		np_k
		add	np_i		np_i		num1
		add	np_k		np_k		num1
		bne	np_loop		np_i		np_end
		cp	np_k		num0
		call	disp_board	disp_board_ret
		call	switch_turn	switch_turn_ret			// (function found in player_test.e)
		be	puzzle_start	0		0
			
np_i		.data	0
np_k		.data	0
np_end		.data	0
puzzle_mode_ret	.data	0
p_checkmate	.data	0
