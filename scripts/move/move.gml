/// @function move(board, square)
/// @description move the active piece to the given square
/// @param {real} board
/// @param {real} square
var board = argument0;
var square = argument1;
				
square.piece = board.active_piece; //change the piece's square

//remove piece from previous position
board.squares[board.active_piece.coordX, board.active_piece.coordY].piece = noone;

//assign new coordinates on view and model
square.piece.x = square.x;
square.piece.y = square.y;
square.piece.coordX = square.coordX;
square.piece.coordY = square.coordY;

//remove eaten pieces with the longest path to destination
var length;
var max_length = -1;
var index_max;
for(var i = 0; i<array_height_2d(board.paths); i++) {
	length = array_length_2d(board.paths, i);
	if(board.paths[i, length-1] == square){ // search for the right paths with the destination
		if(length>max_length) {
			max_length = length;
			index_max = i;
		}
	}
}
var piece = noone;
for(var i = 0; i<max_length-1; i++) {
	piece = board.paths[index_max, i].piece;
	if(piece != noone) {
		board.paths[index_max, i].piece = noone;
		show_debug_message("index : "+ string(piece.coordX)+" "+string(piece.coordY));
		instance_destroy(piece);
		board.scores[board.player] += 1;
	}
}
highlight_board(board, noone) //reset highlight
board.player = !board.player; //next player's turn
