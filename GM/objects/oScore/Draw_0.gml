/// @description Insert description here
// You can write your code in this editor

draw_set_colour(c_white);
draw_set_alpha(1);
draw_text(10, 50, "Score noirs : "+string(board.scores[0]));
draw_text(10, 70, "Score blancs : "+string(board.scores[1]));
draw_text_transformed(10, 10, "Let's play ! Press right to go to the next room !",2,2,0);