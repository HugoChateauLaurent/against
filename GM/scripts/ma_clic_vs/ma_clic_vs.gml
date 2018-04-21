/// @function ma_clic_vs(match)
/// @description colors and set inactive matches, in 1 player vs a radoom loser player
/// @param {match} 

var match = argument0;

var idLeft = ma_mathes_left(match.board);
show_debug_message("player " + string(match.board.player));
var nbPossible = idLeft -3; 

show_debug_message("dans le ma_clic_vs coordonée : " + string(match.coordY));

if ((match.coordY > nbPossible ) && match.active){
	if (match.board.player==1){
		match.board.player = 2;
		var color = global.j1_match_color_inactive;
	}
	for ( var i = match.coordY ; i < idLeft + 1 ; i++ ){
		match.board.array_matches[i].active = false;
		match.board.array_matches[i].image_blend = color;
	}
	
	if(match.coordY == 0 ){
		show_debug_message("La coordonée de la touche est 0");
		if (global.id_room != 5){
			global.id_replique = 4;
			sgame_dialogue();
			global.winner = match.board.player;
			global.id_replique = 999;//can go to next room
		}else{
			show_debug_message("Le num du tour " + string(match.board.tour));
			match.board.tour = match.board.tour + 1;
			if ( match.board.tour < 4 ){
				
				//if ( match.board.tour < 3 ){
					for (i =0; i < 5 ; i++ ){
						match.board.array_matches[i].active = true;
						match.board.array_matches[i].image_blend = global.match_color;
						match.board.player = 1;
					}
				//}
			global.id_replique = match.board.tour + 14;
			sgame_dialogue();
			}else{
				global.id_replique = 21;
				sgame_dialogue();
				global.winner = match.board.player;
				global.id_replique = 999;//can go to next room
			}
		}
	}else{
		global.clickable = false;
		match.alarm[0] = room_speed * 2; // Call players
	}
}
