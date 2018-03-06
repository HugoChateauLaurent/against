/// @function highlight_board(board, piece)
/// @description highlights the board if given a piece and unhighlight everything if not
/// @param {real} id_board The unique instance ID value of the board
/// @param {real} id_piece The unique instance ID value of the reference piece

var activate = argument1 != noone;
var to_highlight = noone;

//highlight
if(activate) {
	highlight_board(argument0, noone); // reset highlight
	set_active(argument1, activate);
	
	possible_move(argument0, argument1);
	
	//to_highlight = extract_destinations(board);
	with(argument0) {
		for (var i = 0; i < array_length_1d(path); ++i) {
			if(squares[path[i, 0], path[i, 1]].piece == noone){
				set_active(squares[path[i, 0], path[i, 1]], true);		
			}
					
		}
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
