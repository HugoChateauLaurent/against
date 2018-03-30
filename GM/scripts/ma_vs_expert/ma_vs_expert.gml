/// @function ma_vs_expert(match)
/// @description colors and set inactive matches, in 1 player vs a expert player
/// @param {match} 

var match = argument0;


var idLeft = ma_mathes_left(match.board);/// number of matches as changed
var nbPossible = idLeft -3; 
match.board.player = 1;
var color = global.j2_match_color_inactive;

var r = irandom(2); /// number between 0 and 2 because we use it on id
var modulo4 = (idLeft+1) mod 4;


if ( modulo4 == 2){
	r = 0;
}else if ( modulo4 == 3){
	r = 1;
}else if ( modulo4 == 0){
	r = 2;
}
for ( var i = idLeft - r ; i < idLeft + 1 ; i++){
	match.board.array_matches[i].active = false;
	match.board.array_matches[i].image_blend = color;
}
if (idLeft == 0){
	global.winner = match.board.player;
}