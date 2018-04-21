/// @function ma_clic_tuto( oBoardMatches )
/// @description adapt the number of active matches 

board = argument0;
switch(board.tour){
	case 1 : global.id_replique = 18; return 4; break;
	case 2 : global.id_replique = 19; return 3; break;
	case 3 : global.id_replique = 20; return 2; break;

	//default : text_or_not = false; global.mask.timer = 100; global.mask.fading = true; break;
}