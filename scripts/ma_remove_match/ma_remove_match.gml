/// @function ma_remove_match(match)
/// @description Delete this match and all the previous ones
/// @param {oMatch} match

var match = argument0;


if (ma_can_remove(match)){
	for ( var i = match.coordY ; i < ma_mathes_left(match.board) ; i++){
		match.board.array_matches[i].active = false;
		image_blend = global.active_match_color;
	}
	if (match.board.player){
		match.board.player = false;
	}else{
		match.board.player = true;
	}
	return true
}else return false;
