global.id_replique = 7;
global.part_with_text = false;
global.id_room = 2;

bob_transition1 = instance_create_depth(250, 250, 0, oBob);

with(bob_transition1){
	image_xscale = 0.11;
	image_yscale = 0.11;
}

matches_game = instance_create_depth(600, 450, 0, oMatchesGame);

with(matches_game){
	image_xscale = 0.3;
	image_yscale = 0.3;
}