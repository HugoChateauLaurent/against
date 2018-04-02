/// @function evaluate(board, player)
/// @description set the evaluation score of the board according to the given player

var board = argument0;
var player = argument1;
var evaluation = 0;

if(board.status != -1 && board.status != 2) {
	evaluation = 999;
	if(board.status != player) evaluation *= -1;
		
} else evaluation += board.scores[player] - board.scores[!player];
return evaluation;