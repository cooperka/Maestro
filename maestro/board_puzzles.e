// This file contains one array, which contains all the boards for each of our 7 puzzles

// The solutions to each are as follows:
// 0 1.Rd7+	Kxd7	2.Qxf7#
// 1 1.Qxf7+	Kxf7	2.R1h7+	 Ke8	3.Bxg6#
// 2 1.e4+	Nxe4	2.Re5+	 Nxe5	3.Nd4#
// 3 1.Nxd6	Nxd6	2.Ne7#
// 4 1.Qf8+	Rxf8	2.Ne7+	 Kg7	3.h6
// 5 1.Qxf8+	Kxf8	2.Rd8+	 Ke7	3.Re8#
// 6 1.Qg4+	Bxg4	2.Rxh6+	 gxh6	3.Bf7#

// PUZZLE 0
// solution 1.Rd7+ Kxd7 2.Qxf7#
// starting position
board_puzzles	.data	0	// 1, 1 0
		.data	0	// 1, 2
		.data	8	// 1, 3
		.data	0	// 1, 4
		.data	0	// 1, 5
		.data	0	// 1, 6
		.data	0	// 1, 7
		.data	0	// 1, 8
		.data	0	// 2, 1
		.data	0	// 2, 2
		.data	1	// 2, 3
		.data	0	// 2, 4
		.data	12	// 2, 5
		.data	2	// 2, 6
		.data	2	// 2, 7
		.data	0	// 2, 8
		.data	0	// 3, 1
		.data	0	// 3, 2
		.data	0	// 3, 3
		.data	0	// 3, 4
		.data	0	// 3, 5
		.data	0	// 3, 6
		.data	0	// 3, 7
		.data	8	// 3, 8
		.data	10	// 4, 1
		.data	0	// 4, 2
		.data	0	// 4, 3
		.data	0	// 4, 4
		.data	1	// 4, 5
		.data	2	// 4, 6
		.data	0	// 4, 7
		.data	2	// 4, 8
		.data	2	// 5, 1
		.data	0	// 5, 2
		.data	9	// 5, 3
		.data	0	// 5, 4
		.data	0	// 5, 5
		.data	0	// 5, 6
		.data	0	// 5, 7
		.data	1	// 5, 8
		.data	1	// 6, 1
		.data	0	// 6, 2
		.data	0	// 6, 3
		.data	7	// 6, 4
		.data	0	// 6, 5
		.data	0	// 6, 6
		.data	0	// 6, 7
		.data	0	// 6, 8
		.data	0	// 7, 1
		.data	0	// 7, 2
		.data	0	// 7, 3
		.data	0	// 7, 4
		.data	0	// 7, 5
		.data	1	// 7, 6
		.data	1	// 7, 7
		.data	0	// 7, 8
		.data	0	// 8, 1
		.data	0	// 8, 2
		.data	7	// 8, 3
		.data	0	// 8, 4
		.data	0	// 8, 5
		.data	11	// 8, 6
		.data	0	// 8, 7
		.data	0	// 8, 8	63
// human move
		.data	0	// 1, 1 64
		.data	0	// 1, 2
		.data	8	// 1, 3
		.data	0	// 1, 4
		.data	0	// 1, 5
		.data	0	// 1, 6
		.data	0	// 1, 7
		.data	0	// 1, 8
		.data	0	// 2, 1
		.data	0	// 2, 2
		.data	1	// 2, 3
		.data	7	// 2, 4
		.data	12	// 2, 5
		.data	2	// 2, 6
		.data	2	// 2, 7
		.data	0	// 2, 8
		.data	0	// 3, 1
		.data	0	// 3, 2
		.data	0	// 3, 3
		.data	0	// 3, 4
		.data	0	// 3, 5
		.data	0	// 3, 6
		.data	0	// 3, 7
		.data	8	// 3, 8
		.data	10	// 4, 1
		.data	0	// 4, 2
		.data	0	// 4, 3
		.data	0	// 4, 4
		.data	1	// 4, 5
		.data	2	// 4, 6
		.data	0	// 4, 7
		.data	2	// 4, 8
		.data	2	// 5, 1
		.data	0	// 5, 2
		.data	9	// 5, 3
		.data	0	// 5, 4
		.data	0	// 5, 5
		.data	0	// 5, 6
		.data	0	// 5, 7
		.data	1	// 5, 8
		.data	1	// 6, 1
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
		.data	1	// 7, 6
		.data	1	// 7, 7
		.data	0	// 7, 8
		.data	0	// 8, 1
		.data	0	// 8, 2
		.data	7	// 8, 3
		.data	0	// 8, 4
		.data	0	// 8, 5
		.data	11	// 8, 6
		.data	0	// 8, 7
		.data	0	// 8, 8 127
// computer move
		.data	0	// 1, 1 128
		.data	0	// 1, 2
		.data	8	// 1, 3
		.data	0	// 1, 4
		.data	0	// 1, 5
		.data	0	// 1, 6
		.data	0	// 1, 7
		.data	0	// 1, 8
		.data	0	// 2, 1
		.data	0	// 2, 2
		.data	1	// 2, 3
		.data	12	// 2, 4
		.data	0	// 2, 5
		.data	2	// 2, 6
		.data	2	// 2, 7
		.data	0	// 2, 8
		.data	0	// 3, 1
		.data	0	// 3, 2
		.data	0	// 3, 3
		.data	0	// 3, 4
		.data	0	// 3, 5
		.data	0	// 3, 6
		.data	0	// 3, 7
		.data	8	// 3, 8
		.data	10	// 4, 1
		.data	0	// 4, 2
		.data	0	// 4, 3
		.data	0	// 4, 4
		.data	1	// 4, 5
		.data	2	// 4, 6
		.data	0	// 4, 7
		.data	2	// 4, 8
		.data	2	// 5, 1
		.data	0	// 5, 2
		.data	9	// 5, 3
		.data	0	// 5, 4
		.data	0	// 5, 5
		.data	0	// 5, 6
		.data	0	// 5, 7
		.data	1	// 5, 8
		.data	1	// 6, 1
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
		.data	1	// 7, 6
		.data	1	// 7, 7
		.data	0	// 7, 8
		.data	0	// 8, 1
		.data	0	// 8, 2
		.data	7	// 8, 3
		.data	0	// 8, 4
		.data	0	// 8, 5
		.data	11	// 8, 6
		.data	0	// 8, 7
		.data	0	// 8, 8 191
// human move for checkmate
		.data	0	// 1, 1 192
		.data	0	// 1, 2
		.data	8	// 1, 3
		.data	0	// 1, 4
		.data	0	// 1, 5
		.data	0	// 1, 6
		.data	0	// 1, 7
		.data	0	// 1, 8
		.data	0	// 2, 1
		.data	0	// 2, 2
		.data	1	// 2, 3
		.data	12	// 2, 4
		.data	0	// 2, 5
		.data	9	// 2, 6
		.data	2	// 2, 7
		.data	0	// 2, 8
		.data	0	// 3, 1
		.data	0	// 3, 2
		.data	0	// 3, 3
		.data	0	// 3, 4
		.data	0	// 3, 5
		.data	0	// 3, 6
		.data	0	// 3, 7
		.data	8	// 3, 8
		.data	10	// 4, 1
		.data	0	// 4, 2
		.data	0	// 4, 3
		.data	0	// 4, 4
		.data	1	// 4, 5
		.data	2	// 4, 6
		.data	0	// 4, 7
		.data	2	// 4, 8
		.data	2	// 5, 1
		.data	0	// 5, 2
		.data	0	// 5, 3
		.data	0	// 5, 4
		.data	0	// 5, 5
		.data	0	// 5, 6
		.data	0	// 5, 7
		.data	1	// 5, 8
		.data	1	// 6, 1
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
		.data	1	// 7, 6
		.data	1	// 7, 7
		.data	0	// 7, 8
		.data	0	// 8, 1
		.data	0	// 8, 2
		.data	7	// 8, 3
		.data	0	// 8, 4
		.data	0	// 8, 5
		.data	11	// 8, 6
		.data	0	// 8, 7
		.data	0	// 8, 8 255
		
