/// @function possible_move_recursive(board, color, paths, coords, dir, eating, first)
/// @description 
/// @param {real}

var board = argument0;
var color = argument1;
var paths = argument2;
var positionX = argument3[0];
var positionY = argument3[1];
var dir = argument4;
var eating = argument5;
var first = argument6;


if(positionX < 0 || positionY < 0 || positionX >= board.nb_squares || positionY >= board.nb_squares) {

}

else {
	
	//find directions
	var dirs = forward_dir(dir);
	
	
	
	if(!eating) { //last position wasn't occupied by opponent
		if(board.squares[positionX,positionY].piece != noone) { //position is occupied
			if(board.squares[positionX,positionY].piece.color != color) { //position is occupied by opponent
				eating = true;
				
				//add the current position to new path
				var index1 = array_length_1d(paths);
				paths[index1] = instance_create_depth(0, 0, 100, oPath);
				show_debug_message("recursion");
				with(paths[index1]){
					visited = paths[index1-1].visited;
				}
			
				var index2 = array_length_1d(paths[index1].visited)
				with(paths[index1]){
					visited[index2] = board.squares[positionX, positionY];
				}
			
				//recursive call
				for(var i=0;i<array_length_1d(dirs);i++) {
					var next_coords = neigh_coord(positionX, positionY, dirs[i]);
					
					possible_move_recursive(board, color, paths, next_coords, dirs[i], eating, false);	
				
				}
			}
			
				
		} else if(first) { //if this is the first recursion
			if((color && (dir == -2 || dir == 1)) || (!color && (dir == -1 || dir == 2))) {
				eating = false;
				
				//add the current position to new path
				var index1 = array_length_1d(paths);
				paths[index1] = instance_create_depth(0, 0, 100, oPath);
				show_debug_message("recursion");
				with(paths[index1]){
					visited = paths[index1-1].visited;
				}
			
				var index2 = array_length_1d(paths[index1].visited)
				with(paths[index1]){
					visited[index2] = board.squares[positionX, positionY];
				}
			
				//recursive call
				for(var i=0;i<array_length_1d(dirs);i++) {
					var next_coords = neigh_coord(positionX, positionY, dirs[i]);
					possible_move_recursive(board, color, paths, next_coords, dirs[i], eating, false);	
				
				}
			}
		}
		
		
	} else if(board.squares[positionX,positionY].piece == noone || first) { // position is not occupied
		eating = false;
				
		//add the current position to new path
		var index1 = array_length_1d(paths);
		paths[index1] = instance_create_depth(0, 0, 100, oPath);
		show_debug_message("recursion");
		with(paths[index1]){
			visited = paths[index1-1].visited;
		}
			
		var index2 = array_length_1d(paths[index1].visited)
		with(paths[index1]){
			visited[index2] = board.squares[positionX, positionY];
		}
			
		//recursive call
		for(var i=0;i<array_length_1d(dirs);i++) {
			var next_coords = neigh_coord(positionX, positionY, dirs[i]);
			possible_move_recursive(board, color, paths, next_coords, dirs[i], eating, false);	
			
		}
	}
}

return paths;
