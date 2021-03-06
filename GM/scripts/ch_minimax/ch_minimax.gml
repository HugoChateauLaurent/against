/// @function ch_bot_moves(board, player, limit)
/// @description 
/// @param player : the player who called the recursion (the player who wants to play)


var board = argument0;
var player = argument1;
var limit = argument2;
var max_node = player == board.player;
var actions = ch_get_actions(board);

if(limit==0 || board.status != -1 || array_length_1d(actions) == 0) {
	return ch_evaluate(board, player);
} else {
	
	var new_board = noone;
	var value = noone;
	var best_value = noone;
	for(var i = 0; i<ds_list_size(actions); i++) {
		new_board = smart_clone(board, "oBoard");
		highlight_board(new_board, new_board.squares[ds_list_find_value(actions, i).piece.coordX, ds_list_find_value(actions, i).piece.coordY].piece, true);
		move(new_board, new_board.squares[ds_list_find_value(actions, i).destination.coordX,ds_list_find_value(actions, i).destination.coordY], true);
		
		value = ch_minimax(new_board, player, limit-1);
		if(best_value == noone || (max_node && value > best_value) || (!max_node && value < best_value)) {
			best_value = value;
		}
	}
	
	return best_value;
}