// PUZZLE 1
// 1.Qxf7+ Kxf7 2.R1h7+ Ke8 3.Bxg6#
// startup position
		.data	0	// 1, 1 256
		.data	0	// 1, 2
		.data	0	// 1, 3
		.data	10	// 1, 4
		.data	12	// 1, 5
		.data	8	// 1, 6
		.data	0	// 1, 7
		.data	7	// 1, 8
		.data	8	// 2, 1
		.data	0	// 2, 2
		.data	0	// 2, 3
		.data	4	// 2, 4
		.data	0	// 2, 5
		.data	2	// 2, 6
		.data	0	// 2, 7
		.data	0	// 2, 8
		.data	2	// 3, 1
		.data	0	// 3, 2
		.data	6	// 3, 3
		.data	0	// 3, 4
		.data	2	// 3, 5
		.data	0	// 3, 6
		.data	2	// 3, 7
		.data	0	// 3, 8
		.data	0	// 4, 1
		.data	2	// 4, 2
		.data	0	// 4, 3
		.data	0	// 4, 4
		.data	1	// 4, 5
		.data	0	// 4, 6
		.data	1	// 4, 7
		.data	0	// 4, 8
		.data	0	// 5, 1
		.data	0	// 5, 2
		.data	0	// 5, 3
		.data	2	// 5, 4
		.data	0	// 5, 5
		.data	9	// 5, 6
		.data	0	// 5, 7
		.data	0	// 5, 8
		.data	0	// 6, 1
		.data	0	// 6, 2
		.data	3	// 6, 3
		.data	5	// 6, 4
		.data	0	// 6, 5
		.data	0	// 6, 6
		.data	0	// 6, 7
		.data	0	// 6, 8
		.data	1	// 7, 1
		.data	1	// 7, 2
		.data	1	// 7, 3
		.data	0	// 7, 4
		.data	0	// 7, 5
		.data	1	// 7, 6
		.data	1	// 7, 7
		.data	0	// 7, 8
		.data	0	// 8, 1
		.data	0	// 8, 2
		.data	11	// 8, 3
		.data	0	// 8, 4
		.data	0	// 8, 5
		.data	0	// 8, 6
		.data	0	// 8, 7
		.data	7	// 8, 8 319
// human move
		.data	0	// 1, 1 320
		.data	0	// 1, 2
		.data	0	// 1, 3
		.data	10	// 1, 4
		.data	12	// 1, 5
		.data	8	// 1, 6
		.data	0	// 1, 7
		.data	7	// 1, 8
		.data	8	// 2, 1
		.data	0	// 2, 2
		.data	0	// 2, 3
		.data	4	// 2, 4
		.data	0	// 2, 5
		.data	9	// 2, 6
		.data	0	// 2, 7
		.data	0	// 2, 8
		.data	2	// 3, 1
		.data	0	// 3, 2
		.data	6	// 3, 3
		.data	0	// 3, 4
		.data	2	// 3, 5
		.data	0	// 3, 6
		.data	2	// 3, 7
		.data	0	// 3, 8
		.data	0	// 4, 1
		.data	2	// 4, 2
		.data	0	// 4, 3
		.data	0	// 4, 4
		.data	1	// 4, 5
		.data	0	// 4, 6
		.data	1	// 4, 7
		.data	0	// 4, 8
		.data	0	// 5, 1
		.data	0	// 5, 2
		.data	0	// 5, 3
		.data	2	// 5, 4
		.data	0	// 5, 5
		.data	0	// 5, 6
		.data	0	// 5, 7
		.data	0	// 5, 8
		.data	0	// 6, 1
		.data	0	// 6, 2
		.data	3	// 6, 3
		.data	5	// 6, 4
		.data	0	// 6, 5
		.data	0	// 6, 6
		.data	0	// 6, 7
		.data	0	// 6, 8
		.data	1	// 7, 1
		.data	1	// 7, 2
		.data	1	// 7, 3
		.data	0	// 7, 4
		.data	0	// 7, 5
		.data	1	// 7, 6
		.data	1	// 7, 7
		.data	0	// 7, 8
		.data	0	// 8, 1
		.data	0	// 8, 2
		.data	11	// 8, 3
		.data	0	// 8, 4
		.data	0	// 8, 5
		.data	0	// 8, 6
		.data	0	// 8, 7
		.data	7	// 8, 8 383
// computer move
		.data	0	// 1, 1 384
		.data	0	// 1, 2
		.data	0	// 1, 3
		.data	10	// 1, 4
		.data	0	// 1, 5
		.data	8	// 1, 6
		.data	0	// 1, 7
		.data	7	// 1, 8
		.data	8	// 2, 1
		.data	0	// 2, 2
		.data	0	// 2, 3
		.data	4	// 2, 4
		.data	0	// 2, 5
		.data	12	// 2, 6
		.data	0	// 2, 7
		.data	0	// 2, 8
		.data	2	// 3, 1
		.data	0	// 3, 2
		.data	6	// 3, 3
		.data	0	// 3, 4
		.data	2	// 3, 5
		.data	0	// 3, 6
		.data	2	// 3, 7
		.data	0	// 3, 8
		.data	0	// 4, 1
		.data	2	// 4, 2
		.data	0	// 4, 3
		.data	0	// 4, 4
		.data	1	// 4, 5
		.data	0	// 4, 6
		.data	1	// 4, 7
		.data	0	// 4, 8
		.data	0	// 5, 1
		.data	0	// 5, 2
		.data	0	// 5, 3
		.data	2	// 5, 4
		.data	0	// 5, 5
		.data	0	// 5, 6
		.data	0	// 5, 7
		.data	0	// 5, 8
		.data	0	// 6, 1
		.data	0	// 6, 2
		.data	3	// 6, 3
		.data	5	// 6, 4
		.data	0	// 6, 5
		.data	0	// 6, 6
		.data	0	// 6, 7
		.data	0	// 6, 8
		.data	1	// 7, 1
		.data	1	// 7, 2
		.data	1	// 7, 3
		.data	0	// 7, 4
		.data	0	// 7, 5
		.data	1	// 7, 6
		.data	1	// 7, 7
		.data	0	// 7, 8
		.data	0	// 8, 1
		.data	0	// 8, 2
		.data	11	// 8, 3
		.data	0	// 8, 4
		.data	0	// 8, 5
		.data	0	// 8, 6
		.data	0	// 8, 7
		.data	7	// 8, 8 447
// human move
		.data	0	// 1, 1 448
		.data	0	// 1, 2
		.data	0	// 1, 3
		.data	10	// 1, 4
		.data	0	// 1, 5
		.data	8	// 1, 6
		.data	0	// 1, 7
		.data	7	// 1, 8
		.data	8	// 2, 1
		.data	0	// 2, 2
		.data	0	// 2, 3
		.data	4	// 2, 4
		.data	0	// 2, 5
		.data	12	// 2, 6
		.data	0	// 2, 7
		.data	7	// 2, 8
		.data	2	// 3, 1
		.data	0	// 3, 2
		.data	6	// 3, 3
		.data	0	// 3, 4
		.data	2	// 3, 5
		.data	0	// 3, 6
		.data	2	// 3, 7
		.data	0	// 3, 8
		.data	0	// 4, 1
		.data	2	// 4, 2
		.data	0	// 4, 3
		.data	0	// 4, 4
		.data	1	// 4, 5
		.data	0	// 4, 6
		.data	1	// 4, 7
		.data	0	// 4, 8
		.data	0	// 5, 1
		.data	0	// 5, 2
		.data	0	// 5, 3
		.data	2	// 5, 4
		.data	0	// 5, 5
		.data	0	// 5, 6
		.data	0	// 5, 7
		.data	0	// 5, 8
		.data	0	// 6, 1
		.data	0	// 6, 2
		.data	3	// 6, 3
		.data	5	// 6, 4
		.data	0	// 6, 5
		.data	0	// 6, 6
		.data	0	// 6, 7
		.data	0	// 6, 8
		.data	1	// 7, 1
		.data	1	// 7, 2
		.data	1	// 7, 3
		.data	0	// 7, 4
		.data	0	// 7, 5
		.data	1	// 7, 6
		.data	1	// 7, 7
		.data	0	// 7, 8
		.data	0	// 8, 1
		.data	0	// 8, 2
		.data	11	// 8, 3
		.data	0	// 8, 4
		.data	0	// 8, 5
		.data	0	// 8, 6
		.data	0	// 8, 7
		.data	0	// 8, 8 511
// computer move
		.data	0	// 1, 1 512
		.data	0	// 1, 2
		.data	0	// 1, 3
		.data	10	// 1, 4
		.data	12	// 1, 5
		.data	8	// 1, 6
		.data	0	// 1, 7
		.data	7	// 1, 8
		.data	8	// 2, 1
		.data	0	// 2, 2
		.data	0	// 2, 3
		.data	4	// 2, 4
		.data	0	// 2, 5
		.data	0	// 2, 6
		.data	0	// 2, 7
		.data	7	// 2, 8
		.data	2	// 3, 1
		.data	0	// 3, 2
		.data	6	// 3, 3
		.data	0	// 3, 4
		.data	2	// 3, 5
		.data	0	// 3, 6
		.data	2	// 3, 7
		.data	0	// 3, 8
		.data	0	// 4, 1
		.data	2	// 4, 2
		.data	0	// 4, 3
		.data	0	// 4, 4
		.data	1	// 4, 5
		.data	0	// 4, 6
		.data	1	// 4, 7
		.data	0	// 4, 8
		.data	0	// 5, 1
		.data	0	// 5, 2
		.data	0	// 5, 3
		.data	2	// 5, 4
		.data	0	// 5, 5
		.data	0	// 5, 6
		.data	0	// 5, 7
		.data	0	// 5, 8
		.data	0	// 6, 1
		.data	0	// 6, 2
		.data	3	// 6, 3
		.data	5	// 6, 4
		.data	0	// 6, 5
		.data	0	// 6, 6
		.data	0	// 6, 7
		.data	0	// 6, 8
		.data	1	// 7, 1
		.data	1	// 7, 2
		.data	1	// 7, 3
		.data	0	// 7, 4
		.data	0	// 7, 5
		.data	1	// 7, 6
		.data	1	// 7, 7
		.data	0	// 7, 8
		.data	0	// 8, 1
		.data	0	// 8, 2
		.data	11	// 8, 3
		.data	0	// 8, 4
		.data	0	// 8, 5
		.data	0	// 8, 6
		.data	0	// 8, 7
		.data	0	// 8, 8 575
