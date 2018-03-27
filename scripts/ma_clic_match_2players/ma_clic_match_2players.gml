/// @function ma_clic_match_2players(match)
/// @description colors and set inactive matches, in 2 player real case
/// @param {match} 

var match = argument0;

var idLeft = ma_mathes_left(board);

var nbPossible = idLeft -3; 

if ((coordY > nbPossible )&& active){
	if (board.player==2){
		board.player = 1;
		var color = global.j2_match_color_inactive;
	}else{
		board.player = 2;
		var color = global.j1_match_color_inactive;
	}
	if(coordY == 0 ){
		global.winner = board.player;
	}
	for ( var i = coordY ; i < idLeft + 1 ; i++){
		board.array_matches[i].active = false;
		board.array_matches[i].image_blend = color;
	}
}