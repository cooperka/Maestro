// core logic for finding all available moves for each piece
// Pre: row and column are set to the row and column of the piece being checked, piece_type is set to the piece constant
// Post: moves_board is 64-index array of 0 (invalid move) or 1 (valid move) for that piece

get_moves	cp	moves_i		num0
init_loop	cpta	num0		moves_board	moves_i		// initialize moves_board with all 0
		add	moves_i		num1		moves_i
		bne	init_loop	moves_i		num64
		cp	promote_possible num0
		be	wpawn_move	piece_type	PIECE_W_PAWN
		be	bpawn_move	piece_type	PIECE_B_PAWN
		be	rook_move	piece_type	PIECE_W_ROOK
		be	rook_move	piece_type	PIECE_B_ROOK
		be	knight_move	piece_type	PIECE_W_KNIGHT
		be	knight_move	piece_type	PIECE_B_KNIGHT
		be	bishop_move	piece_type	PIECE_W_BISHOP
		be	bishop_move	piece_type	PIECE_B_BISHOP
		be	queen_move	piece_type	PIECE_W_QUEEN
		be	queen_move	piece_type	PIECE_B_QUEEN
		be	king_move	piece_type	PIECE_W_KING
		be	king_move	piece_type	PIECE_B_KING
//--------------------------------------------------------------------------
knight_move 	call	reset_pos	reset_pos_ret
R2		blt	R1		num6		column
R2U1		call	get_E		get_E_ret
		call	check_jump	check_jump_ret
		be	L2		jump		num0
		call	get_E		get_E_ret
		call	check_jump	check_jump_ret
		be	R1		jump		num0
		be	R2D1		row		num1
		call	get_N		get_N_ret
		call	add_move	add_move_ret
R2D1		call	reset_pos	reset_pos_ret
		call	get_E		get_E_ret
		call	get_E		get_E_ret
		be	R1		row		num8
		call	get_S		get_S_ret
		call	add_move	add_move_ret
R1		call	reset_pos	reset_pos_ret
		be	L2		num8		column
R1U2		call	reset_pos	reset_pos_ret
		call	get_E		get_E_ret
		blt	R1D2		row		num3
		call	get_N		get_N_ret
		call	check_jump	check_jump_ret
		be	R1D2		jump		num0
		call	get_N		get_N_ret
		call	add_move	add_move_ret
R1D2		call	reset_pos	reset_pos_ret
		call	get_E		get_E_ret
		blt	L2		num6		row
		call	get_S		get_S_ret
		call	check_jump	check_jump_ret
		be	L2		jump		num0
		call	get_S		get_S_ret
		call	add_move	add_move_ret
L2		call	reset_pos	reset_pos_ret
		blt	L1		column		num3
L2U1		call	reset_pos	reset_pos_ret
		call	get_W		get_W_ret
		call	check_jump	check_jump_ret
		be	U2		jump		num0
		call	get_W		get_W_ret
		call	check_jump	check_jump_ret
		be	L1		jump		num0
		be	L2D1		row		num1
		call	get_N		get_N_ret
		call	add_move	add_move_ret
L2D1		call	reset_pos	reset_pos_ret
		call	get_W		get_W_ret
		call	get_W		get_W_ret
		be	L1		row		num8
		call	get_S		get_S_ret
		call	add_move	add_move_ret
L1		call	reset_pos	reset_pos_ret
		be	U2		num1		column
L1U2		call	reset_pos	reset_pos_ret
		call	get_W		get_W_ret
		blt	L1D2		row		num3
		call	get_N		get_N_ret
		call	check_jump	check_jump_ret
		be	L1D2		jump		num0
		call	get_N		get_N_ret
		call	add_move	add_move_ret
L1D2		call	reset_pos	reset_pos_ret
		call	get_W		get_W_ret
		blt	U2		num6		row
		call	get_S		get_S_ret
		call	check_jump	check_jump_ret
		be	U2		jump		num0
		call	get_S		get_S_ret
		call	add_move	add_move_ret
U2		call	reset_pos	reset_pos_ret
		blt	U1		row		num3
U2R1		call	reset_pos	reset_pos_ret
		call	get_N		get_N_ret
		call	check_jump	check_jump_ret
		be	D2		jump		num0
		call	get_N		get_N_ret
		call	check_jump	check_jump_ret
		be	U1		jump		num0
		be	U2L1		column		num8
		call	get_E		get_E_ret
		call	add_move	add_move_ret
U2L1		call	reset_pos	reset_pos_ret
		call	get_N		get_N_ret
		call	get_N		get_N_ret
		be	U1		column		num1
		call	get_W		get_W_ret
		call	add_move	add_move_ret
U1		call	reset_pos	reset_pos_ret
		be	D2		num1		row