// human move, checkmate
		.data	0	// 1, 1 576
		.data	0	// 1, 2
		.data	0	// 1, 3
		.data	10	// 1, 4
		.data	12	// 1, 5
		.data	8	// 1, 6
		.data	0	// 1, 7
		.data	7	// 1, 8
		.data	8	// 2, 1
		.data	0	// 2, 2
		.data	0	// 2, 3
		.data	4	// 2, 4
		.data	0	// 2, 5
		.data	0	// 2, 6
		.data	0	// 2, 7
		.data	7	// 2, 8
		.data	2	// 3, 1
		.data	0	// 3, 2
		.data	6	// 3, 3
		.data	0	// 3, 4
		.data	2	// 3, 5
		.data	0	// 3, 6
		.data	5	// 3, 7
		.data	0	// 3, 8
		.data	0	// 4, 1
		.data	2	// 4, 2
		.data	0	// 4, 3
		.data	0	// 4, 4
		.data	1	// 4, 5
		.data	0	// 4, 6
		.data	1	// 4, 7
		.data	0	// 4, 8
		.data	0	// 5, 1
		.data	0	// 5, 2
		.data	0	// 5, 3
		.data	2	// 5, 4
		.data	0	// 5, 5
		.data	0	// 5, 6
		.data	0	// 5, 7
		.data	0	// 5, 8
		.data	0	// 6, 1
		.data	0	// 6, 2
		.data	3	// 6, 3
		.data	0	// 6, 4
		.data	0	// 6, 5
		.data	0	// 6, 6
		.data	0	// 6, 7
		.data	0	// 6, 8
		.data	1	// 7, 1
		.data	1	// 7, 2
		.data	1	// 7, 3
		.data	0	// 7, 4
		.data	0	// 7, 5
		.data	1	// 7, 6
		.data	1	// 7, 7
		.data	0	// 7, 8
		.data	0	// 8, 1
		.data	0	// 8, 2
		.data	11	// 8, 3
		.data	0	// 8, 4
		.data	0	// 8, 5
		.data	0	// 8, 6
		.data	0	// 8, 7
		.data	0	// 8, 8 639
		
// PUZZLE 2
// 1.e4+ Nxe4 2.Re5+ Nxe5 3.Nd4#
// startup position
		.data	0	// 1, 1 640
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
		.data	7	// 2, 5
		.data	0	// 2, 6
		.data	0	// 2, 7
		.data	0	// 2, 8
		.data	0	// 3, 1
		.data	2	// 3, 2
		.data	3	// 3, 3
		.data	0	// 3, 4
		.data	0	// 3, 5
		.data	0	// 3, 6
		.data	0	// 3, 7
		.data	0	// 3, 8
		.data	0	// 4, 1
		.data	0	// 4, 2
		.data	0	// 4, 3
		.data	3	// 4, 4
		.data	0	// 4, 5
		.data	12	// 4, 6
		.data	0	// 4, 7
		.data	11	// 4, 8
		.data	2	// 5, 1
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
		.data	1	// 6, 5
		.data	4	// 6, 6
		.data	2	// 6, 7
		.data	0	// 6, 8
		.data	0	// 7, 1
		.data	0	// 7, 2
		.data	0	// 7, 3
		.data	4	// 7, 4
		.data	0	// 7, 5
		.data	0	// 7, 6
		.data	0	// 7, 7
		.data	0	// 7, 8
		.data	0	// 8, 1
		.data	0	// 8, 2
		.data	10	// 8, 3
		.data	0	// 8, 4
		.data	0	// 8, 5
		.data	0	// 8, 6
		.data	0	// 8, 7
		.data	0	// 8, 8 703
// human move
		.data	0	// 1, 1 704
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
		.data	7	// 2, 5
		.data	0	// 2, 6
		.data	0	// 2, 7
		.data	0	// 2, 8
		.data	0	// 3, 1
		.data	2	// 3, 2
		.data	3	// 3, 3
		.data	0	// 3, 4
		.data	0	// 3, 5
		.data	0	// 3, 6
		.data	0	// 3, 7
		.data	0	// 3, 8
		.data	0	// 4, 1
		.data	0	// 4, 2
		.data	0	// 4, 3
		.data	3	// 4, 4
		.data	0	// 4, 5
		.data	12	// 4, 6
		.data	0	// 4, 7
		.data	11	// 4, 8
		.data	2	// 5, 1
		.data	0	// 5, 2
		.data	0	// 5, 3
		.data	0	// 5, 4
		.data	1	// 5, 5
		.data	0	// 5, 6
		.data	0	// 5, 7
		.data	0	// 5, 8
		.data	0	// 6, 1
		.data	0	// 6, 2
		.data	0	// 6, 3
		.data	0	// 6, 4
		.data	0	// 6, 5
		.data	4	// 6, 6
		.data	2	// 6, 7
		.data	0	// 6, 8
		.data	0	// 7, 1
		.data	0	// 7, 2
		.data	0	// 7, 3
		.data	4	// 7, 4
		.data	0	// 7, 5
		.data	0	// 7, 6
		.data	0	// 7, 7
		.data	0	// 7, 8
		.data	0	// 8, 1
		.data	0	// 8, 2
		.data	10	// 8, 3
		.data	0	// 8, 4
		.data	0	// 8, 5
		.data	0	// 8, 6
		.data	0	// 8, 7
		.data	0	// 8, 8 767
// computer move 
		.data	0	// 1, 1 768
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
		.data	7	// 2, 5
		.data	0	// 2, 6
		.data	0	// 2, 7
		.data	0	// 2, 8
		.data	0	// 3, 1
		.data	2	// 3, 2
		.data	3	// 3, 3
		.data	0	// 3, 4
		.data	0	// 3, 5
		.data	0	// 3, 6
		.data	0	// 3, 7
		.data	0	// 3, 8
		.data	0	// 4, 1
		.data	0	// 4, 2
		.data	0	// 4, 3
		.data	3	// 4, 4
		.data	0	// 4, 5
		.data	12	// 4, 6
		.data	0	// 4, 7
		.data	11	// 4, 8
		.data	2	// 5, 1
		.data	0	// 5, 2
		.data	0	// 5, 3
		.data	0	// 5, 4
		.data	4	// 5, 5
		.data	0	// 5, 6
		.data	0	// 5, 7
		.data	0	// 5, 8
		.data	0	// 6, 1
		.data	0	// 6, 2
		.data	0	// 6, 3
		.data	0	// 6, 4
		.data	0	// 6, 5
		.data	4	// 6, 6
		.data	2	// 6, 7
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
		.data	10	// 8, 3
		.data	0	// 8, 4
		.data	0	// 8, 5
		.data	0	// 8, 6
		.data	0	// 8, 7
		.data	0	// 8, 8 831
//human move 
		.data	0	// 1, 1 832
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
		.data	2	// 3, 2
		.data	3	// 3, 3
		.data	0	// 3, 4
		.data	0	// 3, 5
		.data	0	// 3, 6
		.data	0	// 3, 7
		.data	0	// 3, 8
		.data	0	// 4, 1
		.data	0	// 4, 2
		.data	0	// 4, 3
		.data	3	// 4, 4
		.data	7	// 4, 5
		.data	12	// 4, 6
		.data	0	// 4, 7
		.data	11	// 4, 8
		.data	2	// 5, 1
		.data	0	// 5, 2
		.data	0	// 5, 3
		.data	0	// 5, 4
		.data	4	// 5, 5
		.data	0	// 5, 6
		.data	0	// 5, 7
		.data	0	// 5, 8
		.data	0	// 6, 1
		.data	0	// 6, 2
		.data	0	// 6, 3
		.data	0	// 6, 4
		.data	0	// 6, 5
		.data	4	// 6, 6
		.data	2	// 6, 7
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
		.data	10	// 8, 3
		.data	0	// 8, 4
		.data	0	// 8, 5
		.data	0	// 8, 6
		.data	0	// 8, 7
		.data	0	// 8, 8 895
