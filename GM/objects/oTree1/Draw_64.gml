/// @description Insert description here
// You can write your code in this editor
draw_set_colour(c_white);
draw_set_alpha(1);


if(step == 0) {
	draw_text_transformed(415,740,"7",3,3,0);
	draw_text_transformed(816,740,"5",3,3,0);
	draw_text_transformed(1105,740,"2",3,3,0);
	draw_text_transformed(1505,740,"0",3,3,0);
	
	mask_tree.visible = false;
}
if(step == 1) {
	draw_text_transformed(415,740,"7",3,3,0);
	draw_text_transformed(816,740,"5",3,3,0);
	draw_text_transformed(1105,740,"2",3,3,0);
	draw_text_transformed(1505,740,"0",3,3,0);
	
	draw_text_transformed(610,520,"5",3,3,0);
	
	mask_tree.visible = false;
}
if(step == 2) {
	draw_text_transformed(415,740,"7",3,3,0);
	draw_text_transformed(816,740,"5",3,3,0);
	draw_text_transformed(1105,740,"2",3,3,0);
	draw_text_transformed(1505,740,"0",3,3,0);
	
	draw_text_transformed(610,520,"5",3,3,0);
	draw_text_transformed(950,320,"2",3,3,0);
	
	mask_tree.visible = false;
}
if(step == 3) {
	draw_text_transformed(415,740,"7",3,3,0);
	draw_text_transformed(816,740,"5",3,3,0);
	draw_text_transformed(1105,740,"2",3,3,0);
	draw_text_transformed(1505,740,"0",3,3,0);
	
	draw_text_transformed(610,520,"5",3,3,0);
	draw_text_transformed(1300,520,"2",3,3,0);
	draw_text_transformed(950,320,"2",3,3,0);
	
	mask_tree.visible = false;
}
if(step >= 4) {
	draw_text_transformed(415,740,"7",3,3,0);
	draw_text_transformed(816,740,"5",3,3,0);
	draw_text_transformed(1105,740,"2",3,3,0);
	draw_text_transformed(1505,740,"0",3,3,0);
	
	draw_text_transformed(610,520,"5",3,3,0);
	draw_text_transformed(1300,520,"2",3,3,0);
	draw_text_transformed(950,320,"2",3,3,0);
	
	mask_tree.visible = true;
}
if(step == 5) {
	room_goto_next();
}


draw_text_transformed(10, 10, "Press right to continue, left to go backward", 3,3,0);
draw_text_transformed(10, 80, "ALPHABETA", 3,3,0);
//draw_text_transformed(10, 50, "", 2,2,0);
