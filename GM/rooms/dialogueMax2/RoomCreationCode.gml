// Créer une room dialog minimax_2

global.id_room = 13;
global.id_replique = 56;
global.part_with_game =  false;
global.part_with_text = true ;
global.dialog_box.visible = true;


bob_dialog_max_2 = instance_create_depth(400, 353, 0, oBob);
with (bob_dialog_max_2) {
	image_xscale = 0.25;
	image_yscale = 0.25;
	objectif = 0.25;
}

max_2 = instance_create_depth(650, 333, 0, oMax);
with (max_2) {
	image_xscale = 0.4;
	image_yscale = 0.4;
}

global.dialog_box.sprite_index = sSpawner;