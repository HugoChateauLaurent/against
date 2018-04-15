/// @function ma_clic_tuto( oBoardMatches )
/// @description adapt the number of active matches 

board = argument0;
switch(board.tour){
	case 1 : return 4; break;
	case 2 : return 3; break;
	case 3 : return 2; break;

	//default : text_or_not = false; global.mask.timer = 100; global.mask.fading = true; break;
}