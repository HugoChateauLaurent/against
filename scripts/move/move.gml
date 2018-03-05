/// @function move(board, square)
/// @description move the active piece to the given square
/// @param {real} board
/// @param {real} square

var board = argument0;
var square = argument1;
var found = false;
var i = 0;
var j = 0;
var piece = noone;

while(!found && i<board.nb_squares) {
	j = 0;
	while(!found && j<board.nb_squares) {
		if(board.squares[j,i].piece != noone) {
			if(board.squares[j,i].piece.active) {
				found = true;
				
				square.piece = board.squares[j,i].piece; //change the piece's square
				
				//assign new coordinates
				square.piece.x = square.x;
				square.piece.y = square.y;
				square.piece.coordX = square.coordX;
				square.piece.coordY = square.coordY;
				
				//remove piece from previous position
				board.squares[j,i].piece = noone;
			}
		}
		
		j+=1;
	}
	i+=1;
}


show_debug_message(j);
show_debug_message(i);
show_debug_message(found);




highlight_board(board, noone)
board.player = !board.player; //next player's turn
