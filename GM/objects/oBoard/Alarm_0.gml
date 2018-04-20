/// @description Insert description here
// You can write your code in this editor

var mode = global.mode;


var actions = ch_get_actions(id);
var best_index = noone;
if(mode == "random") {
	best_index = random(ds_list_size(actions));
}

else if(mode == "minimax") {
	var new_board = noone;
	var value = noone;
	var best_value = noone;
	for(var i = 0; i<ds_list_size(actions); i++) {
		show_debug_message(string(i)+"/"+string(ds_list_size(actions)-1));
		new_board = smart_clone(id, "oBoard");
		highlight_board(new_board, new_board.squares[ds_list_find_value(actions, i).piece.coordX, ds_list_find_value(actions, i).piece.coordY].piece, false);
		move(new_board, new_board.squares[ds_list_find_value(actions, i).destination.coordX,ds_list_find_value(actions, i).destination.coordY], false);
		
		value = ch_minimax(new_board, new_board.player, 3);
		if(best_index == noone || value > best_value) {
			best_index = i;
			best_value = value;
		}
	}
} else if(mode == "alphabeta") {
	var new_board = noone;
	var value = noone;
	var best_value = noone;
	for(var i = 0; i<ds_list_size(actions); i++) {
		show_debug_message(string(i)+"/"+string(ds_list_size(actions)-1));
		new_board = smart_clone(id, "oBoard");
		highlight_board(new_board, new_board.squares[ds_list_find_value(actions, i).piece.coordX, ds_list_find_value(actions, i).piece.coordY].piece, false);
		move(new_board, new_board.squares[ds_list_find_value(actions, i).destination.coordX,ds_list_find_value(actions, i).destination.coordY], false);
		
		value = ch_alphabeta(new_board, !new_board.player, 5, -999999, 999999);
		if(best_index == noone || value > best_value) {
			best_index = i;
			best_value = value;
		}
	}
}

highlight_board(id, squares[ds_list_find_value(actions, best_index).piece.coordX, ds_list_find_value(actions, best_index).piece.coordY].piece, false);
move(id, squares[ds_list_find_value(actions, best_index).destination.coordX,ds_list_find_value(actions, best_index).destination.coordY], false);
