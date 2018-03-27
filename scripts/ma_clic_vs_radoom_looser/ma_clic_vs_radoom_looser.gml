/// @function ma_clic_match_2players(match)
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

///// randoom player
idLeft = ma_mathes_left(match.board);/// number of matches as changed
nbPossible = idLeft -3; 
match.board.player = 1;
color = global.j2_match_color_inactive;
if( idLeft < 3 ){/// here is some id, the min id is 0
	global.winner = match.board.player;
	for ( var i = 0 ; i < idLeft + 1 ; i++){
		match.board.array_matches[i].active = false;
		match.board.array_matches[i].image_blend = color;
	}
}else{
	var r = irandom(2); /// number between 0 and 2 because we use it on id
	for ( var i = idLeft - r ; i < idLeft + 1 ; i++){
		match.board.array_matches[i].active = false;
		match.board.array_matches[i].image_blend = color;
	}
}