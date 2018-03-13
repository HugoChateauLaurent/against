/// @description Insert description here
// You can write your code in this editor


if ((coordY < ma_mathes_left(id.board.array_matches) -3) && active)){
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
