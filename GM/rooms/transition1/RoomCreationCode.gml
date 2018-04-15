global.id_replique = 8;
global.part_with_text = false;
global.id_room = 2;
global.bob_move = false;

global.bob_transition1 = instance_create_depth(-150, 460, 0, oBob);

with(global.bob_transition1){
	image_xscale = 0.25;
	image_yscale = 0.25;
	objectif = 0.25;
	dos = true;
}

matches_game = instance_create_depth(566, 270, 0, oMatchesGame);

with(matches_game){
	image_xscale = 0.5;
	image_yscale = 0.5;
}

global.bob_transition1.alarm[0] = room_speed * 1;
global.bob_transition1.alarm[1] = room_speed * 7;

global.dialog_box.sprite_index = sSpawner;