/// @description Insert description here
// You can write your code in this editor
if(fading && image_alpha<1) {
	image_alpha += spd;	
	if(image_alpha == 0.9) {
		show_debug_message("change");
		fading = false;
		room_goto_next();
	}
} else if(!fading && image_alpha>0) {
	image_alpha -= spd;	
}
