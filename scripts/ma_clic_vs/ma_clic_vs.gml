/// @function ma_clic_vs(match)
/// @description colors and set inactive matches, in 1 player vs a radoom loser player
/// @param {match} 

var match = argument0;

var idLeft = ma_mathes_left(match.board);
show_debug_message(string(match.board.player));
var nbPossible = idLeft -3; 

show_debug_message("coordonée " + string(match.coordY));

if ((match.coordY > nbPossible )&& match.active){
	if (match.board.player==1){
		match.board.player = 2;
		var color = global.j1_match_color_inactive;
	}
	
	for ( var i = match.coordY ; i < idLeft + 1 ; i++ ){
		match.board.array_matches[i].active = false;
		match.board.array_matches[i].image_blend = color;
	}
	if(match.coordY == 0 ){
		global.winner = match.board.player;
	}
	if (global.versus == 1){
		ma_vs_random_looser(match);
	}else{
		ma_vs_expert(match);
	}
}


}
