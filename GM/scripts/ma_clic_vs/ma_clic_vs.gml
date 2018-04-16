/// @function ma_clic_vs(match)
/// @description colors and set inactive matches, in 1 player vs a radoom loser player
/// @param {match} 

var match = argument0;

var idLeft = ma_mathes_left(match.board);
show_debug_message("player " + string(match.board.player));
var nbPossible = idLeft -3; 

show_debug_message("coordonée " + string(match.coordY));

if ((match.coordY > nbPossible ) && match.active){
	if (idLeft>15 && idLeft < 20){
		global.id_replique = 2;
		sgame_dialogue();
	}
	if (match.board.player==1){
		match.board.player = 2;
		var color = global.j1_match_color_inactive;
	}
	for ( var i = match.coordY ; i < idLeft + 1 ; i++ ){
		match.board.array_matches[i].active = false;
		match.board.array_matches[i].image_blend = color;
	}
	if(match.coordY == 0 ){
		global.id_replique = 4;
		sgame_dialogue();
		global.winner = match.board.player;
		global.id_replique = 999;//can go to next room
	}
	global.clickable = false;
	match.alarm[0] = room_speed * 2;
	

}