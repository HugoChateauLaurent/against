/// @function ch_bot_moves(board, player)
/// @description set the evaluation score of the board according to the given player
/// @param {real} board id

var board = argument0;
var actions = noone;
var best_value = noone;
var best_index;



move(board, board.squares[1,2]);