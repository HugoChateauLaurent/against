global.id_replique = 29;
global.part_with_text = true;
global.id_room = 8;
global.bob_move = false;
global.dialog_box.visible = true;


global.bob_transition3 = instance_create_depth(-150, 460, 0, oBob);

with(global.bob_transition3){
	image_xscale = 0.25;
	image_yscale = 0.25;
	objectif = 0.25;
	dos = false;
}

checkers_game = instance_create_depth(800, 470, 0, oCheckersGame);

with(checkers_game){
	image_xscale = 0.06;
	image_yscale = 0.06;
}
global.bob_transition3.alarm[4] = room_speed * 1;

global.dialog_box.sprite_index = sSpawner;