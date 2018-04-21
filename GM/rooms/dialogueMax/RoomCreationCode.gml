// Créer une room dialog_minimax

global.id_room = 11;
global.id_replique = 49;
global.part_with_game =  false;
global.part_with_text = true ;
global.dialog_box.visible = true;


bob_dialog_max = instance_create_depth(350, 363, 0, oBob);
with (bob_dialog_max) {
	image_xscale = 0.25;
	image_yscale = 0.25;
	objectif = 0.25;
}