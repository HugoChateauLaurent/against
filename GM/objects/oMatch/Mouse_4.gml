/// @description Insert description here
// You can write your code in this editor
///instance_destroy(spawner.dialog_box);



if(global.clickable) {
	global.id_replique = 100;
	sgame_dialogue();
	if (global.versus != 2){
		ma_clic_vs(id);
	}else{
		if (coordY == ma_clic_tuto(board)){
			ma_clic_vs(id);
		}
	}
}