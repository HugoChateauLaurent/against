/// @function possible_move_recursive(board, color, coords, dir, eating, first)
/// @description 
/// @param {real} board
/// @param {boolean} color
/// @param {real} path
/// @param {real} coordinates
/// @param {real} direction from origin to the current position
/// @param {real} eating 
/// @param {real} first


var board = argument0;
var color = argument1;
var positionX = argument2[0];
var positionY = argument2[1];
var dir = argument3;
var eating = argument4;
var first = argument5;


if(positionX < 0 || positionY < 0 || positionX >= board.nb_squares || positionY >= board.nb_squares) {

}

else {	
	var dirs = forward_dir(dir, color);	//find directions
	var recursion = false; //new recursion will be performed
	var add = true; //current position will be added
	
	if(first) {
		add = false;
		eating = -1;
		recursion = true;
	}
	else if((eating == 0 || eating == -1) && board.squares[positionX,positionY].piece != noone) {
		if(board.squares[positionX,positionY].piece.color != color) {
			eating = 1;
			recursion = true;
		}
	} else if ((eating == 1 || eating == -1) && board.squares[positionX,positionY].piece == noone) {
		eating = 0;
		recursion = true;
	}
	
	if(recursion) {
		if(add) {
			show_debug_message("aaaaaadddddd");
			show_debug_message(array_length_1d(board.path));
			//add the current position to the path
			var index = array_height_2d(board.path);
			board.path[index, 0] = positionX;
			board.path[index, 1] = positionY;
			show_debug_message(array_height_2d(board.path));
			show_debug_message(board.path);
		}		
		
		//recursive call
		for(var i=0;i<array_length_1d(dirs);i++) {
			var next_coords = neigh_coord(positionX, positionY, dirs[i]);					
			possible_move_recursive(board, color, next_coords, dirs[i], eating, false);	
				
		}
	}
}
