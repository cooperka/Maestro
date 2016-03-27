// Most of the global variables used by our program
// Local variables are stored in the file that uses them
// CAPITAL variables are CONSTANT and will never change value

num0		.data	0
num1		.data	1
num2		.data	2
num3		.data	3
num4		.data	4
num5		.data	5
num6		.data	6
num7		.data	7
num8		.data	8
num9		.data	9
num10		.data	10
num11		.data	11
num12		.data	12
num13		.data	13
num14		.data	14
num15		.data	15	// increment for sdram
num16		.data	16
num17		.data	17
num18		.data	18
num19		.data	19
num20		.data	20
num21		.data	21
num22		.data	22
num23		.data	23
num24		.data	24
num25		.data	25
num26		.data	26
num27		.data	27
num28		.data	28	// Lime green mouse color
num29		.data	29	// sdram pieces y-max
num30		.data	30
num638		.data	638	// x-constraint on screen -1
num478		.data	478	// y-constraint on screen -1
num639		.data	639	// x-constraint on screen
num479		.data	479	// y-constraint on screen
num50		.data	50	// increment for board squares
num100		.data	100	// "Dark" color
num209		.data	209	// "Light" color
num255		.data	255	// White color (black is 0)
num355		.data	355	// 50 less than board y2
num520		.data	520	// board x2
num524		.data	524	// x-constraint for border
num409		.data	409	// y-constraint for border
num49		.data	49	// row/column end for piece
num80		.data	80	// column end for buttons
num2500		.data	2500	// Max value of piece.e
num170		.data	170	// x-start of MM button
num390		.data	390	// x-start of Undo button
num420		.data	420	// y-start of MM button and Undo button, also get_coord.e
num2048		.data	2048	// sdram line x-max
num512		.data	512	// sdram button1 x-max
num31		.data	31	// sdram button1 y-max
num416		.data	416	// sdram button2 x-max
num33		.data	33	// sdram button2 y-max
//num416	.data	416	// sdram title x-max
num128		.data	128	// sdram title y-max
SD_XMAX		.data	1368	// sdram absolute x-max
SD_YMAX		.data	129	// sdram absolute y-max
num640		.data	640	// for drawing home screen
num64		.data	64	// from player_move.e
num470		.data	470	// from get_coord.e
num465		.data	465	// from get_coord.e
num423		.data	423	// from get_coord.e
num250		.data	250	// from get_coord.e
num-1		.data	-1	// from disp_board.e (and another)
num270		.data	270	// for drawing "checkmate"
num65489	.data	65489	// alternate color_L
num55		.data	55	// from promote_pawn.e
num251		.data	251	// for mouseover.e
num471		.data	471	// for mouseover.e

num156		.data	156	// For copy_piece.e...
num184		.data	184
num212		.data	212
num396		.data	396
num424		.data	424
num452		.data	452
num608		.data	608	// also sdram pieces x-max
num636		.data	636
num664		.data	664
num848		.data	848
num876		.data	876
num904		.data	904
num1088		.data	1088
num1116		.data	1116
num1300		.data	1300
num1328		.data	1328
num1356		.data	1356
num1540		.data	1540
num1568		.data	1568
num1752		.data	1752
num1780		.data	1780
num1808		.data	1808
num1992		.data	1992
num2020		.data	2020

temp		.data	0	// various uses
temp1		.data	0

rand0-15	.data	0	// random number in range [0,15] for AI random moves
rand0-6		.data	0	// random number in range [0,6] for puzzles

turn		.data	1	// Whose turn it is
TURN_WHITE	.data	1
TURN_BLACK	.data	2

DELAY_MAX	.data	65000

// A second copy of the board is saved in memory, one step behind the current one for undoing
undo_tog	.data	1	// "Undo" button toggle
undo_return	.data	0	// Undo button draw return
mm_return	.data	0	// Main Menu button draw return

timer_tog	.data	1	// Game timer toggle
timer_value	.data	0	// Seconds elapsed

