/// @function ma_remove_match(id, board)
/// @description Delete this match and all the previous ones
/// @param {oMatch} match

var id = argument0;
var board = argument1;


if (ma_can_remove(id, board)){
	for ( var i = id.coordY ; i < ma_mathes_left(board) ; i++){
		board.array_matches[i].active = false;
		image_blend = global.active_match_color;
	}
	if (match.board.player){
		match.board.player = false;
	}else{
		match.board.player = true;
	}
	///return true
}///else return false;
