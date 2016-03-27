// This file contains the basic logic for running one-player mode

one_player_mode	add	vga_x1		num0		num0	// Blank the screen before drawing board
		add	vga_y1		num0		num0
		add	vga_x2		num639		num0
		add	vga_y2		num479		num0
		add	vga_color	COLOR_L		num0
		call	vga_driver	vga_return
		call	copy_board	copy_board_ret		// Copy the starting board
		call	button_draw	bd_ret			// main menu and undo buttons
		call	disp_board	disp_board_ret		// Display the board
//------------------------------------------------------------------------------------------			
AI_start	call	check_mate	check_mate_ret		// See if player is in checkmate
		be	game_over	in_mate		num1	// if they are, go to game over
switch_out2	call	player_move	player_move_ret		// otherwise wait for a move
		call	find_king	find_king_ret		// finds the position of the player's king
		call	check		check_ret		// sees if player is in check
		be	AI_go_undo	in_check	num1	// if they are, undo their move (illegal)
		call	switch_turn	switch_turn_ret		// switch turn to AI (function found in player_test.e)
		
		call	check_mate	check_mate_ret		// see if AI is in checkmate
		be	AI_game_over	in_mate		num1	// if they are, go to game over
		call	delay		delay_ret		// delay for asthethics
		call	AI		AI_ret			// make AI move
		call	switch_turn	switch_turn_ret		// switch turn to human (function found in player_test.e)
		
		be	AI_start	0		0	// repeat
		
AI_go_undo	call	undo_move	undo_move_ret		// undoes illegal move (putting yourself in check)
		//call	switch_turn	switch_turn_ret
		//call	disp_board	disp_board_ret		// displays the board
		be	AI_start	0		0	// start from beginning
		
AI_game_over	call	cm_draw		cm_draw_ret		// draws "checkmate!"
		cp	p_checkmate	num1			// don't allow undo or moves
one_wait	in	0		switch
		bne	ow_skip		switch		num1	// if switch 1 is on, bug-fix break out of checkmate
		cp	p_checkmate	num0
		be	switch_out2	0		0
ow_skip		call	draw_mouse	draw_mouse_ret		// draw mouse, wait for return to main menu
		be	one_wait	0		0	// loop

one_player_mode_ret	.data	0
