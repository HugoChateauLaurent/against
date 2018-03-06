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
board.path = noone;

//launch recursion
possible_move_recursive(board, color, coords, noone, noone, true);
show_debug_message(board.path);