// computer move 
		.data	0	// 1, 1 896
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
		.data	2	// 3, 2
		.data	3	// 3, 3
		.data	0	// 3, 4
		.data	0	// 3, 5
		.data	0	// 3, 6
		.data	0	// 3, 7
		.data	0	// 3, 8
		.data	0	// 4, 1
		.data	0	// 4, 2
		.data	0	// 4, 3
		.data	3	// 4, 4
		.data	4	// 4, 5
		.data	12	// 4, 6
		.data	0	// 4, 7
		.data	11	// 4, 8
		.data	2	// 5, 1
		.data	0	// 5, 2
		.data	0	// 5, 3
		.data	0	// 5, 4
		.data	4	// 5, 5
		.data	0	// 5, 6
		.data	0	// 5, 7
		.data	0	// 5, 8
		.data	0	// 6, 1
		.data	0	// 6, 2
		.data	0	// 6, 3
		.data	0	// 6, 4
		.data	0	// 6, 5
		.data	0	// 6, 6
		.data	2	// 6, 7
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
		.data	10	// 8, 3
		.data	0	// 8, 4
		.data	0	// 8, 5
		.data	0	// 8, 6
		.data	0	// 8, 7
		.data	0	// 8, 8 959
// human move, checkmate
		.data	0	// 1, 1 960
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
		.data	2	// 3, 2
		.data	0	// 3, 3
		.data	0	// 3, 4
		.data	0	// 3, 5
		.data	0	// 3, 6
		.data	0	// 3, 7
		.data	0	// 3, 8
		.data	0	// 4, 1
		.data	0	// 4, 2
		.data	0	// 4, 3
		.data	3	// 4, 4
		.data	4	// 4, 5
		.data	12	// 4, 6
		.data	0	// 4, 7
		.data	11	// 4, 8
		.data	2	// 5, 1
		.data	0	// 5, 2
		.data	0	// 5, 3
		.data	3	// 5, 4
		.data	4	// 5, 5
		.data	0	// 5, 6
		.data	0	// 5, 7
		.data	0	// 5, 8
		.data	0	// 6, 1
		.data	0	// 6, 2
		.data	0	// 6, 3
		.data	0	// 6, 4
		.data	0	// 6, 5
		.data	0	// 6, 6
		.data	2	// 6, 7
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
		.data	10	// 8, 3
		.data	0	// 8, 4
		.data	0	// 8, 5
		.data	0	// 8, 6
		.data	0	// 8, 7
		.data	0	// 8, 8	1023

// PUZZLE 3
// solution 1.Nxd6 Nxd6 2.Ne7#
//starting position
		.data	0	// 1, 1 1024
		.data	8	// 1, 2
		.data	12	// 1, 3
		.data	0	// 1, 4
		.data	0	// 1, 5
		.data	0	// 1, 6
		.data	0	// 1, 7
		.data	8	// 1, 8

		.data	0	// 2, 1
		.data	0	// 2, 2
		.data	0	// 2, 3
		.data	6	// 2, 4
		.data	0	// 2, 5
		.data	2	// 2, 6
		.data	6	// 2, 7
		.data	0	// 2, 8

		.data	2	// 3, 1
		.data	0	// 3, 2
		.data	0	// 3, 3
		.data	2	// 3, 4
		.data	0	// 3, 5
		.data	0	// 3, 6
		.data	2	// 3, 7
		.data	0	// 3, 8

		.data	5	// 4, 1
		.data	2	// 4, 2
		.data	2	// 4, 3
		.data	3	// 4, 4
		.data	2	// 4, 5
		.data	4	// 4, 6
		.data	0	// 4, 7
		.data	2	// 4, 8

		.data	0	// 5, 1
		.data	0	// 5, 2
		.data	1	// 5, 3
		.data	4	// 5, 4
		.data	3	// 5, 5
		.data	0	// 5, 6
		.data	0	// 5, 7
		.data	1	// 5, 8

		.data	0	// 6, 1
		.data	0	// 6, 2
		.data	0	// 6, 3
		.data	1	// 6, 4
		.data	0	// 6, 5
		.data	0	// 6, 6
		.data	1	// 6, 7
		.data	0	// 6, 8

		.data	1	// 7, 1
		.data	1	// 7, 2
		.data	0	// 7, 3
		.data	0	// 7, 4
		.data	1	// 7, 5
		.data	1	// 7, 6
		.data	5	// 7, 7
		.data	0	// 7, 8

		.data	7	// 8, 1
		.data	0	// 8, 2
		.data	0	// 8, 3
		.data	0	// 8, 4
		.data	11	// 8, 5
		.data	0	// 8, 6
		.data	0	// 8, 7
		.data	7	// 8, 8 1087
//human move
		.data	0	// 1, 1 1088
		.data	8	// 1, 2
		.data	12	// 1, 3
		.data	0	// 1, 4
		.data	0	// 1, 5
		.data	0	// 1, 6
		.data	0	// 1, 7
		.data	8	// 1, 8

		.data	0	// 2, 1
		.data	0	// 2, 2
		.data	0	// 2, 3
		.data	6	// 2, 4
		.data	0	// 2, 5
		.data	2	// 2, 6
		.data	6	// 2, 7
		.data	0	// 2, 8

		.data	2	// 3, 1
		.data	0	// 3, 2
		.data	0	// 3, 3
		.data	3	// 3, 4
		.data	0	// 3, 5
		.data	0	// 3, 6
		.data	2	// 3, 7
		.data	0	// 3, 8

		.data	5	// 4, 1
		.data	2	// 4, 2
		.data	2	// 4, 3
		.data	3	// 4, 4
		.data	2	// 4, 5
		.data	4	// 4, 6
		.data	0	// 4, 7
		.data	2	// 4, 8

		.data	0	// 5, 1
		.data	0	// 5, 2
		.data	1	// 5, 3
		.data	4	// 5, 4
		.data	0	// 5, 5
		.data	0	// 5, 6
		.data	0	// 5, 7
		.data	1	// 5, 8

		.data	0	// 6, 1
		.data	0	// 6, 2
		.data	0	// 6, 3
		.data	1	// 6, 4
		.data	0	// 6, 5
		.data	0	// 6, 6
		.data	1	// 6, 7
		.data	0	// 6, 8

		.data	1	// 7, 1
		.data	1	// 7, 2
		.data	0	// 7, 3
		.data	0	// 7, 4
		.data	1	// 7, 5
		.data	1	// 7, 6
		.data	5	// 7, 7
		.data	0	// 7, 8

		.data	7	// 8, 1
		.data	0	// 8, 2
		.data	0	// 8, 3
		.data	0	// 8, 4
		.data	11	// 8, 5
		.data	0	// 8, 6
		.data	0	// 8, 7
		.data	7	// 8, 8 1151
//computer move
		.data	0	// 1, 1 1152
		.data	8	// 1, 2
		.data	12	// 1, 3
		.data	0	// 1, 4
		.data	0	// 1, 5
		.data	0	// 1, 6
		.data	0	// 1, 7
		.data	8	// 1, 8

		.data	0	// 2, 1
		.data	0	// 2, 2
		.data	0	// 2, 3
		.data	6	// 2, 4
		.data	0	// 2, 5
		.data	2	// 2, 6
		.data	6	// 2, 7
		.data	0	// 2, 8

		.data	2	// 3, 1
		.data	0	// 3, 2
		.data	0	// 3, 3
		.data	4	// 3, 4
		.data	0	// 3, 5
		.data	0	// 3, 6
		.data	2	// 3, 7
		.data	0	// 3, 8

		.data	5	// 4, 1
		.data	2	// 4, 2
		.data	2	// 4, 3
		.data	3	// 4, 4
		.data	2	// 4, 5
		.data	0	// 4, 6
		.data	0	// 4, 7
		.data	2	// 4, 8

		.data	0	// 5, 1
		.data	0	// 5, 2
		.data	1	// 5, 3
		.data	4	// 5, 4
		.data	0	// 5, 5
		.data	0	// 5, 6
		.data	0	// 5, 7
		.data	1	// 5, 8

		.data	0	// 6, 1
		.data	0	// 6, 2
		.data	0	// 6, 3
		.data	1	// 6, 4
		.data	0	// 6, 5
		.data	0	// 6, 6
		.data	1	// 6, 7
		.data	0	// 6, 8

		.data	1	// 7, 1
		.data	1	// 7, 2
		.data	0	// 7, 3
		.data	0	// 7, 4
		.data	1	// 7, 5
		.data	1	// 7, 6
		.data	5	// 7, 7
		.data	0	// 7, 8

		.data	7	// 8, 1
		.data	0	// 8, 2
		.data	0	// 8, 3
		.data	0	// 8, 4
		.data	11	// 8, 5
		.data	0	// 8, 6
		.data	0	// 8, 7
		.data	7	// 8, 8 1215
