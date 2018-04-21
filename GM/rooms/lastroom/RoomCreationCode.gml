global.id_replique = 92;
global.part_with_game =  false;
global.part_with_text = true ;
global.id_room = 19;

bob_end = instance_create_depth(510, 150, 0, oBob);
with(bob_end){
	image_xscale = 0.3;
	image_yscale = 0.3;
	objectif = 0.3;
}

global.dialog_box.visible = true;
global.dialog_box.sprite_index = sSpawner;