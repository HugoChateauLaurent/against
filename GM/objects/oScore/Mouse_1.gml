/// @description Insert description here
// You can write your code in this editor
with(oPiece) {
	instance_destroy();	
}
with(oSquare) {
	instance_destroy();	
}
instance_destroy(board);

board = instance_create_depth(0,0,1000, oBoard); //create board	