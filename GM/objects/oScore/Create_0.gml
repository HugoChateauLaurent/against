/// @description Insert description here
// You can write your code in this editor
image_xscale = 10;
image_yscale = 1.7;
if (global.rules){
	global.id_replique = 300;
	sgame_dialogue();
	global.rules = false;
}
board = instance_create_depth(0,0,1000, oBoard); //create board
initBoard(board);