U1R2		call	reset_pos	reset_pos_ret
		call	get_N		get_N_ret
		blt	U1L2		num6		column
		call	get_E		get_E_ret
		call	check_jump	check_jump_ret
		be	U1L2		jump		num0
		call	get_E		get_E_ret
		call	add_move	add_move_ret
U1L2		call	reset_pos	reset_pos_ret
		call	get_N		get_N_ret
		blt	D2		column		num3
		call	get_W		get_W_ret
		call	check_jump	check_jump_ret
		be	D2		jump		num0
		call	get_W		get_W_ret
		call	add_move	add_move_ret
D2		call	reset_pos	reset_pos_ret
		blt	D1		num6		row
D2R1		call	reset_pos	reset_pos_ret
		call	get_S		get_S_ret
		call	check_jump	check_jump_ret
		be	KNIGHT_END	jump		num0
		call	get_S		get_S_ret
		call	check_jump	check_jump_ret
		be	D1		jump		num0
		be	D2L1		column		num8
		call	get_E		get_E_ret
		call	add_move	add_move_ret
D2L1		call	reset_pos	reset_pos_ret
		call	get_S		get_S_ret
		call	get_S		get_S_ret
		be	D1		column		num1
		call	get_W		get_W_ret
		call	add_move	add_move_ret
D1		call	reset_pos	reset_pos_ret
		be	KNIGHT_END	num8		row
D1R2		call	reset_pos	reset_pos_ret
		call	get_S		get_S_ret
		blt	D1L2		num6		column
		call	get_E		get_E_ret
		call	check_jump	check_jump_ret
		be	D1L2		jump		num0
		call	get_E		get_E_ret
		call	add_move	add_move_ret
D1L2		call	reset_pos	reset_pos_ret
		call	get_S		get_S_ret
		blt	KNIGHT_END	column		num3
		call	get_W		get_W_ret
		call	check_jump	check_jump_ret
		be	KNIGHT_END	jump		num0
		call	get_W		get_W_ret
		call	add_move	add_move_ret
KNIGHT_END	be	get_moves_rr	0		0
//----------------------------------------------------------------------------
queen_move	be	bishop_move	0		0
queen_cont	be	rook_move	0		0
		be	get_moves_rr	0		0
//-----------------------------------------------------------------------------
bishop_move	call	reset_pos	reset_pos_ret
NE_LOOP		be	BISHOP_SW	move_row	num1
		be	BISHOP_SW	move_column	num8
		call	get_NE		get_NE_ret
		call	add_move	add_move_ret
		cpfa	temp		board		moves_i
		be	NE_LOOP		temp		num0
BISHOP_SW	call	reset_pos	reset_pos_ret
SW_LOOP		be	BISHOP_SE	move_row	num8
		be	BISHOP_SE	move_column	num1
		call	get_SW		get_SW_ret
		call	add_move	add_move_ret
		cpfa	temp		board		moves_i
		be	SW_LOOP		temp		num0

BISHOP_SE	call	reset_pos	reset_pos_ret
SE_LOOP		be	BISHOP_NW	move_row	num8
		be	BISHOP_NW	move_column	num8
		call	get_SE		get_SE_ret
		call	add_move	add_move_ret
		cpfa	temp		board		moves_i
		be	SE_LOOP		temp		num0
BISHOP_NW	call	reset_pos	reset_pos_ret
NW_LOOP		be	BISHOP_END	move_row	num1
		be	BISHOP_END	move_column	num1
		call	get_NW		get_NW_ret
		call	add_move	add_move_ret
		cpfa	temp		board		moves_i
		be	NW_LOOP		temp		num0
BISHOP_END	be	queen_cont	piece_type	PIECE_W_QUEEN
		be	queen_cont	piece_type	PIECE_B_QUEEN
		be	get_moves_rr	0		0
//-------------------------------------------------------------------------------
rook_move	call	reset_pos	reset_pos_ret
N_LOOP		be	ROOK_S		move_row	num1
		call	get_N		get_N_ret
		call	add_move	add_move_ret
		cpfa	temp		board		moves_i
		be	N_LOOP		temp		num0
ROOK_S		call	reset_pos	reset_pos_ret
S_LOOP		be	ROOK_E		move_row	num8
		call	get_S		get_S_ret
		call	add_move	add_move_ret
		cpfa	temp		board		moves_i
		be	S_LOOP		temp		num0
ROOK_E		call	reset_pos	reset_pos_ret
E_LOOP		be	ROOK_W		move_column	num8
		call	get_E		get_E_ret
		call	add_move	add_move_ret
		cpfa	temp		board		moves_i
		be	E_LOOP		temp		num0
ROOK_W		call	reset_pos	reset_pos_ret
W_LOOP		be	get_moves_rr move_column	num1
		call	get_W		get_W_ret
		call	add_move	add_move_ret
		cpfa	temp		board		moves_i
		be	W_LOOP		temp		num0		
		be	get_moves_rr	0		0
