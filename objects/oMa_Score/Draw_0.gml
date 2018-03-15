/// @description Insert description here
// You can write your code in this editor

draw_set_colour(global.match_color);
draw_set_alpha(1);

if (global.winner == 2){
	draw_text(10, 10, "le joueur 2 gagne!");
}
else if (global.winner == 1){
	draw_text(10, 10, "le joueur 1 gagne!");
}else{
	draw_text(10, 10, "En cours");
}