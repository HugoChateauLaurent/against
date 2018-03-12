global.active_match_color = make_colour_rgb(50, 180, 50); //couleur d'une alumette cliquée

global.black_match_color = make_colour_rgb(0, 0, 0);
global.white_match_color = make_colour_rgb(255, 255, 255);


global.match_size = 2;


instance_create_depth(0,0,1000, oBoardMatches); //create board	
