/// @function targets(board, match)
/// @description return an array containing the squares the piece can reach
/// @param {real} board The unique instance ID value of the board
/// @param {boolean} piece The unique instance ID value of the piece

var board = argument0;
var match = argument1;


if (match.coordY < array_length_1d(board.array_matches)-3){
	return true;
}else{
	return false;
}