/// @description Insert description here
// You can write your code in this editor

var nbLeft = ma_mathes_left(board);
var nbPossible = nbLeft -3; 

if ((coordY > nbPossible )&& active){
	if (board.player==2){
		var color = global.j2_match_color_hover;
	}else{
		var color = global.j1_match_color_hover;
	}
	for ( var i = coordY ; i < nbLeft + 1 ; i++){
		board.array_matches[i].image_blend = color;
	}
}