//human move for checkmate
		.data	0	// 1, 1 1216
		.data	8	// 1, 2
		.data	12	// 1, 3
		.data	0	// 1, 4
		.data	0	// 1, 5
		.data	0	// 1, 6
		.data	0	// 1, 7
		.data	8	// 1, 8

		.data	0	// 2, 1
		.data	0	// 2, 2
		.data	0	// 2, 3
		.data	6	// 2, 4
		.data	3	// 2, 5
		.data	2	// 2, 6
		.data	6	// 2, 7
		.data	0	// 2, 8

		.data	2	// 3, 1
		.data	0	// 3, 2
		.data	0	// 3, 3
		.data	4	// 3, 4
		.data	0	// 3, 5
		.data	0	// 3, 6
		.data	2	// 3, 7
		.data	0	// 3, 8

		.data	5	// 4, 1
		.data	2	// 4, 2
		.data	2	// 4, 3
		.data	0	// 4, 4
		.data	2	// 4, 5
		.data	0	// 4, 6
		.data	0	// 4, 7
		.data	2	// 4, 8

		.data	0	// 5, 1
		.data	0	// 5, 2
		.data	1	// 5, 3
		.data	4	// 5, 4
		.data	0	// 5, 5
		.data	0	// 5, 6
		.data	0	// 5, 7
		.data	1	// 5, 8

		.data	0	// 6, 1
		.data	0	// 6, 2
		.data	0	// 6, 3
		.data	1	// 6, 4
		.data	0	// 6, 5
		.data	0	// 6, 6
		.data	1	// 6, 7
		.data	0	// 6, 8

		.data	1	// 7, 1
		.data	1	// 7, 2
		.data	0	// 7, 3
		.data	0	// 7, 4
		.data	1	// 7, 5
		.data	1	// 7, 6
		.data	5	// 7, 7
		.data	0	// 7, 8

		.data	7	// 8, 1
		.data	0	// 8, 2
		.data	0	// 8, 3
		.data	0	// 8, 4
		.data	11	// 8, 5
		.data	0	// 8, 6
		.data	0	// 8, 7
		.data	7	// 8, 8 1279

// PUZZLE 4
// solution 1.Qf8+ Rxf8 2.Ne7+ Kg7 3.h6
//starting position
		.data	0	// 1, 1 1280
		.data	0	// 1, 2
		.data	0	// 1, 3
		.data	4	// 1, 4
		.data	8	// 1, 5
		.data	0	// 1, 6
		.data	12	// 1, 7
		.data	8	// 1, 8

		.data	0	// 2, 1
		.data	2	// 2, 2
		.data	6	// 2, 3
		.data	0	// 2, 4
		.data	0	// 2, 5
		.data	6	// 2, 6
		.data	0	// 2, 7
		.data	2	// 2, 8

		.data	2	// 3, 1
		.data	0	// 3, 2
		.data	0	// 3, 3
		.data	0	// 3, 4
		.data	0	// 3, 5
		.data	2	// 3, 6
		.data	3	// 3, 7
		.data	0	// 3, 8

		.data	0	// 4, 1
		.data	4	// 4, 2
		.data	9	// 4, 3
		.data	0	// 4, 4
		.data	0	// 4, 5
		.data	2	// 4, 6
		.data	0	// 4, 7
		.data	1	// 4, 8

		.data	0	// 5, 1
		.data	0	// 5, 2
		.data	0	// 5, 3
		.data	0	// 5, 4
		.data	0	// 5, 5
		.data	0	// 5, 6
		.data	0	// 5, 7
		.data	0	// 5, 8

		.data	0	// 6, 1
		.data	1	// 6, 2
		.data	0	// 6, 3
		.data	0	// 6, 4
		.data	0	// 6, 5
		.data	0	// 6, 6
		.data	0	// 6, 7
		.data	11	// 6, 8

		.data	0	// 7, 1
		.data	0	// 7, 2
		.data	1	// 7, 3
		.data	5	// 7, 4
		.data	0	// 7, 5
		.data	0	// 7, 6
		.data	5	// 7, 7
		.data	0	// 7, 8

		.data	10	// 8, 1
		.data	0	// 8, 2
		.data	0	// 8, 3
		.data	0	// 8, 4
		.data	0	// 8, 5
		.data	0	// 8, 6
		.data	0	// 8, 7
		.data	0	// 8, 8
//human move
		.data	0	// 1, 1 1344
		.data	0	// 1, 2
		.data	0	// 1, 3
		.data	4	// 1, 4
		.data	8	// 1, 5
		.data	9	// 1, 6
		.data	12	// 1, 7
		.data	8	// 1, 8

		.data	0	// 2, 1
		.data	2	// 2, 2
		.data	6	// 2, 3
		.data	0	// 2, 4
		.data	0	// 2, 5
		.data	6	// 2, 6
		.data	0	// 2, 7
		.data	2	// 2, 8

		.data	2	// 3, 1
		.data	0	// 3, 2
		.data	0	// 3, 3
		.data	0	// 3, 4
		.data	0	// 3, 5
		.data	2	// 3, 6
		.data	3	// 3, 7
		.data	0	// 3, 8

		.data	0	// 4, 1
		.data	4	// 4, 2
		.data	0	// 4, 3
		.data	0	// 4, 4
		.data	0	// 4, 5
		.data	2	// 4, 6
		.data	0	// 4, 7
		.data	1	// 4, 8

		.data	0	// 5, 1
		.data	0	// 5, 2
		.data	0	// 5, 3
		.data	0	// 5, 4
		.data	0	// 5, 5
		.data	0	// 5, 6
		.data	0	// 5, 7
		.data	0	// 5, 8

		.data	0	// 6, 1
		.data	1	// 6, 2
		.data	0	// 6, 3
		.data	0	// 6, 4
		.data	0	// 6, 5
		.data	0	// 6, 6
		.data	0	// 6, 7
		.data	11	// 6, 8

		.data	0	// 7, 1
		.data	0	// 7, 2
		.data	1	// 7, 3
		.data	5	// 7, 4
		.data	0	// 7, 5
		.data	0	// 7, 6
		.data	5	// 7, 7
		.data	0	// 7, 8

		.data	10	// 8, 1
		.data	0	// 8, 2
		.data	0	// 8, 3
		.data	0	// 8, 4
		.data	0	// 8, 5
		.data	0	// 8, 6
		.data	0	// 8, 7
		.data	0	// 8, 8
//computer move
		.data	0	// 1, 1 1408
		.data	0	// 1, 2
		.data	0	// 1, 3
		.data	4	// 1, 4
		.data	0	// 1, 5
		.data	8	// 1, 6
		.data	12	// 1, 7
		.data	8	// 1, 8

		.data	0	// 2, 1
		.data	2	// 2, 2
		.data	6	// 2, 3
		.data	0	// 2, 4
		.data	0	// 2, 5
		.data	6	// 2, 6
		.data	0	// 2, 7
		.data	2	// 2, 8

		.data	2	// 3, 1
		.data	0	// 3, 2
		.data	0	// 3, 3
		.data	0	// 3, 4
		.data	0	// 3, 5
		.data	2	// 3, 6
		.data	3	// 3, 7
		.data	0	// 3, 8

		.data	0	// 4, 1
		.data	4	// 4, 2
		.data	0	// 4, 3
		.data	0	// 4, 4
		.data	0	// 4, 5
		.data	2	// 4, 6
		.data	0	// 4, 7
		.data	1	// 4, 8

		.data	0	// 5, 1
		.data	0	// 5, 2
		.data	0	// 5, 3
		.data	0	// 5, 4
		.data	0	// 5, 5
		.data	0	// 5, 6
		.data	0	// 5, 7
		.data	0	// 5, 8

		.data	0	// 6, 1
		.data	1	// 6, 2
		.data	0	// 6, 3
		.data	0	// 6, 4
		.data	0	// 6, 5
		.data	0	// 6, 6
		.data	0	// 6, 7
		.data	11	// 6, 8

		.data	0	// 7, 1
		.data	0	// 7, 2
		.data	1	// 7, 3
		.data	5	// 7, 4
		.data	0	// 7, 5
		.data	0	// 7, 6
		.data	5	// 7, 7
		.data	0	// 7, 8

		.data	10	// 8, 1
		.data	0	// 8, 2
		.data	0	// 8, 3
		.data	0	// 8, 4
		.data	0	// 8, 5
		.data	0	// 8, 6
		.data	0	// 8, 7
		.data	0	// 8, 8
//human move
		.data	0	// 1, 1 1472
		.data	0	// 1, 2
		.data	0	// 1, 3
		.data	4	// 1, 4
		.data	0	// 1, 5
		.data	8	// 1, 6
		.data	12	// 1, 7
		.data	8	// 1, 8

		.data	0	// 2, 1
		.data	2	// 2, 2
		.data	6	// 2, 3
		.data	0	// 2, 4
		.data	3	// 2, 5
		.data	6	// 2, 6
		.data	0	// 2, 7
		.data	2	// 2, 8

		.data	2	// 3, 1
		.data	0	// 3, 2
		.data	0	// 3, 3
		.data	0	// 3, 4
		.data	0	// 3, 5
		.data	2	// 3, 6
		.data	0	// 3, 7
		.data	0	// 3, 8

		.data	0	// 4, 1
		.data	4	// 4, 2
		.data	0	// 4, 3
		.data	0	// 4, 4
		.data	0	// 4, 5
		.data	2	// 4, 6
		.data	0	// 4, 7
		.data	1	// 4, 8

		.data	0	// 5, 1
		.data	0	// 5, 2
		.data	0	// 5, 3
		.data	0	// 5, 4
		.data	0	// 5, 5
		.data	0	// 5, 6
		.data	0	// 5, 7
		.data	0	// 5, 8

		.data	0	// 6, 1
		.data	1	// 6, 2
		.data	0	// 6, 3
		.data	0	// 6, 4
		.data	0	// 6, 5
		.data	0	// 6, 6
		.data	0	// 6, 7
		.data	11	// 6, 8

		.data	0	// 7, 1
		.data	0	// 7, 2
		.data	1	// 7, 3
		.data	5	// 7, 4
		.data	0	// 7, 5
		.data	0	// 7, 6
		.data	5	// 7, 7
		.data	0	// 7, 8

		.data	10	// 8, 1
		.data	0	// 8, 2
		.data	0	// 8, 3
		.data	0	// 8, 4
		.data	0	// 8, 5
		.data	0	// 8, 6
		.data	0	// 8, 7
		.data	0	// 8, 8
