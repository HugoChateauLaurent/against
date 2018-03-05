global.active_piece_color = make_colour_rgb(50, 180, 50); //couleur d'une pièce cliquée
global.active_square_color = make_colour_rgb(50, 180, 50); //couleur d'une case disponible

global.black_piece_color = make_colour_rgb(0, 0, 0);
global.white_piece_color = make_colour_rgb(255, 255, 204);

global.black_square_color = make_colour_rgb(50, 50, 50);
global.white_square_color= make_colour_rgb(255, 255, 255);

global.directions[0] = -2;
global.directions[1] = -1;
global.directions[2] = 1;
global.directions[3] = 2;

global.square_size = 0.25;
global.piece_size = 0.25;

instance_create_depth(0,0,1000, oBoard); //create board	