difficulty	.data	1	// Difficulty mode for puzzle/AI
DIFF_EASY	.data	1
DIFF_MED	.data	2
DIFF_HARD	.data	3

mode		.data	0	// Which game mode it is
MODE_ONE	.data	1
MODE_TWO	.data	2
MODE_PUZZ	.data	3

rand		.data	0	// Random number

mouse_return	.data	0	// Driver return memory
mouse_dx	.data	0	// Mouse change in X
mouse_dy	.data	0	// Mouse change in Y
mouse_x		.data	0	// Mouse X position
mouse_y		.data	0	// Mouse Y position
click_1x	.data	0	// Click coordinates for buttons
click_1y	.data	0	// 1 is left, 2 is middle, 3 is right
click_2x	.data	0
click_2y	.data	0
click_3x	.data	0
click_3y	.data	0

vga_return	.data	0	// Driver return memory
vga_x1		.data	0	// x coordinate of top left corner of rectangle
vga_y1		.data	0	// y coordinate of top left corner of rectangle
vga_x2		.data	0	// x coordinate of lower right corner of rectangle
vga_y2		.data	0	// y coordinate of lower right corner of rectangle
vga_write	.data	1	// Whether to write to VGA or read color
vga_color	.data	0	// code of color the rectangle is to be drawn in
vga_color_read	.data	0	// color read in by VGA
COLOR_L		.data	209	// Light RGB
COLOR_D		.data	100	// Dark RGB

GREEN		.data	28	// colors
RED		.data	224
BLUE		.data	111

speaker_return	.data	0	// Driver return memory
// Speaker variables...

sd_return	.data	0	// Driver return memory
sd_data		.data	0	// Data loaded from drive

sdram_w_ret	.data	0	// Driver return memory (write)
sdram_r_ret	.data	0	// Driver return memory (read)
sdram_data_r	.data	0	// Data read from ram
sdram_data_w	.data	0	// Data to write to ram
sdram_x		.data	0	// X-coord start read
sdram_y		.data	0	// Y-coord start read

dp_return	.data	0	// Draw Piece
dp_x0		.data	0	// Start x for drawing piece
dp_y0		.data	0	// Start y for drawing piece

sdr_x_start	.data	452	// Start/End x/y for concatenated bin
sdr_y_start	.data	1
sdr_x_end	.data	904
sdr_y_end	.data	2

sq_selected	.data	0	// The square you click with a piece on it
sq_move		.data	0	// The square you click next to move to

puzzle_num	.data	0	// Which puzzle has been selected to play
puzzle_board	.data	0	// Which stage you are in (e.g. 1 means you have moved once)
PUZZLE_START	.data	0	// Index of board_puzzles to start at
		.data	256
		.data	640
		.data	1024
		.data	1280
		.data	1664
		.data	2048
PUZZLE_END	.data	256	// Index of board_puzzles to end at
		.data	640
		.data	1024
		.data	1280
		.data	1664
		.data	2048
		.data	2432

PIECE_BLANK	.data	0
PIECE_W_PAWN	.data	1	// 64 squares, each stores what piece is on it
PIECE_B_PAWN	.data	2	// W = white, B = black
PIECE_W_KNIGHT	.data	3
PIECE_B_KNIGHT	.data	4
PIECE_W_BISHOP	.data	5
PIECE_B_BISHOP	.data	6
PIECE_W_ROOK	.data	7
PIECE_B_ROOK	.data	8
PIECE_W_QUEEN	.data	9
PIECE_B_QUEEN	.data	10
PIECE_W_KING	.data	11
PIECE_B_KING	.data	12

