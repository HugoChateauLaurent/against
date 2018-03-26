/// @description Insert description here
// You can write your code in this editor

draw_set_colour(c_white);
draw_set_alpha(1);
draw_text(10, 10, "Score noirs : "+string(board.scores[0]));
draw_text(10, 30, "Score blancs : "+string(board.scores[1]));
draw_text(10, 50, "Options dev : clic gauche pour passer tour, droit pour reset");
draw_text(10, 70, "noirs : "+string(board.nb_pieces[0]));
draw_text(10, 80, "blancs : "+string(board.nb_pieces[1]));
