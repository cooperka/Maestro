// called by draw_mouse.e
// determines if a click happened on one of the buttons on the main menu screen
// if so, calls appropriate function

main_menu_click		cp	step		num1				// determine which button it is (if any)
			blt	mm_end		click_1x	FAR_LEFT
			blt	mm_end		FAR_RIGHT	click_1x
			blt	mm_end		click_1y	BUTTONS_TOP
			blt	mm_end		BUTTONS_BOTTOM	click_1y
			blt	two_player_call	click_1x	TWO_PLAYER_R
			blt	puzzle_call	PUZZLE_L	click_1x
			blt	mm_end		click_1x	ONE_PLAYER_L
			blt	one_player_call	click_1x	ONE_PLAYER_R
mm_end			ret	main_menu_click_ret

one_player_call		cp	mm_flag		num0				// no longer on the main menu screen
			cp	mode		MODE_ONE
			call	one_player_mode	one_player_mode_ret
			be	TOP!:)		0		0
				
two_player_call		cp	mm_flag		num0				// no longer on the main menu screen
			cp	mode		MODE_TWO
			call	two_player_mode	two_player_mode_ret
			be	TOP!:)		0		0
				
puzzle_call		cp	mm_flag		num0				// no longer on the main menu screen
			cp	mode		MODE_PUZZ
			call	puzzle_mode			puzzle_mode_ret
			be	TOP!:)		0		0
				
FAR_LEFT		.data	20
FAR_RIGHT		.data	620
BUTTONS_TOP		.data	188
BUTTONS_BOTTOM		.data	303
TWO_PLAYER_R		.data	193
PUZZLE_L		.data	447
ONE_PLAYER_L		.data	233
ONE_PLAYER_R		.data	407
main_menu_click_ret	.data	0
mm_flag			.data	0
