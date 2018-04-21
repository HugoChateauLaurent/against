// Créer une room dialog_max_et_bethany

global.id_room = 15;
global.id_replique = 64;
global.part_with_game =  false;
global.part_with_text = true ;
global.dialog_box.visible = true;


bob_dialog_max_et_bethany = instance_create_depth(300, 353, 0, oBob);
with (bob_dialog_max_et_bethany) {
	image_xscale = 0.25;
	image_yscale = 0.25;
	objectif = 0.25;
}

global.max_3 = instance_create_depth(500, 353, 0, oMax);
with (global.max_3) {
	image_xscale = 0.4;
	image_yscale = 0.4;
}

