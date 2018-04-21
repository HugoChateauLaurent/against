/// @description Insert description here
// You can write your code in this editor
///instance_destroy(spawner.dialog_box);



if(global.clickable) {
	if (global.id_room == 5){// if we are in tutorial room
		if (coordY == ma_clic_tuto(board)){
			ma_clic_vs(id);
		}
	}else if (global.versus != 2){
		ma_clic_vs(id);
	}
}