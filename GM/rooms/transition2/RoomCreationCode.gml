global.id_room = 7;
global.id_replique = 25;
global.part_with_game =  false;
global.part_with_text = true ;

bob_transition_2 = instance_create_depth(400, 353, 0, oBob);
with (bob_transition_2) {
	image_xscale = 0.25;
	image_yscale = 0.25;
	objectif = 0.25;
}

wendy_transition_2 = instance_create_depth(750, 353, 0, oWendy);
with(wendy_transition_2){
	image_xscale = 0.39;
	image_yscale = 0.39;
}

global.dialog_box.sprite_index = sSpawner;