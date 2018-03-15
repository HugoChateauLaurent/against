/// @function ma_matches_left(board)
/// @description get id of the last active match


var board = argument0;
var tab = board.array_matches;
var nb = 0;

for (var i = 0 ; i < array_length_1d(tab) ; i++) {
	if(tab[i].active == true){
		nb = nb + 1;
	}
}
nb= nb -1
show_debug_message("id de la dernière alumette active " + string(nb));
return nb;