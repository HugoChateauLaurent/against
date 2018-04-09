global.active_match_color = make_colour_rgb(50, 180, 50); //couleur d'une alumette cliquée

global.j1_match_color_inactive = make_colour_rgb(0, 0, 0);
global.j2_match_color_inactive = make_colour_rgb(0, 0, 0);

global.j1_match_color_hover = make_colour_rgb(80, 80, 80);
//// parametres de la room
global.j2_match_color_hover = make_colour_rgb(80, 80, 80);

global.match_color = make_colour_rgb(255, 255, 255);

global.black_match_color = make_colour_rgb(0, 0, 0);
global.white_match_color = make_colour_rgb(255, 255, 255);

global.match_size = 2;
/// dialogue
global.part_with_text = false;
global.part_with_game = true;
global.id_replique = 1;


/// scores
global.winner = 0;
global.versus = 1;

global.clickable = true;


global.id_room = 3;

bob_matches = instance_create_depth(420, 100, 0, oBob);
with(bob_matches){
	image_xscale = 0.4;
	image_yscale = 0.4;
}
global.bob_move = false;
global.dialog_box.sprite_index = sSpawnerNegatif;

board = instance_create_depth(0,0,1000, oBoardMatches); //create board	


