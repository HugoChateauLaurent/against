/// @function move(board, square, simulation)
/// @description move the active piece to the given square
/// @param {real} board
/// @param {boolean} simulation

var board = argument0;
var square = argument1;
var simulation = argument2;
				
square.piece = board.active_piece; //change the piece's square
//remove piece from previous position
board.squares[board.active_piece.coordX, board.active_piece.coordY].piece = noone;	

//if destination is on final line, remove piece and increment score
if((square.coordY == board.nb_squares-1 && !board.player) || (square.coordY == 0 && board.player)) { //if destination is on final line, remove piece and increment score
	instance_destroy(square.piece);
	square.piece = noone;
	board.scores[board.player] += 5;
	board.nb_pieces[board.player]--;
} else {
	//assign new coordinates on view and model
	square.piece.x = square.x;
	square.piece.y = square.y;
	square.piece.coordX = square.coordX;
	square.piece.coordY = square.coordY;
}

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
		instance_destroy(piece);
		board.scores[board.player] += 1;
		board.nb_pieces[!board.player]--;
	}
}




if(board.nb_pieces[0] == 0 || board.nb_pieces[1] == 0) {
	for(var i=0; i<2; i++) {
		board.scores[i] += 5*board.nb_pieces[i];	
	}
	
	if(board.scores[0] > board.scores[1]) {
		board.status = 0;
	} else if(board.scores[1] > board.scores[0]) {
		board.status = 1;
	} else board.status = 2;
}

highlight_board(board, noone, simulation) //reset highlight
board.player = !board.player; //next player's turn
if(board.player == global.bot_index && board.against_bot == 1) {
	ch_bot_move(board);
}

board.paths = noone;

