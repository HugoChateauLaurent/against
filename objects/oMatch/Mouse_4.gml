/// @description Insert description here
// You can write your code in this editor

var nb=ma_mathes_left(board) -3; 
if ((coordY > nb )&& active){
	show_debug_message("le nombre d'allumettes qu'on peut retirer " + string(nb));
	show_debug_message("corrdy =  " + string(coordY) );
	for ( var i = coordY ; i < ma_mathes_left(board) ; i++){
		show_debug_message("id de l'alumette en cours " + string(i));
		board.array_matches[i].active = false;
		board.array_matches[i].image_blend = global.active_match_color;
	}
	if (board.player){
		board.player = false;
	}else{
		board.player = true;
	}
	///return true
}///else return false;
