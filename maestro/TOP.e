// Every include is in this file, and this is what we run.
// ALL FILES ARE MEANT TO BE VIEWED WITH TAB LENGTH OF 8 SPACES

		call	ram_init	ram_init_ret		// Initialize the sdram from SD card
TOP!:)		call	draw_main	draw_main_ret		// draw the main screen
		cp	mm_flag		num1			// tells that the title menu is active
		cp	just_drawn	num1			// bug-prevention for mouse draw
top_draw	call	draw_mouse	draw_mouse_ret		// continually call draw_mouse until a button is clicked
		be	top_draw	0		0

#include variables.e
#include player_test.e
#include AI_test.e
#include puzzle_test.e
#include player_move.e
#include undo_move.e
#include check.e
#include check_mate.e
#include copy_puzzle.e
#include puzzle_valid.e
#include board_puzzles.e
#include disp_capture.e
#include mouse_driver.e
#include vga_driver.e
#include sd_driver.e
#include sdram_driver.e
#include get_moves.e
#include board_start.e
#include draw_piece.e
#include set_sdram.e
#include disp_board.e
#include draw_mouse.e
#include ram_init.e
#include piece_array.e
#include show_moves.e
#include piece.e
#include button_draw.e
#include get_coord.e
#include copy_board.e
#include promote_pawn.e
#include draw_border.e
#include main_menu_click.e
#include AI.e
#include undo_capture.e
#include draw_main.e
#include check_for_move.e
#include mouseover.e
#include cm_draw.e
#include delay.e