//----------------------------------------------------------------------------------
king_move 	call	reset_pos	reset_pos_ret
		call	get_N		get_N_ret
		call	add_move	add_move_ret
		call	reset_pos	reset_pos_ret
		call	get_S		get_S_ret
		call	add_move	add_move_ret
		call	reset_pos	reset_pos_ret
		call	get_E		get_E_ret
		call	add_move	add_move_ret
		call	reset_pos	reset_pos_ret
		call	get_W		get_W_ret
		call	add_move	add_move_ret
		call	reset_pos	reset_pos_ret
		call	get_NE		get_NE_ret
		call	add_move	add_move_ret
		call	reset_pos	reset_pos_ret
		call	get_SE		get_SE_ret
		call	add_move	add_move_ret
		call	reset_pos	reset_pos_ret
		call	get_NW		get_NW_ret
		call	add_move	add_move_ret
		call	reset_pos	reset_pos_ret
		call	get_SW		get_SW_ret
		call	add_move	add_move_ret
		be	get_moves_rr	0		0
//--------------------------------------------------------------------------------
wpawn_move	call	reset_pos	reset_pos_ret
		be	w2		move_row	num7
		call	get_N		get_N_ret
		call	check_occupied	check_occupied_ret
		be	w_pawn_diag	occ		num1
		call	add_move	add_move_ret
w_pawn_diag	call	reset_pos	reset_pos_ret
		call	get_NE		get_NE_ret
		call	get_move_i	get_move_i_ret
		cpfa	temp		board		moves_i
		be	w_skip1		temp		num0
		call	add_move	add_move_ret
w_skip1		call	reset_pos	reset_pos_ret
		call	get_NW		get_NW_ret
		call	get_move_i	get_move_i_ret
		cpfa	temp		board		moves_i
		be	w_pawn_end	temp		num0
		call	add_move	add_move_ret
w_pawn_end	bne	w_pawn_end_2	move_row	num1
		cp	promote_possible num1
w_pawn_end_2	be	get_moves_rr	0		0
w2		call	get_N		get_N_ret
		call	get_move_i	get_move_i_ret
		cpfa	temp		board		moves_i
		bne	w_pawn_diag	temp		num0
		call	add_move	add_move_ret
		call	get_N		get_N_ret
		call	get_move_i	get_move_i_ret
		cpfa	temp		board		moves_i
		bne	w_pawn_diag	temp		num0
		call	add_move	add_move_ret
		be	w_pawn_diag	0		0
//-------------------------------------------------------------------------------
bpawn_move	call	reset_pos	reset_pos_ret
		be	b2		move_row	num2
		call	get_S		get_S_ret
		call	check_occupied	check_occupied_ret
		be	b_pawn_diag	occ		num1
		call	add_move	add_move_ret
b_pawn_diag	call	reset_pos	reset_pos_ret
		call	get_SE		get_SE_ret
		call	get_move_i	get_move_i_ret
		cpfa	temp		board		moves_i
		be	b_skip1		temp		num0
		call	add_move	add_move_ret
b_skip1		call	reset_pos	reset_pos_ret
		call	get_SW		get_SW_ret
		call	get_move_i	get_move_i_ret
		cpfa	temp		board		moves_i
		be	b_pawn_end	temp		num0
		call	add_move	add_move_ret
b_pawn_end	bne	b_pawn_end_2	move_row	num8
		cp	promote_possible num1
b_pawn_end_2	be	get_moves_rr	0		0
b2		call	get_S		get_S_ret
		call	get_move_i	get_move_i_ret
		cpfa	temp		board		moves_i
		bne	b_pawn_diag	temp		num0
		call	add_move	add_move_ret
		call	get_S		get_S_ret
		call	get_move_i	get_move_i_ret
		cpfa	temp		board		moves_i
		bne	b_pawn_diag	temp		num0
		call	add_move	add_move_ret
		be	b_pawn_diag	0		0
//-----------------------------------------------------------------------------------
get_moves_rr	ret	get_moves_ret
//-----------------------------------------------------------------------------------
reset_pos	cp	move_row	row			// go back to the initial piece
		cp	move_column	column
		ret	reset_pos_ret
//-----------------------------------------------------------------------------------
get_N		be	N_end		move_row	num1	// get a square to the North
		sub	move_row	move_row	num1
N_end		ret	get_N_ret
get_S		be	S_end		move_row	num8	// get a square to the South
		add	move_row	move_row	num1
S_end		ret	get_S_ret
get_E		be	E_end		move_column	num8	// get a square to the East
		add	move_column	move_column	num1			
E_end		ret	get_E_ret
get_W		be	W_end		move_column	num1	// get a square to the West
		sub	move_column	move_column	num1			