//computer move
		.data	0	// 1, 1 1536
		.data	0	// 1, 2
		.data	0	// 1, 3
		.data	4	// 1, 4
		.data	0	// 1, 5
		.data	8	// 1, 6
		.data	0	// 1, 7
		.data	8	// 1, 8

		.data	0	// 2, 1
		.data	2	// 2, 2
		.data	6	// 2, 3
		.data	0	// 2, 4
		.data	3	// 2, 5
		.data	6	// 2, 6
		.data	12	// 2, 7
		.data	2	// 2, 8

		.data	2	// 3, 1
		.data	0	// 3, 2
		.data	0	// 3, 3
		.data	0	// 3, 4
		.data	0	// 3, 5
		.data	2	// 3, 6
		.data	0	// 3, 7
		.data	0	// 3, 8

		.data	0	// 4, 1
		.data	4	// 4, 2
		.data	0	// 4, 3
		.data	0	// 4, 4
		.data	0	// 4, 5
		.data	2	// 4, 6
		.data	0	// 4, 7
		.data	1	// 4, 8

		.data	0	// 5, 1
		.data	0	// 5, 2
		.data	0	// 5, 3
		.data	0	// 5, 4
		.data	0	// 5, 5
		.data	0	// 5, 6
		.data	0	// 5, 7
		.data	0	// 5, 8

		.data	0	// 6, 1
		.data	1	// 6, 2
		.data	0	// 6, 3
		.data	0	// 6, 4
		.data	0	// 6, 5
		.data	0	// 6, 6
		.data	0	// 6, 7
		.data	11	// 6, 8

		.data	0	// 7, 1
		.data	0	// 7, 2
		.data	1	// 7, 3
		.data	5	// 7, 4
		.data	0	// 7, 5
		.data	0	// 7, 6
		.data	5	// 7, 7
		.data	0	// 7, 8

		.data	10	// 8, 1
		.data	0	// 8, 2
		.data	0	// 8, 3
		.data	0	// 8, 4
		.data	0	// 8, 5
		.data	0	// 8, 6
		.data	0	// 8, 7
		.data	0	// 8, 8
//hunman move for checkmate
		.data	0	// 1, 1 1600
		.data	0	// 1, 2
		.data	0	// 1, 3
		.data	4	// 1, 4
		.data	0	// 1, 5
		.data	8	// 1, 6
		.data	0	// 1, 7
		.data	8	// 1, 8

		.data	0	// 2, 1
		.data	2	// 2, 2
		.data	6	// 2, 3
		.data	0	// 2, 4
		.data	3	// 2, 5
		.data	6	// 2, 6
		.data	12	// 2, 7
		.data	2	// 2, 8

		.data	2	// 3, 1
		.data	0	// 3, 2
		.data	0	// 3, 3
		.data	0	// 3, 4
		.data	0	// 3, 5
		.data	2	// 3, 6
		.data	0	// 3, 7
		.data	1	// 3, 8

		.data	0	// 4, 1
		.data	4	// 4, 2
		.data	0	// 4, 3
		.data	0	// 4, 4
		.data	0	// 4, 5
		.data	2	// 4, 6
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
		.data	1	// 6, 2
		.data	0	// 6, 3
		.data	0	// 6, 4
		.data	0	// 6, 5
		.data	0	// 6, 6
		.data	0	// 6, 7
		.data	11	// 6, 8

		.data	0	// 7, 1
		.data	0	// 7, 2
		.data	1	// 7, 3
		.data	5	// 7, 4
		.data	0	// 7, 5
		.data	0	// 7, 6
		.data	5	// 7, 7
		.data	0	// 7, 8

		.data	10	// 8, 1
		.data	0	// 8, 2
		.data	0	// 8, 3
		.data	0	// 8, 4
		.data	0	// 8, 5
		.data	0	// 8, 6
		.data	0	// 8, 7
		.data	0	// 8, 8		

// PUZZLE 5
// solution 1.Qxf8+ Kxf8 2.Rd8+ Ke7 3.Re8#
//starting position
		.data	0	// 1, 1 1664
		.data	0	// 1, 2
		.data	0	// 1, 3
		.data	0	// 1, 4
		.data	0	// 1, 5
		.data	8	// 1, 6
		.data	12	// 1, 7
		.data	0	// 1, 8

		.data	0	// 2, 1
		.data	0	// 2, 2
		.data	0	// 2, 3
		.data	0	// 2, 4
		.data	0	// 2, 5
		.data	2	// 2, 6
		.data	2	// 2, 7
		.data	2	// 2, 8

		.data	2	// 3, 1
		.data	0	// 3, 2
		.data	5	// 3, 3
		.data	0	// 3, 4
		.data	0	// 3, 5
		.data	0	// 3, 6
		.data	0	// 3, 7
		.data	0	// 3, 8

		.data	0	// 4, 1
		.data	0	// 4, 2
		.data	9	// 4, 3
		.data	0	// 4, 4
		.data	1	// 4, 5
		.data	6	// 4, 6
		.data	0	// 4, 7
		.data	0	// 4, 8

		.data	0	// 5, 1
		.data	8	// 5, 2
		.data	0	// 5, 3
		.data	0	// 5, 4
		.data	0	// 5, 5
		.data	0	// 5, 6
		.data	0	// 5, 7
		.data	0	// 5, 8

		.data	10	// 6, 1
		.data	0	// 6, 2
		.data	0	// 6, 3
		.data	0	// 6, 4
		.data	0	// 6, 5
		.data	0	// 6, 6
		.data	0	// 6, 7
		.data	0	// 6, 8

		.data	0	// 7, 1
		.data	1	// 7, 2
		.data	1	// 7, 3
		.data	0	// 7, 4
		.data	0	// 7, 5
		.data	0	// 7, 6
		.data	0	// 7, 7
		.data	0	// 7, 8

		.data	0	// 8, 1
		.data	11	// 8, 2
		.data	0	// 8, 3
		.data	7	// 8, 4
		.data	0	// 8, 5
		.data	0	// 8, 6
		.data	0	// 8, 7
		.data	7	// 8, 8
//human move
		.data	0	// 1, 1 1728
		.data	0	// 1, 2
		.data	0	// 1, 3
		.data	0	// 1, 4
		.data	0	// 1, 5
		.data	9	// 1, 6
		.data	12	// 1, 7
		.data	0	// 1, 8

		.data	0	// 2, 1
		.data	0	// 2, 2
		.data	0	// 2, 3
		.data	0	// 2, 4
		.data	0	// 2, 5
		.data	2	// 2, 6
		.data	2	// 2, 7
		.data	2	// 2, 8

		.data	2	// 3, 1
		.data	0	// 3, 2
		.data	5	// 3, 3
		.data	0	// 3, 4
		.data	0	// 3, 5
		.data	0	// 3, 6
		.data	0	// 3, 7
		.data	0	// 3, 8

		.data	0	// 4, 1
		.data	0	// 4, 2
		.data	0	// 4, 3
		.data	0	// 4, 4
		.data	1	// 4, 5
		.data	6	// 4, 6
		.data	0	// 4, 7
		.data	0	// 4, 8

		.data	0	// 5, 1
		.data	8	// 5, 2
		.data	0	// 5, 3
		.data	0	// 5, 4
		.data	0	// 5, 5
		.data	0	// 5, 6
		.data	0	// 5, 7
		.data	0	// 5, 8

		.data	10	// 6, 1
		.data	0	// 6, 2
		.data	0	// 6, 3
		.data	0	// 6, 4
		.data	0	// 6, 5
		.data	0	// 6, 6
		.data	0	// 6, 7
		.data	0	// 6, 8

		.data	0	// 7, 1
		.data	1	// 7, 2
		.data	1	// 7, 3
		.data	0	// 7, 4
		.data	0	// 7, 5
		.data	0	// 7, 6
		.data	0	// 7, 7
		.data	0	// 7, 8

		.data	0	// 8, 1
		.data	11	// 8, 2
		.data	0	// 8, 3
		.data	7	// 8, 4
		.data	0	// 8, 5
		.data	0	// 8, 6
		.data	0	// 8, 7
		.data	7	// 8, 8
