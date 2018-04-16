/// @description Insert description here
// You can write your code in this editor
if (global.versus && global.winner == 0){
	if ( global.rules){
		global.id_replique = 100;
		sgame_dialogue();
		global.rules = false;
	}
	
	ma_vs_random_looser(id);
}else{
	ma_vs_expert(id);
}
global.clickable = true;