/// @function targets(board)
/// @description ...


var board = argument0;
var tab = board.array_matches;
var nb = 0;

for (var i = 0 ; i < array_length_1d(tab) ; i++) {
	if(tab[i].active == true){
		nb = nb + 1;
	}
}

return nb;