//computer move
		.data	0	// 1, 1 1792
		.data	0	// 1, 2
		.data	0	// 1, 3
		.data	0	// 1, 4
		.data	0	// 1, 5
		.data	12	// 1, 6
		.data	0	// 1, 7
		.data	0	// 1, 8

		.data	0	// 2, 1
		.data	0	// 2, 2
		.data	0	// 2, 3
		.data	0	// 2, 4
		.data	0	// 2, 5
		.data	2	// 2, 6
		.data	2	// 2, 7
		.data	2	// 2, 8

		.data	2	// 3, 1
		.data	0	// 3, 2
		.data	5	// 3, 3
		.data	0	// 3, 4
		.data	0	// 3, 5
		.data	0	// 3, 6
		.data	0	// 3, 7
		.data	0	// 3, 8

		.data	0	// 4, 1
		.data	0	// 4, 2
		.data	0	// 4, 3
		.data	0	// 4, 4
		.data	1	// 4, 5
		.data	6	// 4, 6
		.data	0	// 4, 7
		.data	0	// 4, 8

		.data	0	// 5, 1
		.data	8	// 5, 2
		.data	0	// 5, 3
		.data	0	// 5, 4
		.data	0	// 5, 5
		.data	0	// 5, 6
		.data	0	// 5, 7
		.data	0	// 5, 8

		.data	10	// 6, 1
		.data	0	// 6, 2
		.data	0	// 6, 3
		.data	0	// 6, 4
		.data	0	// 6, 5
		.data	0	// 6, 6
		.data	0	// 6, 7
		.data	0	// 6, 8

		.data	0	// 7, 1
		.data	1	// 7, 2
		.data	1	// 7, 3
		.data	0	// 7, 4
		.data	0	// 7, 5
		.data	0	// 7, 6
		.data	0	// 7, 7
		.data	0	// 7, 8

		.data	0	// 8, 1
		.data	11	// 8, 2
		.data	0	// 8, 3
		.data	7	// 8, 4
		.data	0	// 8, 5
		.data	0	// 8, 6
		.data	0	// 8, 7
		.data	7	// 8, 8
//human move
		.data	0	// 1, 1 1856
		.data	0	// 1, 2
		.data	0	// 1, 3
		.data	7	// 1, 4
		.data	0	// 1, 5
		.data	12	// 1, 6
		.data	0	// 1, 7
		.data	0	// 1, 8

		.data	0	// 2, 1
		.data	0	// 2, 2
		.data	0	// 2, 3
		.data	0	// 2, 4
		.data	0	// 2, 5
		.data	2	// 2, 6
		.data	2	// 2, 7
		.data	2	// 2, 8

		.data	2	// 3, 1
		.data	0	// 3, 2
		.data	5	// 3, 3
		.data	0	// 3, 4
		.data	0	// 3, 5
		.data	0	// 3, 6
		.data	0	// 3, 7
		.data	0	// 3, 8

		.data	0	// 4, 1
		.data	0	// 4, 2
		.data	0	// 4, 3
		.data	0	// 4, 4
		.data	1	// 4, 5
		.data	6	// 4, 6
		.data	0	// 4, 7
		.data	0	// 4, 8

		.data	0	// 5, 1
		.data	8	// 5, 2
		.data	0	// 5, 3
		.data	0	// 5, 4
		.data	0	// 5, 5
		.data	0	// 5, 6
		.data	0	// 5, 7
		.data	0	// 5, 8

		.data	10	// 6, 1
		.data	0	// 6, 2
		.data	0	// 6, 3
		.data	0	// 6, 4
		.data	0	// 6, 5
		.data	0	// 6, 6
		.data	0	// 6, 7
		.data	0	// 6, 8

		.data	0	// 7, 1
		.data	1	// 7, 2
		.data	1	// 7, 3
		.data	0	// 7, 4
		.data	0	// 7, 5
		.data	0	// 7, 6
		.data	0	// 7, 7
		.data	0	// 7, 8

		.data	0	// 8, 1
		.data	11	// 8, 2
		.data	0	// 8, 3
		.data	0	// 8, 4
		.data	0	// 8, 5
		.data	0	// 8, 6
		.data	0	// 8, 7
		.data	7	// 8, 8
//computer move
		.data	0	// 1, 1 1920
		.data	0	// 1, 2
		.data	0	// 1, 3
		.data	7	// 1, 4
		.data	0	// 1, 5
		.data	0	// 1, 6
		.data	0	// 1, 7
		.data	0	// 1, 8

		.data	0	// 2, 1
		.data	0	// 2, 2
		.data	0	// 2, 3
		.data	0	// 2, 4
		.data	12	// 2, 5
		.data	2	// 2, 6
		.data	2	// 2, 7
		.data	2	// 2, 8

		.data	2	// 3, 1
		.data	0	// 3, 2
		.data	5	// 3, 3
		.data	0	// 3, 4
		.data	0	// 3, 5
		.data	0	// 3, 6
		.data	0	// 3, 7
		.data	0	// 3, 8

		.data	0	// 4, 1
		.data	0	// 4, 2
		.data	0	// 4, 3
		.data	0	// 4, 4
		.data	1	// 4, 5
		.data	6	// 4, 6
		.data	0	// 4, 7
		.data	0	// 4, 8

		.data	0	// 5, 1
		.data	8	// 5, 2
		.data	0	// 5, 3
		.data	0	// 5, 4
		.data	0	// 5, 5
		.data	0	// 5, 6
		.data	0	// 5, 7
		.data	0	// 5, 8

		.data	10	// 6, 1
		.data	0	// 6, 2
		.data	0	// 6, 3
		.data	0	// 6, 4
		.data	0	// 6, 5
		.data	0	// 6, 6
		.data	0	// 6, 7
		.data	0	// 6, 8

		.data	0	// 7, 1
		.data	1	// 7, 2
		.data	1	// 7, 3
		.data	0	// 7, 4
		.data	0	// 7, 5
		.data	0	// 7, 6
		.data	0	// 7, 7
		.data	0	// 7, 8

		.data	0	// 8, 1
		.data	11	// 8, 2
		.data	0	// 8, 3
		.data	0	// 8, 4
		.data	0	// 8, 5
		.data	0	// 8, 6
		.data	0	// 8, 7
		.data	7	// 8, 8
//human move for checkmate
		.data	0	// 1, 1 1984
		.data	0	// 1, 2
		.data	0	// 1, 3
		.data	0	// 1, 4
		.data	7	// 1, 5
		.data	0	// 1, 6
		.data	0	// 1, 7
		.data	0	// 1, 8

		.data	0	// 2, 1
		.data	0	// 2, 2
		.data	0	// 2, 3
		.data	0	// 2, 4
		.data	12	// 2, 5
		.data	2	// 2, 6
		.data	2	// 2, 7
		.data	2	// 2, 8

		.data	2	// 3, 1
		.data	0	// 3, 2
		.data	5	// 3, 3
		.data	0	// 3, 4
		.data	0	// 3, 5
		.data	0	// 3, 6
		.data	0	// 3, 7
		.data	0	// 3, 8

		.data	0	// 4, 1
		.data	0	// 4, 2
		.data	0	// 4, 3
		.data	0	// 4, 4
		.data	1	// 4, 5
		.data	6	// 4, 6
		.data	0	// 4, 7
		.data	0	// 4, 8

		.data	0	// 5, 1
		.data	8	// 5, 2
		.data	0	// 5, 3
		.data	0	// 5, 4
		.data	0	// 5, 5
		.data	0	// 5, 6
		.data	0	// 5, 7
		.data	0	// 5, 8

		.data	10	// 6, 1
		.data	0	// 6, 2
		.data	0	// 6, 3
		.data	0	// 6, 4
		.data	0	// 6, 5
		.data	0	// 6, 6
		.data	0	// 6, 7
		.data	0	// 6, 8

		.data	0	// 7, 1
		.data	1	// 7, 2
		.data	1	// 7, 3
		.data	0	// 7, 4
		.data	0	// 7, 5
		.data	0	// 7, 6
		.data	0	// 7, 7
		.data	0	// 7, 8

		.data	0	// 8, 1
		.data	11	// 8, 2
		.data	0	// 8, 3
		.data	0	// 8, 4
		.data	0	// 8, 5
		.data	0	// 8, 6
		.data	0	// 8, 7
		.data	7	// 8, 8

