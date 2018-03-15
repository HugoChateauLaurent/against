/// @description Insert description here
// You can write your code in this editor

var nbLeft = ma_mathes_left(board);
var nbPossible = nbLeft -3; 

if ((coordY > nbPossible )&& active){
	for ( var i = coordY ; i < nbLeft + 1 ; i++){
		board.array_matches[i].image_blend = global.match_color;
	}
}