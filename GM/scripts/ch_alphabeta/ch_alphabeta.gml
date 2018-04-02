/// @function ch_bot_moves(board, player, limit, a, b)
/// @description 
/// @param player : the player who called the recursion (the player who wants to play)


var board = argument0;
var player = argument1;
var limit = argument2;
var a = argument3;
var b =	argument4;
var max_node = player == board.player;

if(limit==0 || board.status != -1) {
	return ch_evaluate(board, player);
} else {
	var actions = ch_get_actions(board);
	var new_board = noone;
	var value = noone;
	var best_value = noone;
	
	var i = 0;
	var cut = false;
	while(i<ds_list_size(actions) && !cut) {
		new_board = smart_clone(board, "oBoard");
		highlight_board(new_board, new_board.squares[ds_list_find_value(actions, i).piece.coordX, ds_list_find_value(actions, i).piece.coordY].piece, false);
		move(new_board, new_board.squares[ds_list_find_value(actions, i).destination.coordX,ds_list_find_value(actions, i).destination.coordY], false);
		
		value = ch_alphabeta(new_board, player, limit-1, a, b);
		if(best_value == noone || (max_node && value > best_value) || (!max_node && value < best_value)) {
			best_value = value;
		}
		if(max_node) {
			if(value > a) {
				a = value;
				if(b<=a) cut = true;
			}
		} else {
			if(value < b) {
				b = value;
				if(b<=a) cut = true;
			}
		}
		
		i++;
	}
	
	return best_value;
}