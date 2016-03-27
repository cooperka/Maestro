// Contains the code for two-player mode
// Implements the same flow as AI mode, only twice, one for each human
// see AI_test.e for comments

two_player_mode	add	vga_x1		num0		num0
		add	vga_y1		num0		num0
		add	vga_x2		num639		num0
		add	vga_y2		num479		num0
		add	vga_color	COLOR_L		num0
		call	vga_driver	vga_return
		call	copy_board	copy_board_ret
		call	disp_board	disp_board_ret
//------------------------------------------------------------------------------------------			
start		call	check_mate	check_mate_ret
		be	game_over	in_mate	num1
		call	player_move	player_move_ret
		call	find_king	find_king_ret
		call	check		check_ret
		be	go_undo		in_check	num1
		call	switch_turn	switch_turn_ret
		be	start		0		0
go_undo		call	undo_move	undo_move_ret
		be	start		0		0
		
game_over	call	cm_draw		cm_draw_ret
		cp	p_checkmate	num1
two_wait	call	draw_mouse	draw_mouse_ret
		be	two_wait	0		0
			
switch_turn	be	make_black	turn		num1
make_white	cp	turn		num1
		ret	switch_turn_ret
make_black	cp	turn		num2
		ret	switch_turn_ret

switch_turn_ret		.data	0
two_player_mode_ret	.data	0
