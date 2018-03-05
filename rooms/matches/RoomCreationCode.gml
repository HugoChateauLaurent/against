global.active_piece_color = make_colour_rgb(50, 180, 50); //couleur d'une alumette cliquée
global.active_square_color = make_colour_rgb(50, 180, 50); //couleur d'une alumette disponible

global.black_piece_color = make_colour_rgb(0, 0, 0);
global.white_piece_color = make_colour_rgb(255, 255, 204);

global.black_square_color = make_colour_rgb(50, 50, 50);
global.white_square_color= make_colour_rgb(255, 255, 255);

global.match_size = 2;


instance_create_depth(0,0,1000, oBoardMatches); //create board	
