/// @description Insert description here
// You can write your code in this editor
draw_set_colour(c_white);
draw_set_alpha(1);

var ratio = global.window_size/1920;
if(step == 0) {
	draw_text_transformed(415*ratio,740*ratio,"7",3*ratio,3*ratio,0);
	draw_text_transformed(816*ratio,740*ratio,"5",3*ratio,3*ratio,0);
	draw_text_transformed(1105*ratio,740*ratio,"2",3*ratio,3*ratio,0);
	draw_text_transformed(1505*ratio,740*ratio,"0",3*ratio,3*ratio,0);
}
if(step == 1) {
	draw_text_transformed(415*ratio,740*ratio,"7",3*ratio,3*ratio,0);
	draw_text_transformed(816*ratio,740*ratio,"5",3*ratio,3*ratio,0);
	draw_text_transformed(1105*ratio,740*ratio,"2",3*ratio,3*ratio,0);
	draw_text_transformed(1505*ratio,740*ratio,"0",3*ratio,3*ratio,0);
	
	draw_text_transformed(610*ratio,520*ratio,"5",3*ratio,3*ratio,0);
}
if(step == 2) {
	draw_text_transformed(415*ratio,740*ratio,"7",3*ratio,3*ratio,0);
	draw_text_transformed(816*ratio,740*ratio,"5",3*ratio,3*ratio,0);
	draw_text_transformed(1105*ratio,740*ratio,"2",3*ratio,3*ratio,0);
	draw_text_transformed(1505*ratio,740*ratio,"0",3*ratio,3*ratio,0);
	
	draw_text_transformed(610*ratio,520*ratio,"5",3*ratio,3*ratio,0);
	draw_text_transformed(1300*ratio,520*ratio,"2",3*ratio,3*ratio,0);
}
if(step == 3) {
	draw_text_transformed(415*ratio,740*ratio,"7",3*ratio,3*ratio,0);
	draw_text_transformed(816*ratio,740*ratio,"5",3*ratio,3*ratio,0);
	draw_text_transformed(1105*ratio,740*ratio,"2",3*ratio,3*ratio,0);
	draw_text_transformed(1505*ratio,740*ratio,"0",3*ratio,3*ratio,0);
	
	draw_text_transformed(610*ratio,520*ratio,"5",3*ratio,3*ratio,0);
	draw_text_transformed(1300*ratio,520*ratio,"2",3*ratio,3*ratio,0);
	draw_text_transformed(950*ratio,320*ratio,"2",3*ratio,3*ratio ,0);
}
if(step == 4) {
	room_goto_next();
}


draw_text_transformed(10*ratio, 10*ratio, "Press right to continue, left to go backward", 3*ratio,3*ratio,0);
draw_text_transformed(10*ratio, 80*ratio, "MINIMAX", 3*ratio,3*ratio,0);
//draw_text_transformed(10, 50, "", 2,2,0);

