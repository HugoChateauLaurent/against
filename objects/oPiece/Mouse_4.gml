/// @description Insert description here
// You can write your code in this editor

if(board.player == color) { // if it's the player's turn
	//on désactive la pièce et les cases
	var activate = image_blend != global.active_piece_color;

	if(activate){
		highlight_board(board, id)
	} else {
		highlight_board(board, noone);
	}

}
