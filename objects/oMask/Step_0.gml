/// @description Insert description here
// You can write your code in this editor
if(fading && image_alpha >= 1) {
	if(timer <= 0) {
		fading = false;
		room_goto_next();
	} else timer --;
		
} else if(fading && image_alpha<1) {
	image_alpha += spd;	
	
} else if(!fading && image_alpha>0) {
	image_alpha -= spd;	
}
