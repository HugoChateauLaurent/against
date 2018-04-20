//couleur d'une pièce active
global.active_piece_color = make_colour_rgb(50, 180, 50);
global.active_square_color = global.active_piece_color;

//couleur d'une pièce active
var a=1.5;
global.path_piece_color = make_colour_rgb(86*a, 120*a, 161*a);
global.path_square_color = global.path_piece_color;

//couleurs pièces
global.black_piece_color = make_colour_rgb(0, 0, 0);
global.white_piece_color = c_white;

//couleurs cases
global.black_square_color = make_colour_rgb(110, 110, 110);
global.white_square_color= make_colour_rgb(255, 255, 255);

//codes des directions
global.directions[0] = -2;
global.directions[1] = -1;
global.directions[2] = 1;
global.directions[3] = 2;

//taille éléments (en ratio)
global.square_size = 0.25;
global.piece_size = 0.25;

global.rules = true;
global.part_with_game = true;
global.part_with_text = false;

global.bot_index = 0;
global.mode = "minimax";
score = instance_create_depth(10,10,-20, oScore);
global.dialog_box.visible = false;
global.id_room = 7;

global.dialog_box.sprite_index = sSpawnerNegatif;