// PUZZLE 6
// solution 1.Qg4+ Bxg4 2.Rxh6+ gxh6 3.Bf7##
//starting position
		.data	8	// 1, 1 2048
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
		.data	2	// 2, 7
		.data	0	// 2, 8

		.data	0	// 3, 1
		.data	0	// 3, 2
		.data	0	// 3, 3
		.data	0	// 3, 4
		.data	6	// 3, 5
		.data	0	// 3, 6
		.data	7	// 3, 7
		.data	2	// 3, 8

		.data	0	// 4, 1
		.data	0	// 4, 2
		.data	0	// 4, 3
		.data	0	// 4, 4
		.data	10	// 4, 5
		.data	0	// 4, 6
		.data	0	// 4, 7
		.data	12	// 4, 8

		.data	0	// 5, 1
		.data	0	// 5, 2
		.data	0	// 5, 3
		.data	0	// 5, 4
		.data	0	// 5, 5
		.data	0	// 5, 6
		.data	0	// 5, 7
		.data	6	// 5, 8

		.data	0	// 6, 1
		.data	5	// 6, 2
		.data	0	// 6, 3
		.data	0	// 6, 4
		.data	0	// 6, 5
		.data	0	// 6, 6
		.data	0	// 6, 7
		.data	0	// 6, 8

		.data	0	// 7, 1
		.data	0	// 7, 2
		.data	1	// 7, 3
		.data	5	// 7, 4
		.data	0	// 7, 5
		.data	0	// 7, 6
		.data	9	// 7, 7
		.data	0	// 7, 8

		.data	0	// 8, 1
		.data	0	// 8, 2
		.data	11	// 8, 3
		.data	0	// 8, 4
		.data	0	// 8, 5
		.data	0	// 8, 6
		.data	0	// 8, 7
		.data	0	// 8, 8
//human move
		.data	8	// 1, 1 2112
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
		.data	2	// 2, 7
		.data	0	// 2, 8

		.data	0	// 3, 1
		.data	0	// 3, 2
		.data	0	// 3, 3
		.data	0	// 3, 4
		.data	6	// 3, 5
		.data	0	// 3, 6
		.data	7	// 3, 7
		.data	2	// 3, 8

		.data	0	// 4, 1
		.data	0	// 4, 2
		.data	0	// 4, 3
		.data	0	// 4, 4
		.data	10	// 4, 5
		.data	0	// 4, 6
		.data	0	// 4, 7
		.data	12	// 4, 8

		.data	0	// 5, 1
		.data	0	// 5, 2
		.data	0	// 5, 3
		.data	0	// 5, 4
		.data	0	// 5, 5
		.data	0	// 5, 6
		.data	9	// 5, 7
		.data	6	// 5, 8

		.data	0	// 6, 1
		.data	5	// 6, 2
		.data	0	// 6, 3
		.data	0	// 6, 4
		.data	0	// 6, 5
		.data	0	// 6, 6
		.data	0	// 6, 7
		.data	0	// 6, 8

		.data	0	// 7, 1
		.data	0	// 7, 2
		.data	1	// 7, 3
		.data	5	// 7, 4
		.data	0	// 7, 5
		.data	0	// 7, 6
		.data	0	// 7, 7
		.data	0	// 7, 8

		.data	0	// 8, 1
		.data	0	// 8, 2
		.data	11	// 8, 3
		.data	0	// 8, 4
		.data	0	// 8, 5
		.data	0	// 8, 6
		.data	0	// 8, 7
		.data	0	// 8, 8
//computer move
		.data	8	// 1, 1 2176
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
		.data	2	// 2, 7
		.data	0	// 2, 8

		.data	0	// 3, 1
		.data	0	// 3, 2
		.data	0	// 3, 3
		.data	0	// 3, 4
		.data	0	// 3, 5
		.data	0	// 3, 6
		.data	7	// 3, 7
		.data	2	// 3, 8

		.data	0	// 4, 1
		.data	0	// 4, 2
		.data	0	// 4, 3
		.data	0	// 4, 4
		.data	10	// 4, 5
		.data	0	// 4, 6
		.data	0	// 4, 7
		.data	12	// 4, 8

		.data	0	// 5, 1
		.data	0	// 5, 2
		.data	0	// 5, 3
		.data	0	// 5, 4
		.data	0	// 5, 5
		.data	0	// 5, 6
		.data	6	// 5, 7
		.data	6	// 5, 8

		.data	0	// 6, 1
		.data	5	// 6, 2
		.data	0	// 6, 3
		.data	0	// 6, 4
		.data	0	// 6, 5
		.data	0	// 6, 6
		.data	0	// 6, 7
		.data	0	// 6, 8

		.data	0	// 7, 1
		.data	0	// 7, 2
		.data	1	// 7, 3
		.data	5	// 7, 4
		.data	0	// 7, 5
		.data	0	// 7, 6
		.data	0	// 7, 7
		.data	0	// 7, 8

		.data	0	// 8, 1
		.data	0	// 8, 2
		.data	11	// 8, 3
		.data	0	// 8, 4
		.data	0	// 8, 5
		.data	0	// 8, 6
		.data	0	// 8, 7
		.data	0	// 8, 8
//human move
		.data	8	// 1, 1 2240
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
		.data	2	// 2, 7
		.data	0	// 2, 8

		.data	0	// 3, 1
		.data	0	// 3, 2
		.data	0	// 3, 3
		.data	0	// 3, 4
		.data	0	// 3, 5
		.data	0	// 3, 6
		.data	0	// 3, 7
		.data	7	// 3, 8

		.data	0	// 4, 1
		.data	0	// 4, 2
		.data	0	// 4, 3
		.data	0	// 4, 4
		.data	10	// 4, 5
		.data	0	// 4, 6
		.data	0	// 4, 7
		.data	12	// 4, 8

		.data	0	// 5, 1
		.data	0	// 5, 2
		.data	0	// 5, 3
		.data	0	// 5, 4
		.data	0	// 5, 5
		.data	0	// 5, 6
		.data	6	// 5, 7
		.data	6	// 5, 8

		.data	0	// 6, 1
		.data	5	// 6, 2
		.data	0	// 6, 3
		.data	0	// 6, 4
		.data	0	// 6, 5
		.data	0	// 6, 6
		.data	0	// 6, 7
		.data	0	// 6, 8

		.data	0	// 7, 1
		.data	0	// 7, 2
		.data	1	// 7, 3
		.data	5	// 7, 4
		.data	0	// 7, 5
		.data	0	// 7, 6
		.data	0	// 7, 7
		.data	0	// 7, 8

		.data	0	// 8, 1
		.data	0	// 8, 2
		.data	11	// 8, 3
		.data	0	// 8, 4
		.data	0	// 8, 5
		.data	0	// 8, 6
		.data	0	// 8, 7
		.data	0	// 8, 8
//computer move
		.data	8	// 1, 1 2304
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
		.data	2	// 3, 8

		.data	0	// 4, 1
		.data	0	// 4, 2
		.data	0	// 4, 3
		.data	0	// 4, 4
		.data	10	// 4, 5
		.data	0	// 4, 6
		.data	0	// 4, 7
		.data	12	// 4, 8

		.data	0	// 5, 1
		.data	0	// 5, 2
		.data	0	// 5, 3
		.data	0	// 5, 4
		.data	0	// 5, 5
		.data	0	// 5, 6
		.data	6	// 5, 7
		.data	6	// 5, 8

		.data	0	// 6, 1
		.data	5	// 6, 2
		.data	0	// 6, 3
		.data	0	// 6, 4
		.data	0	// 6, 5
		.data	0	// 6, 6
		.data	0	// 6, 7
		.data	0	// 6, 8

		.data	0	// 7, 1
		.data	0	// 7, 2
		.data	1	// 7, 3
		.data	5	// 7, 4
		.data	0	// 7, 5
		.data	0	// 7, 6
		.data	0	// 7, 7
		.data	0	// 7, 8

		.data	0	// 8, 1
		.data	0	// 8, 2
		.data	11	// 8, 3
		.data	0	// 8, 4
		.data	0	// 8, 5
		.data	0	// 8, 6
		.data	0	// 8, 7
		.data	0	// 8, 8	
//human move for checkmate
		.data	8	// 1, 1 2368
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
		.data	5	// 2, 6
		.data	0	// 2, 7
		.data	0	// 2, 8

		.data	0	// 3, 1
		.data	0	// 3, 2
		.data	0	// 3, 3
		.data	0	// 3, 4
		.data	0	// 3, 5
		.data	0	// 3, 6
		.data	0	// 3, 7
		.data	2	// 3, 8

		.data	0	// 4, 1
		.data	0	// 4, 2
		.data	0	// 4, 3
		.data	0	// 4, 4
		.data	10	// 4, 5
		.data	0	// 4, 6
		.data	0	// 4, 7
		.data	12	// 4, 8

		.data	0	// 5, 1
		.data	0	// 5, 2
		.data	0	// 5, 3
		.data	0	// 5, 4
		.data	0	// 5, 5
		.data	0	// 5, 6
		.data	6	// 5, 7
		.data	6	// 5, 8

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
		.data	1	// 7, 3
		.data	5	// 7, 4
		.data	0	// 7, 5
		.data	0	// 7, 6
		.data	0	// 7, 7
		.data	0	// 7, 8

		.data	0	// 8, 1
		.data	0	// 8, 2
		.data	11	// 8, 3
		.data	0	// 8, 4
		.data	0	// 8, 5
		.data	0	// 8, 6
		.data	0	// 8, 7
		.data	0	// 8, 8	2431
