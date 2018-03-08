	/// @function highlight_board(board, piece)
/// @description highlights the board if given a piece and unhighlight everything if not
/// @param {real} id_board The unique instance ID value of the board
/// @param {real} id_piece The unique instance ID value of the reference piece

var board = argument0;
var activate = argument1 != noone;
var to_highlight = noone;

//highlight
if(activate) {
	highlight_board(argument0, noone); // reset highlight
	set_active(argument1, activate);
	
	var paths = possible_move(argument0, argument1);
	with(argument0) {
		var i = 0;
		while(i < array_height_2d(paths)) {
			if(paths[i, array_length_2d(paths, i)-1].piece == noone) {
				set_active(paths[i, array_length_2d(paths, i)-1], true);
				for (var j = 0; j<array_length_2d(paths, i)-1; j++) {
					if(paths[i, j].piece == noone) {
						paths[i, j].image_blend = global.path_square_color;
					} else {
						paths[i, j].piece.image_blend = global.path_piece_color;
					}
				
				}
			}
			else {
				paths = remove_array_2d(paths, i, -1);
				i-=1;	
			}
			
			i+=1;
		}
		show_debug_message(paths);
	}
	
}

//unhighlight
else {
	for (var i = 0; i < argument0.nb_squares; ++i) {
		for (var j = 0; j < argument0.nb_squares; ++j){
			set_active(argument0.squares[j,i], activate);
			
			if(argument0.squares[j,i].piece != noone) {
				set_active(argument0.squares[j,i].piece, activate);
			}
			
		}
	}
}
