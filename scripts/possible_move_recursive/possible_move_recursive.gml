/// @function possible_move_recursive(board, color, coords, dir, eating, paths)
/// @description 
/// @param {real} board
/// @param {boolean} color
/// @param {real} coordinates
/// @param {real} direction from origin to the current position
/// @param {real} eating
/// @param {real} paths



var board = argument0;
var color = argument1;
var dir = argument3;
var paths = argument5;
var eating = argument4;

var reference_index = array_height_2d(paths)-1;

if(eating == 1) {
	var nb_dirs = 1;	
} else if(eating == 0) {
	var nb_dirs = 3;
} else {
	var nb_dirs = 2;	
}
var dirs = forward_dir(dir, color, nb_dirs); //find directions
show_debug_message("taille : "+string(array_length_1d(dirs)));


for(var i=0; i<array_length_1d(dirs); i++) {
	show_debug_message("aaadd");
	eating = argument4;
	var recursion = true;
	var positionX = argument2[0];
	var positionY = argument2[1];
	var next_coords = neigh_coord(positionX, positionY, dirs[i]);
	positionX = next_coords[0];
	positionY = next_coords[1];
	
	var add = false;
	var terminal = false;
	
	if(positionX < 0 || positionY < 0 || positionX >= board.nb_squares || positionY >= board.nb_squares) {

	}

	else {
	
		if((eating == 0 || eating == -1) && board.squares[positionX,positionY].piece != noone) {
			if(board.squares[positionX,positionY].piece.color != color) {
				add = true;
				eating = 1;
			}
		} else if ((eating == 1 || eating == -1) && board.squares[positionX,positionY].piece == noone) {
			add = true;
			if(eating == -1) {
				recursion = false;	
			}
			eating = 0;
		}
	
		
		if(add) {
			var index1 = array_height_2d(paths);
			for(var index2 = 0; index2<array_length_2d(paths, reference_index);index2++) {
				paths[index1, index2] = paths[reference_index, index2]
			}
		
			paths[index1, array_length_2d(paths, index1)] = board.squares[positionX,positionY];
			if(recursion) {
				paths = possible_move_recursive(board, color, next_coords, dirs[i], eating, paths);
			}
		}		
	}
}
return paths;
