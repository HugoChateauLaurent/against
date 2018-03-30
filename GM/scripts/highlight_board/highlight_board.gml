/// @function highlight_board(board, piece, simulation)
/// @description highlights the board if given a piece and unhighlight everything if not
/// @param {real} id_board The unique instance ID value of the board
/// @param {real} id_piece The unique instance ID value of the reference piece
/// @param {real} simulation


var board = argument0;
var activate = argument1 != noone;
var to_highlight = noone;
var simulation = argument2;

//highlight
if(activate) {
	highlight_board(argument0, noone, simulation); // reset highlight
	set_active(argument1, activate, board);
	
	var paths = possible_move(argument0, argument1);
	with(argument0) {
		self.paths = paths;
		var bound = array_height_2d(paths);
		for(var i = 0;i < bound; i++) {
			set_active(paths[i, array_length_2d(paths, i)-1], true, board); //activate destination
			
			if(!simulation) {
				//apply path color on path
				for (var j = 0; j<array_length_2d(paths, i)-1; j++) {
					if(paths[i, j].piece == noone) {	
						paths[i, j].image_blend = global.path_square_color;
					} else {
						paths[i, j].piece.image_blend = global.path_piece_color;
					}
				
				}
			}				
		}
	}	
}

//unhighlight
else {
	for (var i = 0; i < argument0.nb_squares; ++i) {
		for (var j = 0; j < argument0.nb_squares; ++j){
			set_active(argument0.squares[j,i], false, board);
			
			if(argument0.squares[j,i].piece != noone) {
				set_active(argument0.squares[j,i].piece, false, board);
			}
			
		}
	}
}
