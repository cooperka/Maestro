// animates buttons on mouseover!

mouseover	be	mo_mm		mm_flag		num1
mo_game		blt	mo_end		num465		mouse_y		// buttons in-game
		blt	mo_end		mouse_y		num423
		blt	mo_end		num470		mouse_x
		blt	mo_end		mouse_x		num170
		blt	mo_undo		num390		mouse_x
		blt	mo_main		mouse_x		num250
		be	mo_end		0		0
		
mo_mm		blt	mo_end		mouse_x		FAR_LEFT	// buttons on main menu
		blt	mo_end		FAR_RIGHT	mouse_x
		blt	mo_end		mouse_y		BUTTONS_TOP
		blt	mo_end		BUTTONS_BOTTOM	mouse_y
		blt	mo_two		mouse_x		TWO_PLAYER_R
		blt	mo_puzz		PUZZLE_L	mouse_x
		blt	mo_end		mouse_x		ONE_PLAYER_L
		blt	mo_one		mouse_x		ONE_PLAYER_R
mo_end		be	undraw_skip	border_drawn	num0
		be	mo_undraw	0		0		// remove the border that was drawn before when mouse leaves button
undraw_skip	cp	border_drawn	num0
mo_end2		ret	mouseover_ret

mo_two		be	mo_end2		border_drawn	num1		// don't do anything if there's already a border
		cp	mo_x1		FAR_LEFT			// boundaries of the button
		cp	mo_y1		BUTTONS_TOP
		cp	mo_x2		TWO_PLAYER_R
		cp	mo_y2		BUTTONS_BOTTOM
		be	mo_draw_color	0		0
mo_one		be	mo_end2		border_drawn	num1
		cp	mo_x1		ONE_PLAYER_L
		cp	mo_y1		BUTTONS_TOP
		cp	mo_x2		ONE_PLAYER_R
		cp	mo_y2		BUTTONS_BOTTOM
		be	mo_draw_color	0		0
mo_puzz		be	mo_end2		border_drawn	num1
		cp	mo_x1		PUZZLE_L
		cp	mo_y1		BUTTONS_TOP
		cp	mo_x2		FAR_RIGHT
		cp	mo_y2		BUTTONS_BOTTOM
		be	mo_draw_color	0		0
mo_main		be	mo_end2		border_drawn	num1
		cp	mo_x1		num170
		cp	mo_y1		num420
		cp	mo_x2		num251
		cp	mo_y2		num471
		be	mo_draw_color	0		0
mo_undo		be	mo_end2		border_drawn	num1
		cp	mo_x1		num390
		cp	mo_y1		num420
		cp	mo_x2		num471
		cp	mo_y2		num471
		be	mo_draw_color	0		0

mo_draw_color	cp	vga_x1		mo_x1			// 1 pixel big
		cp	vga_y1		mo_y1
		cp	vga_x2		mo_x1
		cp	vga_y2		mo_y1
		cp	vga_color	BLUE
mo_draw		bne	mo_skip		vga_y1		mo_y2	// current y coord is not at the end
		be	mo_rr		0		0
mo_skip		cp	vga_write	num0
		call	vga_driver	vga_return
		cp	vga_write	num1
		bne	no_mo		vga_color_read	num0
		call	vga_driver	vga_return
no_mo		add	vga_x1		vga_x1		num1
		add	vga_x2		vga_x2		num1
		bne	mo_draw		vga_x1		mo_x2	// current x coord is not at the end
		cp	vga_x1		mo_x1			// start x over from beginning
		cp	vga_x2		mo_x1
		add	vga_y1		vga_y1		num1
		add	vga_y2		vga_y2		num1
		be	mo_draw		0		0
mo_rr		cp	border_drawn	num1			// so it doesn't get drawn over and over along with mouse
		ret	mouseover_ret
		
mo_undraw	cp	vga_x1		mo_x1			// 1 pixel big
		cp	vga_y1		mo_y1
		cp	vga_x2		mo_x1
		cp	vga_y2		mo_y1
		cp	vga_color	num0
mo_draw2	bne	mo_skip2	vga_y1		mo_y2	// current y coord is not at the end
		be	mo_rr2		0		0
mo_skip2	cp	vga_write	num0
		call	vga_driver	vga_return
		cp	vga_write	num1
		bne	no_mo2		vga_color_read	BLUE
		call	vga_driver	vga_return
no_mo2		add	vga_x1		vga_x1		num1
		add	vga_x2		vga_x2		num1
		bne	mo_draw2	vga_x1		mo_x2	// current x coord is not at the end
		cp	vga_x1		mo_x1			// start x over from beginning
		cp	vga_x2		mo_x1
		add	vga_y1		vga_y1		num1
		add	vga_y2		vga_y2		num1
		be	mo_draw2	0		0
mo_rr2		cp	border_drawn	num0			// so it doesn't get drawn over and over along with mouse
		ret	mouseover_ret

mouseover_ret	.data	0
mo_x1		.data	0
mo_y1		.data	0
mo_x2		.data	0
mo_y2		.data	0
border_drawn	.data	0
