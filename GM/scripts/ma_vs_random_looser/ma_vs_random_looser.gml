/// @function ma_vs_random_looser(match)
/// @description colors and set inactive matches, in 1 player vs a radoom loser player
/// @param {match} 

var match = argument0;

show_debug_message("on est dans random")
show_debug_message(string(match.board.player));

var idLeft = ma_mathes_left(match.board);/// number of matches as changed
var nbPossible = idLeft -3; 

if( idLeft < 6 ){
	global.id_replique = 3;
	sgame_dialogue();
}
match.board.player = 1;
show_debug_message(string(match.board.player));
var color = global.j2_match_color_inactive;
if( idLeft < 3 ){/// here is some id, the min id is 0
	global.winner = match.board.player;
	for ( var i = 0 ; i < idLeft + 1 ; i++){
		match.board.array_matches[i].active = false;
		match.board.array_matches[i].image_blend = color;
	}
	global.id_replique = 5;// bob loose : show a message 
	sgame_dialogue();
	global.id_replique = 999;//go to next room

	
}else{
	var r = irandom(2); /// number between 0 and 2 because we use it on id
	for ( var i = idLeft - r ; i < idLeft + 1 ; i++){
		match.board.array_matches[i].active = false;
		match.board.array_matches[i].image_blend = color;
	}
}