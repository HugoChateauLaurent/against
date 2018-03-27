/// @function ma_clic_vs(match)
/// @description colors and set inactive matches, in 1 player vs a radoom loser player
/// @param {match} 

var match = argument0;

var idLeft = ma_mathes_left(match.board);
if (match.board.player==1){
	match.board.player = 2;
	var color = global.j1_match_color_inactive;
}

var nbPossible = idLeft -3; 

if ((match.coordY > nbPossible )&& match.active){
	if(match.coordY == 0 ){
		global.winner = match.board.player;
	}
	for ( var i = match.coordY ; i < idLeft + 1 ; i++){
		match.board.array_matches[i].active = false;
		match.board.array_matches[i].image_blend = color;
	}
}
if (global.versus = 1){
	ma_vs_radoom_looser(match);
}else{
	ma_vs_expert(match);
}
