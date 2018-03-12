/// @function targets(match)
/// @description return an array containing the squares the piece can reach
/// @param {real} board The unique instance ID value of the board
/// @param {boolean} piece The unique instance ID value of the piece

var match = argument0;


if ((match.coordY < ma_mathes_left(match.board.array_matches) -3) && match.active){
	return true;
}else{
	return false;
}