global.id_replique = 8;
global.part_with_text = false;
global.id_room = 2;
global.bob_move = false;

bob_transition1 = instance_create_depth(-171, 240, 0, oBob);

with(bob_transition1){
	image_xscale = 0.25;
	image_yscale = 0.25;
}

matches_game = instance_create_depth(566, 270, 0, oMatchesGame);

with(matches_game){
	image_xscale = 0.3;
	image_yscale = 0.3;
}

bob_transition1.alarm[0] = room_speed * 1;
bob_transition1.alarm[1] = room_speed * 7;