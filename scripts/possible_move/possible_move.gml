/// @function targets(board, piece)
/// @description return an array containing the squares the piece can reach
/// @param {real} board The unique instance ID value of the board
/// @param {boolean} piece The unique instance ID value of the piece

var board = argument0;
var piece = argument1;
var color = piece.color;
var coords = noone;
var tmp = noone;
var coords = noone
coords[0] = piece.coordX;
coords[1] = piece.coordY;
var paths = noone;
paths[0] = instance_create_depth(0, 0, 100, oPath);
with(paths[0]){
	visited[0] = board.squares[piece.coordX, piece.coordY];	
}



//launch recursion
var dirs = global.directions;
for(var i=0;i<array_length_1d(dirs);i++) {
	var next_coords = neigh_coord(coords[0], coords[1], dirs[i]);
	tmp = possible_move_recursive(board, color, paths, next_coords, dirs[i], false, true);	
	paths = concatenate_array_1d(paths, tmp);
}

		



return paths;
