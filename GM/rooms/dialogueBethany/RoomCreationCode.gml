global.id_room = 17;
global.id_replique = 85;
global.part_with_game =  false;
global.part_with_text = true ;

bob_bethany = instance_create_depth(400, 353, 0, oBob);
with (bob_bethany) {
	image_xscale = 0.25;
	image_yscale = 0.25;
	objectif = 0.25;
}

bethany_2 = instance_create_depth(500, 353, 0, oBethany);
with(bethany_2){
	image_xscale = 0.39;
	image_yscale = 0.39;
}

global.dialog_box.sprite_index = sSpawner;
global.dialog_box.visible = true;