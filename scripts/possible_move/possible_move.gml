/// @function targets(board, piece)
/// @description ...


var board = argument0;
var piece = argument1;
var color = piece.color;
var coords = noone;
var tmp = noone;
var coords = noone
coords[0] = piece.coordX;
coords[1] = piece.coordY;

var paths = noone;
paths[0,0] = noone;

//launch recursion
paths = possible_move_recursive(board, color, coords, noone, -1, paths);
paths = remove_array_2d(paths, -1, 0);
show_debug_message(paths);
//paths = extract_best_paths(paths);
return paths;