W_end		ret	get_W_ret
get_NE		be	NE_end		move_row	num1	// get a square to the North-East
		be	NE_end		move_column	num8
		call	get_N		get_N_ret
		call	get_E		get_E_ret
NE_end		ret	get_NE_ret
get_NW		be	NW_end		move_row	num1	// get a square to the North-West
		be	NW_end		move_column	num1
		call	get_N		get_N_ret
		call	get_W		get_W_ret
NW_end		ret	get_NW_ret
get_SE		be	SE_end		move_row	num8	// get a square to the South-East
		be	SE_end		move_column	num8
		call	get_S		get_S_ret			
		call	get_E		get_E_ret
SE_end		ret	get_SE_ret
get_SW		be	SW_end		move_row	num8	// get a square to the South-West
		be	SW_end		move_column	num1
		call	get_S		get_S_ret			
		call	get_W		get_W_ret
SW_end		ret	get_SW_ret
//-----------------------------------------------------------------------------
get_move_i	cp	temp_col	move_column
		cp	temp_row	move_row
		sub	temp_row	temp_row	num1
		sub	temp_col	temp_col	num1
		mult	moves_i		temp_row	num8
		add	moves_i		moves_i		temp_col
		ret	get_move_i_ret
//--------------------------------------------------------------------------------	
add_move	call	get_move_i	get_move_i_ret			// add the move to moves_board, 0 if not possible, 1 if possible
		call	get_index	get_index_ret
		be	set_0		gi_index	moves_i
		call	check_occupied	check_occupied_ret
		be	set_1		occ		num0
		call	check_p_color	check_p_color_ret
		be	set_0		same_color	num1
		be	set_1		same_color	num0
set_0		cpta	num0		moves_board	moves_i
		ret	add_move_ret
set_1		cpta	num1		moves_board	moves_i			
		ret	add_move_ret
//-----------------------------------------------------------------------------
check_p_color	call	get_move_i	get_move_i_ret
		cpfa	check_piece	board		moves_i
		be	check_white	piece_type	PIECE_W_PAWN
		be	check_white	piece_type	PIECE_W_KNIGHT
		be	check_white	piece_type	PIECE_W_BISHOP
		be	check_white	piece_type	PIECE_W_ROOK
		be	check_white	piece_type	PIECE_W_QUEEN
		be	check_white	piece_type	PIECE_W_KING
check_black	be	same_c		check_piece	PIECE_B_PAWN
		be	same_c		check_piece	PIECE_B_KNIGHT
		be	same_c		check_piece	PIECE_B_BISHOP
		be	same_c		check_piece	PIECE_B_ROOK
		be	same_c		check_piece	PIECE_B_QUEEN
		be	same_c		check_piece	PIECE_B_KING
		be	opp_c		0		0
check_white	be	same_c		check_piece	PIECE_W_PAWN
		be	same_c		check_piece	PIECE_W_KNIGHT
		be	same_c		check_piece	PIECE_W_BISHOP
		be	same_c		check_piece	PIECE_W_ROOK
		be	same_c		check_piece	PIECE_W_QUEEN
		be	same_c		check_piece	PIECE_W_KING
		be	opp_c		0		0
same_c		cp	same_color	num1
		ret	check_p_color_ret
opp_c		cp	same_color	num0
		ret	check_p_color_ret
//---------------------------------------------------------------------------------
check_occupied	call	get_move_i	get_move_i_ret			// see if the square has a piece on it
		cpfa	temp		board		moves_i
		bne	occupied	temp		num0
		cp	occ		num0
		ret	check_occupied_ret
occupied	cp	occ		num1
		ret	check_occupied_ret
//---------------------------------------------------------------------------------
check_jump	cp	jump		num1
		ret	check_jump_ret

//check_jump	call	check_occupied	check_occupied_ret		// originally we thought the knight could not jump over enemy pieces. this function now returns 1 no matter what
//		be	jump_OK		occ		num0
//		call	check_p_color	check_p_color_ret
//		be	jump_OK		same_color	num1
//		cp	jump		num0
//		ret	check_jump_ret
//jump_OK	cp	jump		num1
//		ret	check_jump_ret
//------------------------------------------------------------------------------------
move_column	.data	0
move_row	.data	0
get_move_i_ret	.data	0
add_move_ret	.data	0
check_p_color_ret	.data	0
same_color	.data	0
jump		.data	0
check_jump_ret	.data	0
occ		.data	0
check_occupied_ret	.data	0
reset_pos_ret	.data	0
get_E_ret	.data	0
get_N_ret	.data	0
get_S_ret	.data	0
get_W_ret	.data	0
get_NE_ret	.data	0
get_SE_ret	.data	0
get_NW_ret	.data	0
get_SW_ret	.data	0
debug		.data	0
promote_possible	.data	0
check_piece	.data	0