board		.data	0	// 1, 1
		.data	0	// 1, 2
		.data	0	// 1, 3
		.data	0	// 1, 4
		.data	0	// 1, 5
		.data	0	// 1, 6
		.data	0	// 1, 7
		.data	0	// 1, 8

		.data	0	// 2, 1
		.data	0	// 2, 2
		.data	0	// 2, 3
		.data	0	// 2, 4
		.data	0	// 2, 5
		.data	0	// 2, 6
		.data	0	// 2, 7
		.data	0	// 2, 8

		.data	0	// 3, 1
		.data	0	// 3, 2
		.data	0	// 3, 3
		.data	0	// 3, 4
		.data	0	// 3, 5
		.data	0	// 3, 6
		.data	0	// 3, 7
		.data	0	// 3, 8

		.data	0	// 4, 1
		.data	0	// 4, 2
		.data	0	// 4, 3
		.data	0	// 4, 4
		.data	0	// 4, 5
		.data	0	// 4, 6
		.data	0	// 4, 7
		.data	0	// 4, 8

		.data	0	// 5, 1
		.data	0	// 5, 2
		.data	0	// 5, 3
		.data	0	// 5, 4
		.data	0	// 5, 5
		.data	0	// 5, 6
		.data	0	// 5, 7
		.data	0	// 5, 8

		.data	0	// 6, 1
		.data	0	// 6, 2
		.data	0	// 6, 3
		.data	0	// 6, 4
		.data	0	// 6, 5
		.data	0	// 6, 6
		.data	0	// 6, 7
		.data	0	// 6, 8

		.data	0	// 7, 1
		.data	0	// 7, 2
		.data	0	// 7, 3
		.data	0	// 7, 4
		.data	0	// 7, 5
		.data	0	// 7, 6
		.data	0	// 7, 7
		.data	0	// 7, 8

		.data	0	// 8, 1
		.data	0	// 8, 2
		.data	0	// 8, 3
		.data	0	// 8, 4
		.data	0	// 8, 5
		.data	0	// 8, 6
		.data	0	// 8, 7
		.data	0	// 8, 8

board_undo	.data	0	// 1, 1
		.data	0	// 1, 2
		.data	0	// 1, 3
		.data	0	// 1, 4
		.data	0	// 1, 5
		.data	0	// 1, 6
		.data	0	// 1, 7
		.data	0	// 1, 8

		.data	0	// 2, 1
		.data	0	// 2, 2
		.data	0	// 2, 3
		.data	0	// 2, 4
		.data	0	// 2, 5
		.data	0	// 2, 6
		.data	0	// 2, 7
		.data	0	// 2, 8

		.data	0	// 3, 1
		.data	0	// 3, 2
		.data	0	// 3, 3
		.data	0	// 3, 4
		.data	0	// 3, 5
		.data	0	// 3, 6
		.data	0	// 3, 7
		.data	0	// 3, 8

		.data	0	// 4, 1
		.data	0	// 4, 2
		.data	0	// 4, 3
		.data	0	// 4, 4
		.data	0	// 4, 5
		.data	0	// 4, 6
		.data	0	// 4, 7
		.data	0	// 4, 8

		.data	0	// 5, 1
		.data	0	// 5, 2
		.data	0	// 5, 3
		.data	0	// 5, 4
		.data	0	// 5, 5
		.data	0	// 5, 6
		.data	0	// 5, 7
		.data	0	// 5, 8

		.data	0	// 6, 1
		.data	0	// 6, 2
		.data	0	// 6, 3
		.data	0	// 6, 4
		.data	0	// 6, 5
		.data	0	// 6, 6
		.data	0	// 6, 7
		.data	0	// 6, 8

		.data	0	// 7, 1
		.data	0	// 7, 2
		.data	0	// 7, 3
		.data	0	// 7, 4
		.data	0	// 7, 5
		.data	0	// 7, 6
		.data	0	// 7, 7
		.data	0	// 7, 8

		.data	0	// 8, 1
		.data	0	// 8, 2
		.data	0	// 8, 3
		.data	0	// 8, 4
		.data	0	// 8, 5
		.data	0	// 8, 6
		.data	0	// 8, 7
		.data	0	// 8, 8
