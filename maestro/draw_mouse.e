// first draws the saved mouse_old image over the current mouse
// then saves the pixels where the mouse will be redrawn into mouse_old, then draws the mouse there
// also calls mouseover, main_menu_click, get_coord, make_promotion, make_move
// Post: click_(1,2,3)(x,y) are all set to the coordinates where a click first happened with each of the buttons (however only left button is used in the program)
// Post: mouse_(x,y) are set to the value of the x and y coordinates

draw_mouse	add	rand1-16	rand1-16	num1	// For random numbers
		bne	skip_rand	rand1-16	num17
		cp	rand1-16	num1
skip_rand	add	rand0-6		rand0-6		num1
		bne	skip_rand2	rand0-6		num7
		cp	rand0-6		num0
skip_rand2	cp	x_old		mouse_x
		cp	y_old		mouse_y
		call	mouse_driver	mouse_return
		add	mouse_x		mouse_x		mouse_dx
		add	mouse_y		mouse_y		mouse_dy
skip0		blt	skip1		num0		mouse_x
		be	less_x		0		0
skip1		blt	skip2		num0		mouse_y
		be	less_y		0		0
skip2		blt	skip3		mouse_x		num638
		be	great_x		0		0
skip3		blt	skip4		mouse_y		num478
		be	great_y		0		0
skip4		call	mouseover	mouseover_ret		// animate buttons
		be	no_recolor	just_drawn	num1	// don't cover up the old mouse if the screen was just redrawn, because there is no old mouse anymore
		call	re_color	re_color_ret		// cover up the old mouse
		be	skip_no_re	0		0
no_recolor	call	save_color	re_color_ret
skip_no_re	cp	just_drawn	num0
		add	vga_x1		mouse_x		num0
		add	vga_y1		mouse_y		num0
		add	vga_x2		mouse_x		num3
		add	vga_y2		mouse_y		num3
		cp	vga_color	RED
		call	vga_driver	vga_return
		add	vga_x1		mouse_x		num1
		add	vga_y1		mouse_y		num1
		add	vga_x2		mouse_x		num2
		add	vga_y2		mouse_y		num2
		cp	vga_color	GREEN
		call	vga_driver	vga_return
		//sl	mouse_b1	mouse_b1	num2		// for displaying button clicks on LED
		//sl	mouse_b2	mouse_b2	num1
		//add	mouse_B		mouse_b1	mouse_b2
		//add	mouse_B		mouse_B		mouse_b3
		//out	1		mouse_B
		bne	dm_not1		mouse_b1	num1		// Check if mouse buttons are pressed (but only left-button is used elsewhere)
		be	dm_ret1		still_b1	num1
		cp	click_1x	mouse_x
		cp	click_1y	mouse_y
		cp	still_b1	num1				// still_b(1,2,3) is whether it was already down, if so don't recopy the x,y coords of click
		be	mm_skip		mm_flag		num0
		call	main_menu_click	main_menu_click_ret		// checks if you clicked on the main menu
mm_skip		call	get_coord	get_coord_ret			// checks if you clicked a piece or game buttons
		be	back_to_move	promote_possible num0
		call	make_promotion	make_promotion_ret		// promotes a pawn to queen at end of board
back_to_move	be	dm_ret1		p_checkmate	num1
		call	make_move	make_move_ret			// make_move is in player_move.e
dm_ret1		bne	dm_not2		mouse_b2	num1
		be	dm_ret2		still_b2	num1
		cp	click_2x	mouse_x
		cp	click_2y	mouse_y
		cp	still_b2	num1
dm_ret2		bne	dm_not3		mouse_b3	num1
		be	dm_ret3		still_b3	num1
		cp	click_3x	mouse_x
		cp	click_3y	mouse_y
		cp	still_b3	num1
dm_ret3		ret	draw_mouse_ret
dm_not1		cp	still_b1	num0
		be	dm_ret1		0		0
dm_not2		cp	still_b2	num0
		be	dm_ret2		0		0
dm_not3		cp	still_b3	num0
		be	dm_ret3		0		0
less_x		cp	mouse_x		num0			// constrain mouse to [0,639] by [0,479]
		be	skip1		0		0
less_y		cp	mouse_y		num0
		be	skip2		0		0
great_x		cp	mouse_x		num638
		be	skip3		0		0
great_y		cp	mouse_y		num478
		be	skip4		0		0
		
re_color	mult	re_y_temp	re_y_curr	num4		// draw over old mouse
		add	mouse_i		re_x_curr	re_y_temp
		add	vga_x1		re_x_curr	x_old
		add	vga_y1		re_y_curr	y_old
		add	vga_x2		re_x_curr	x_old
		add	vga_y2		re_y_curr	y_old
		cpfa	vga_color	mouse_old	mouse_i
		call	vga_driver	vga_return
		add	re_x_curr	re_x_curr	num1
		bne	re_color	re_x_curr	num4
		cp	re_x_curr	num0
		add	re_y_curr	re_y_curr	num1
		bne	re_color	re_y_curr	num4
		cp	re_y_start	num0
		cp	re_x_curr	num0
		cp	re_y_curr	num0
save_color	mult	re_y_temp	re_y_curr	num4		// save pixels at soon-to-be location of mouse
		add	mouse_i		re_x_curr	re_y_temp
		add	vga_x1		re_x_curr	mouse_x
		add	vga_y1		re_y_curr	mouse_y
		add	vga_x2		re_x_curr	mouse_x
		add	vga_y2		re_y_curr	mouse_y
		cp	vga_write	num0
		call	vga_driver	vga_return
		cpta	vga_color_read	mouse_old	mouse_i
		add	re_x_curr	re_x_curr	num1
		bne	save_color	re_x_curr	num4
		cp	re_x_curr	num0
		add	re_y_curr	re_y_curr	num1
		bne	save_color	re_y_curr	num4
		cp	re_y_start	num0
		cp	re_x_curr	num0
		cp	re_y_curr	num0
		cp	vga_write	num1
		ret	re_color_ret
		
mouse_b1	.data	0
mouse_b2	.data	0
mouse_b3	.data	0
mouse_B		.data	0
still_b1	.data	0
still_b2	.data	0
still_b3	.data	0
re_color_ret	.data	0
re_y_start	.data	0
re_x_curr	.data	0
re_y_curr	.data	0
re_y_temp	.data	0
mouse_i		.data	0
x_old		.data	0
y_old		.data	0
mouse_old	.data	209	// 4 x 4 array of last mouse colors
		.data	209
		.data	209
		.data	209
		.data	209
		.data	209
		.data	209
		.data	209
		.data	209
		.data	209
		.data	209
		.data	209
		.data	209
		.data	209
		.data	209
		.data	209
draw_mouse_ret	.data	0
