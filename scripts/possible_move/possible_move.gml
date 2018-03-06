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
paths[0,0] = noone;

//launch recursion
return possible_move_recursive(board, color, coords, noone, -1, paths);