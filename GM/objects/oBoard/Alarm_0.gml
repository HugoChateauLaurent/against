/// @description Insert description here
// You can write your code in this editor


var actions = ch_get_actions(id);
var best_index = random(ds_list_size(actions));

show_debug_message(ds_list_size(actions));

highlight_board(id, squares[ds_list_find_value(actions, best_index).piece.coordX, ds_list_find_value(actions, best_index).piece.coordY].piece, false);
move(id, squares[ds_list_find_value(actions, best_index).destination.coordX,ds_list_find_value(actions, best_index).destination.coordY], false);